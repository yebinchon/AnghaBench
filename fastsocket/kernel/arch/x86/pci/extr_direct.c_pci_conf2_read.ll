; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_direct.c_pci_conf2_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_direct.c_pci_conf2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@pci_config_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32*)* @pci_conf2_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf2_read(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ugt i32 %17, 255
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = icmp ugt i32 %20, 255
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %19, %6
  %26 = load i32*, i32** %13, align 8
  store i32 -1, i32* %26, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %71

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @PCI_SLOT(i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @PCI_FUNC(i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %15, align 4
  %35 = and i32 %34, 16
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %38, i32* %7, align 4
  br label %71

39:                                               ; preds = %29
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @spin_lock_irqsave(i32* @pci_config_lock, i64 %40)
  %42 = load i32, i32* %16, align 4
  %43 = shl i32 %42, 1
  %44 = or i32 240, %43
  %45 = call i32 @outb(i32 %44, i32 3320)
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @outb(i32 %46, i32 3322)
  %48 = load i32, i32* %12, align 4
  switch i32 %48, label %67 [
    i32 1, label %49
    i32 2, label %55
    i32 4, label %61
  ]

49:                                               ; preds = %39
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @PCI_CONF2_ADDRESS(i32 %50, i32 %51)
  %53 = call i32 @inb(i32 %52)
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  br label %67

55:                                               ; preds = %39
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @PCI_CONF2_ADDRESS(i32 %56, i32 %57)
  %59 = call i32 @inw(i32 %58)
  %60 = load i32*, i32** %13, align 8
  store i32 %59, i32* %60, align 4
  br label %67

61:                                               ; preds = %39
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @PCI_CONF2_ADDRESS(i32 %62, i32 %63)
  %65 = call i32 @inl(i32 %64)
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %39, %61, %55, %49
  %68 = call i32 @outb(i32 0, i32 3320)
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* @pci_config_lock, i64 %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %37, %25
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @PCI_CONF2_ADDRESS(i32, i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

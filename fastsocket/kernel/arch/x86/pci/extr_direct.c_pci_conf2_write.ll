; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_direct.c_pci_conf2_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_direct.c_pci_conf2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@pci_config_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i64)* @pci_conf2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf2_write(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
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
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19, %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %72

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @PCI_SLOT(i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @PCI_FUNC(i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %15, align 4
  %34 = and i32 %33, 16
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %37, i32* %7, align 4
  br label %72

38:                                               ; preds = %28
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @spin_lock_irqsave(i32* @pci_config_lock, i64 %39)
  %41 = load i32, i32* %16, align 4
  %42 = shl i32 %41, 1
  %43 = or i32 240, %42
  %44 = call i32 @outb(i32 %43, i32 3320)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @outb(i32 %45, i32 3322)
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %68 [
    i32 1, label %48
    i32 2, label %55
    i32 4, label %62
  ]

48:                                               ; preds = %38
  %49 = load i64, i64* %13, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @PCI_CONF2_ADDRESS(i32 %51, i32 %52)
  %54 = call i32 @outb(i32 %50, i32 %53)
  br label %68

55:                                               ; preds = %38
  %56 = load i64, i64* %13, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @PCI_CONF2_ADDRESS(i32 %58, i32 %59)
  %61 = call i32 @outw(i32 %57, i32 %60)
  br label %68

62:                                               ; preds = %38
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @PCI_CONF2_ADDRESS(i32 %64, i32 %65)
  %67 = call i32 @outl(i64 %63, i32 %66)
  br label %68

68:                                               ; preds = %38, %62, %55, %48
  %69 = call i32 @outb(i32 0, i32 3320)
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* @pci_config_lock, i64 %70)
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %36, %25
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @PCI_CONF2_ADDRESS(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outl(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

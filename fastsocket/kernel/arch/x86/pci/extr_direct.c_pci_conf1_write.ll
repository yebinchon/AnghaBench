; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_direct.c_pci_conf1_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_direct.c_pci_conf1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@pci_config_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @pci_conf1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf1_write(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ugt i32 %15, 255
  br i1 %16, label %23, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %10, align 4
  %19 = icmp ugt i32 %18, 255
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = icmp sgt i32 %21, 4095
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17, %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %53

26:                                               ; preds = %20
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @pci_config_lock, i64 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @PCI_CONF1_ADDRESS(i32 %29, i32 %30, i32 %31)
  %33 = call i32 @outl(i32 %32, i32 3320)
  %34 = load i32, i32* %12, align 4
  switch i32 %34, label %50 [
    i32 1, label %35
    i32 2, label %41
    i32 4, label %47
  ]

35:                                               ; preds = %26
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 3
  %39 = add nsw i32 3324, %38
  %40 = call i32 @outb(i32 %36, i32 %39)
  br label %50

41:                                               ; preds = %26
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, 2
  %45 = add nsw i32 3324, %44
  %46 = call i32 @outw(i32 %42, i32 %45)
  br label %50

47:                                               ; preds = %26
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @outl(i32 %48, i32 3324)
  br label %50

50:                                               ; preds = %26, %47, %41, %35
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* @pci_config_lock, i64 %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %23
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @PCI_CONF1_ADDRESS(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

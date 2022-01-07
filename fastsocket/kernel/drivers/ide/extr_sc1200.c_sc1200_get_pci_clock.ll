; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sc1200.c_sc1200_get_pci_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sc1200.c_sc1200_get_pci_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC1200_REV_B1 = common dso_local global i8 0, align 1
@PCI_CLK_33 = common dso_local global i32 0, align 4
@PCI_CLK_33A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 ()* @sc1200_get_pci_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @sc1200_get_pci_clock() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = call zeroext i8 @inb(i32 36924)
  store i8 %4, i8* %1, align 1
  %5 = call zeroext i8 @inb(i32 36925)
  store i8 %5, i8* %2, align 1
  %6 = load i8, i8* %1, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = load i8, i8* %2, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @SC1200_REV_B1, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @PCI_CLK_33, align 4
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %9, %0
  %18 = call i32 @inw(i32 36894)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = lshr i32 %19, 8
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 3
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @PCI_CLK_33A, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @PCI_CLK_33, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %17
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* %3, align 4
  %31 = trunc i32 %30 to i16
  ret i16 %31
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

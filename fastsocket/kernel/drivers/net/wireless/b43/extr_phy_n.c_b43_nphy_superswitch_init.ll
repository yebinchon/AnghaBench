; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_superswitch_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_superswitch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_12__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@B43_NPHY_GPIO_LOOEN = common dso_local global i32 0, align 4
@B43_NPHY_GPIO_HIOEN = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_GPOUTSMSK = common dso_local global i32 0, align 4
@B43_MMIO_GPIO_MASK = common dso_local global i32 0, align 4
@B43_MMIO_GPIO_CONTROL = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_LO1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_LO2 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_superswitch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_superswitch_init(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %8, 3
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %55

14:                                               ; preds = %10
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %17 = load i32, i32* @B43_NPHY_GPIO_LOOEN, align 4
  %18 = call i32 @b43_phy_write(%struct.b43_wldev* %16, i32 %17, i32 0)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = load i32, i32* @B43_NPHY_GPIO_HIOEN, align 4
  %21 = call i32 @b43_phy_write(%struct.b43_wldev* %19, i32 %20, i32 0)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %27 [
  ]

27:                                               ; preds = %15
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %30 = load i32, i32* @B43_MACCTL_GPOUTSMSK, align 4
  %31 = xor i32 %30, -1
  %32 = call i32 @b43_maskset32(%struct.b43_wldev* %28, i32 %29, i32 %31, i32 0)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = load i32, i32* @B43_MMIO_GPIO_MASK, align 4
  %35 = call i32 @b43_maskset16(%struct.b43_wldev* %33, i32 %34, i32 -1, i32 64512)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load i32, i32* @B43_MMIO_GPIO_CONTROL, align 4
  %38 = call i32 @b43_maskset16(%struct.b43_wldev* %36, i32 %37, i32 1023, i32 0)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %27
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_LO1, align 4
  %44 = call i32 @b43_phy_write(%struct.b43_wldev* %42, i32 %43, i32 728)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %46 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  %47 = call i32 @b43_phy_write(%struct.b43_wldev* %45, i32 %46, i32 769)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_LO2, align 4
  %50 = call i32 @b43_phy_write(%struct.b43_wldev* %48, i32 %49, i32 728)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %52 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  %53 = call i32 @b43_phy_write(%struct.b43_wldev* %51, i32 %52, i32 769)
  br label %54

54:                                               ; preds = %41, %27
  br label %55

55:                                               ; preds = %13, %54, %14
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_maskset16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

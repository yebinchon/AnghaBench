; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_check_downshift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_check_downshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_DOWNSHIFT = common dso_local global i32 0, align 4
@IGP01E1000_PHY_LINK_HEALTH = common dso_local global i32 0, align 4
@IGP01E1000_PLHR_SS_DOWNGRADE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_check_downshift(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %3, align 8
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %19 [
    i32 132, label %13
    i32 128, label %13
    i32 133, label %13
    i32 130, label %16
    i32 131, label %16
    i32 129, label %16
  ]

13:                                               ; preds = %1, %1, %1
  %14 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @M88E1000_PSSR_DOWNSHIFT, align 4
  store i32 %15, i32* %7, align 4
  br label %22

16:                                               ; preds = %1, %1, %1
  %17 = load i32, i32* @IGP01E1000_PHY_LINK_HEALTH, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @IGP01E1000_PLHR_SS_DOWNGRADE, align 4
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %43

22:                                               ; preds = %16, %13
  %23 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.0*
  %29 = load i32, i32* %6, align 4
  %30 = call i32 %26(%struct.e1000_hw.0* %28, i32 %29, i32* %5)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %22
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

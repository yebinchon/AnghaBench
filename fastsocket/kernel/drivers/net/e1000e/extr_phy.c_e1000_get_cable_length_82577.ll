; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_get_cable_length_82577.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_get_cable_length_82577.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32 }

@I82577_PHY_DIAG_STATUS = common dso_local global i32 0, align 4
@I82577_DSTATUS_CABLE_LENGTH = common dso_local global i32 0, align 4
@I82577_DSTATUS_CABLE_LENGTH_SHIFT = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_cable_length_82577(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @I82577_PHY_DIAG_STATUS, align 4
  %12 = call i64 @e1e_rphy(%struct.e1000_hw* %10, i32 %11, i32* %6)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @I82577_DSTATUS_CABLE_LENGTH, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @I82577_DSTATUS_CABLE_LENGTH_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i64, i64* @E1000_ERR_PHY, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %2, align 8
  br label %33

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i64 0, i64* %2, align 8
  br label %33

33:                                               ; preds = %29, %26, %15
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

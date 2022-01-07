; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_identify_phy_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_identify_phy_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@ixgbe_phy_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_none = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_unsupported = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_identify_phy_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_identify_phy_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = call i64 @ixgbe_identify_phy_generic(%struct.ixgbe_hw* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %13, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = bitcast %struct.ixgbe_hw* %15 to %struct.ixgbe_hw.0*
  %17 = call i64 %14(%struct.ixgbe_hw.0* %16)
  %18 = load i64, i64* @ixgbe_media_type_copper, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %47

21:                                               ; preds = %9
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = call i64 @ixgbe_identify_module_generic(%struct.ixgbe_hw* %22)
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ixgbe_phy_unknown, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i64, i64* @ixgbe_phy_none, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  store i64 0, i64* %3, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ixgbe_phy_sfp_unsupported, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %44, %37
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i64 @ixgbe_identify_phy_generic(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_identify_module_generic(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

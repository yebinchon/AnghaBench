; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_phy_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_phy_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@ixgbe_phy_unknown = common dso_local global i64 0, align 8
@IXGBE_MAX_PHY_ADDR = common dso_local global i64 0, align 8
@MDIO_PMA_EXTABLE = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_10GBT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_1000BT = common dso_local global i32 0, align 4
@ixgbe_phy_cu_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_generic = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_identify_phy_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %6, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ixgbe_phy_unknown, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %89

13:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %77, %13
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @IXGBE_MAX_PHY_ADDR, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i64 %19, i64* %23, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @mdio45_probe(%struct.TYPE_6__* %26, i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %18
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = call i32 @ixgbe_get_phy_id(%struct.ixgbe_hw* %31)
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @ixgbe_get_phy_type_from_id(i32 %36)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ixgbe_phy_unknown, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %30
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %51, align 8
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = bitcast %struct.ixgbe_hw* %53 to %struct.ixgbe_hw.0*
  %55 = load i32, i32* @MDIO_PMA_EXTABLE, align 4
  %56 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %57 = call i32 %52(%struct.ixgbe_hw.0* %54, i32 %55, i32 %56, i32* %5)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @MDIO_PMA_EXTABLE_10GBT, align 4
  %60 = load i32, i32* @MDIO_PMA_EXTABLE_1000BT, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %47
  %65 = load i64, i64* @ixgbe_phy_cu_unknown, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  br label %74

69:                                               ; preds = %47
  %70 = load i64, i64* @ixgbe_phy_generic, align 8
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %30
  store i64 0, i64* %3, align 8
  br label %80

76:                                               ; preds = %18
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %4, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %4, align 8
  br label %14

80:                                               ; preds = %75, %14
  %81 = load i64, i64* %3, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %80
  br label %90

89:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i64 @mdio45_probe(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @ixgbe_get_phy_id(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_get_phy_type_from_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

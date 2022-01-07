; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_reset_phy_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_reset_phy_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@ixgbe_phy_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_none = common dso_local global i64 0, align 8
@IXGBE_ERR_OVERTEMP = common dso_local global i64 0, align 8
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MDIO_CTRL1_RESET = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"PHY reset polling failed to complete.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_phy_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ixgbe_phy_unknown, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = call i64 @ixgbe_identify_phy_generic(%struct.ixgbe_hw* %13)
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ixgbe_phy_none, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %15
  br label %91

26:                                               ; preds = %18
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* @IXGBE_ERR_OVERTEMP, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %37, align 8
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %40 = bitcast %struct.ixgbe_hw* %39 to %struct.ixgbe_hw.0*
  %41 = call i64 %38(%struct.ixgbe_hw.0* %40)
  %42 = icmp eq i64 %33, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %91

44:                                               ; preds = %32, %26
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32 (%struct.ixgbe_hw.2*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32)** %48, align 8
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %51 = bitcast %struct.ixgbe_hw* %50 to %struct.ixgbe_hw.2*
  %52 = load i32, i32* @MDIO_CTRL1, align 4
  %53 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %54 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %55 = call i32 %49(%struct.ixgbe_hw.2* %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %78, %44
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 30
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = call i32 @msleep(i32 100)
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %64, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = bitcast %struct.ixgbe_hw* %66 to %struct.ixgbe_hw.1*
  %68 = load i32, i32* @MDIO_CTRL1, align 4
  %69 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %70 = call i32 %65(%struct.ixgbe_hw.1* %67, i32 %68, i32 %69, i32* %4)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %59
  %76 = call i32 @udelay(i32 2)
  br label %81

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %56

81:                                               ; preds = %75, %56
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %87, i64* %5, align 8
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %89 = call i32 @hw_dbg(%struct.ixgbe_hw* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %81
  br label %91

91:                                               ; preds = %90, %43, %25
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i64 @ixgbe_identify_phy_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

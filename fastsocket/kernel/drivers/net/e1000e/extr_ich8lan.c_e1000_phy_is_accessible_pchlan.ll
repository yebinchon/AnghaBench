; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_phy_is_accessible_pchlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_phy_is_accessible_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@PHY_REVISION_MASK = common dso_local global i32 0, align 4
@e1000_pch_lpt = common dso_local global i64 0, align 8
@CV_SMB_CTRL = common dso_local global i32 0, align 4
@CV_SMB_CTRL_FORCE_SMBUS = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_FORCE_SMBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_phy_is_accessible_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %40, %1
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = load i32, i32* @MII_PHYSID1, align 4
  %15 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %13, i32 %14, i32* %4)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 65535
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %12
  br label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %23, 16
  store i32 %24, i32* %5, align 4
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = load i32, i32* @MII_PHYSID2, align 4
  %27 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %25, i32 %26, i32* %4)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 65535
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %22
  store i32 0, i32* %5, align 4
  br label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PHY_REVISION_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %33, %21
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %9

43:                                               ; preds = %34, %9
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %103

57:                                               ; preds = %49
  br label %74

58:                                               ; preds = %43
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PHY_REVISION_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  br label %103

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %57
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %78, align 8
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = bitcast %struct.e1000_hw* %80 to %struct.e1000_hw.1*
  %82 = call i32 %79(%struct.e1000_hw.1* %81)
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = call i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw* %83)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %74
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = call i64 @e1000e_get_phy_id(%struct.e1000_hw* %88)
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %87, %74
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %92 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %94, align 8
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = bitcast %struct.e1000_hw* %96 to %struct.e1000_hw.0*
  %98 = call i32 %95(%struct.e1000_hw.0* %97)
  %99 = load i64, i64* %6, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %132

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %61, %56
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %105 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @e1000_pch_lpt, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %103
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = load i32, i32* @CV_SMB_CTRL, align 4
  %113 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %111, i32 %112, i32* %4)
  %114 = load i32, i32* @CV_SMB_CTRL_FORCE_SMBUS, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %119 = load i32, i32* @CV_SMB_CTRL, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %118, i32 %119, i32 %120)
  %122 = load i32, i32* @CTRL_EXT, align 4
  %123 = call i32 @er32(i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* @CTRL_EXT, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @ew32(i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %110, %103
  store i32 1, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %101
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @e1e_rphy_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_get_phy_id(%struct.e1000_hw*) #1

declare dso_local i32 @e1e_wphy_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

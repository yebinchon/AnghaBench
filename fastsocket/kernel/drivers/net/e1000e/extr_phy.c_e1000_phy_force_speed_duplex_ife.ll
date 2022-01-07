; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_phy_force_speed_duplex_ife.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_phy_force_speed_duplex_ife.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64 }

@MII_BMCR = common dso_local global i32 0, align 4
@IFE_PHY_MDIX_CONTROL = common dso_local global i32 0, align 4
@IFE_PMC_AUTO_MDIX = common dso_local global i32 0, align 4
@IFE_PMC_FORCE_MDIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IFE PMC: %X\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Waiting for forced speed/duplex link on IFE phy.\0A\00", align 1
@PHY_FORCE_LIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Link taking longer than expected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_force_speed_duplex_ife(%struct.e1000_hw* %0) #0 {
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
  %11 = load i32, i32* @MII_BMCR, align 4
  %12 = call i64 @e1e_rphy(%struct.e1000_hw* %10, i32 %11, i32* %6)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %85

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = call i32 @e1000e_phy_force_speed_duplex_setup(%struct.e1000_hw* %18, i32* %6)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = load i32, i32* @MII_BMCR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @e1e_wphy(%struct.e1000_hw* %20, i32 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %2, align 8
  br label %85

28:                                               ; preds = %17
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = load i32, i32* @IFE_PHY_MDIX_CONTROL, align 4
  %31 = call i64 @e1e_rphy(%struct.e1000_hw* %29, i32 %30, i32* %6)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %2, align 8
  br label %85

36:                                               ; preds = %28
  %37 = load i32, i32* @IFE_PMC_AUTO_MDIX, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @IFE_PMC_FORCE_MDIX, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = load i32, i32* @IFE_PHY_MDIX_CONTROL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @e1e_wphy(%struct.e1000_hw* %45, i32 %46, i32 %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %2, align 8
  br label %85

53:                                               ; preds = %36
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = call i32 @udelay(i32 1)
  %57 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %53
  %62 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %65 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %63, i32 %64, i32 100000, i32* %7)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* %5, align 8
  store i64 %69, i64* %2, align 8
  br label %85

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %70
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %78 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %76, i32 %77, i32 100000, i32* %7)
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* %5, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i64, i64* %5, align 8
  store i64 %82, i64* %2, align 8
  br label %85

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %53
  store i64 0, i64* %2, align 8
  br label %85

85:                                               ; preds = %84, %81, %68, %51, %34, %26, %15
  %86 = load i64, i64* %2, align 8
  ret i64 %86
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000e_phy_force_speed_duplex_setup(%struct.e1000_hw*, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

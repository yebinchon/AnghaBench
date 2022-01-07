; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_get_phy_info_ife.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_get_phy_info_ife.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Phy info is only valid if link is up\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@IFE_PHY_SPECIAL_CONTROL = common dso_local global i32 0, align 4
@IFE_PSC_AUTO_POLARITY_DISABLE = common dso_local global i32 0, align 4
@IFE_PSC_FORCE_POLARITY = common dso_local global i32 0, align 4
@e1000_rev_polarity_reversed = common dso_local global i32 0, align 4
@e1000_rev_polarity_normal = common dso_local global i32 0, align 4
@IFE_PHY_MDIX_CONTROL = common dso_local global i32 0, align 4
@IFE_PMC_MDIX_STATUS = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_phy_info_ife(%struct.e1000_hw* %0) #0 {
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
  %11 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %10, i32 1, i32 0, i32* %7)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %2, align 8
  br label %92

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %2, align 8
  br label %92

23:                                               ; preds = %16
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = load i32, i32* @IFE_PHY_SPECIAL_CONTROL, align 4
  %26 = call i64 @e1e_rphy(%struct.e1000_hw* %24, i32 %25, i32* %6)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %2, align 8
  br label %92

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IFE_PSC_AUTO_POLARITY_DISABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = call i64 @e1000_check_polarity_ife(%struct.e1000_hw* %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %2, align 8
  br label %92

51:                                               ; preds = %44
  br label %65

52:                                               ; preds = %31
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @IFE_PSC_FORCE_POLARITY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %51
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = load i32, i32* @IFE_PHY_MDIX_CONTROL, align 4
  %68 = call i64 @e1e_rphy(%struct.e1000_hw* %66, i32 %67, i32* %6)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i64, i64* %5, align 8
  store i64 %72, i64* %2, align 8
  br label %92

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IFE_PMC_MDIX_STATUS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %84 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %85 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %87 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %90 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %91 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  store i64 0, i64* %2, align 8
  br label %92

92:                                               ; preds = %73, %71, %49, %29, %19, %14
  %93 = load i64, i64* %2, align 8
  ret i64 %93
}

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_check_polarity_ife(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

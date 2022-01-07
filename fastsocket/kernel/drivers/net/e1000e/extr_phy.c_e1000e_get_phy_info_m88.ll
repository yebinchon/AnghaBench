; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_get_phy_info_m88.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_get_phy_info_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i32, i32, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Phy info is only valid for copper media\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Phy info is only valid if link is up\0A\00", align 1
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_MDIX = common dso_local global i32 0, align 4
@M88E1000_PSSR_SPEED = common dso_local global i32 0, align 4
@M88E1000_PSSR_1000MBS = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@LPA_1000LOCALRXOK = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@LPA_1000REMRXOK = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_get_phy_info_m88(%struct.e1000_hw* %0) #0 {
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
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_media_type_copper, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @e_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %2, align 8
  br label %138

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %20, i32 1, i32 0, i32* %7)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %2, align 8
  br label %138

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %2, align 8
  br label %138

33:                                               ; preds = %26
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %36 = call i64 @e1e_rphy(%struct.e1000_hw* %34, i32 %35, i32* %6)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %2, align 8
  br label %138

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = call i64 @e1000_check_polarity_m88(%struct.e1000_hw* %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %2, align 8
  br label %138

57:                                               ; preds = %41
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %60 = call i64 @e1e_rphy(%struct.e1000_hw* %58, i32 %59, i32* %6)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %2, align 8
  br label %138

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @M88E1000_PSSR_MDIX, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @M88E1000_PSSR_SPEED, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @M88E1000_PSSR_1000MBS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %126

80:                                               ; preds = %65
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %84, align 8
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %87 = bitcast %struct.e1000_hw* %86 to %struct.e1000_hw.0*
  %88 = call i64 %85(%struct.e1000_hw.0* %87)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i64, i64* %5, align 8
  store i64 %92, i64* %2, align 8
  br label %138

93:                                               ; preds = %80
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = load i32, i32* @MII_STAT1000, align 4
  %96 = call i64 @e1e_rphy(%struct.e1000_hw* %94, i32 %95, i32* %6)
  store i64 %96, i64* %5, align 8
  %97 = load i64, i64* %5, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i64, i64* %5, align 8
  store i64 %100, i64* %2, align 8
  br label %138

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @LPA_1000LOCALRXOK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %110

108:                                              ; preds = %101
  %109 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i8* [ %107, %106 ], [ %109, %108 ]
  %112 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %113 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @LPA_1000REMRXOK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %122

120:                                              ; preds = %110
  %121 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i8* [ %119, %118 ], [ %121, %120 ]
  %124 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %125 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  br label %136

126:                                              ; preds = %65
  %127 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %128 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %129 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  %130 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %131 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %132 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %134 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %135 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %126, %122
  %137 = load i64, i64* %5, align 8
  store i64 %137, i64* %2, align 8
  br label %138

138:                                              ; preds = %136, %99, %91, %63, %55, %39, %29, %24, %15
  %139 = load i64, i64* %2, align 8
  ret i64 %139
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_check_polarity_m88(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

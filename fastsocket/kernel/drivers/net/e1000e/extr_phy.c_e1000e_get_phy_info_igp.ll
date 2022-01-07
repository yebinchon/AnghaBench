; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_get_phy_info_igp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_get_phy_info_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [38 x i8] c"Phy info is only valid if link is up\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_1000MBPS = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@LPA_1000LOCALRXOK = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@LPA_1000REMRXOK = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_get_phy_info_igp(%struct.e1000_hw* %0) #0 {
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
  br label %112

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %2, align 8
  br label %112

23:                                               ; preds = %16
  %24 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = call i64 @e1000_check_polarity_igp(%struct.e1000_hw* %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %2, align 8
  br label %112

32:                                               ; preds = %23
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  %35 = call i64 @e1e_rphy(%struct.e1000_hw* %33, i32 %34, i32* %6)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %112

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @IGP01E1000_PSSR_MDIX, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @IGP01E1000_PSSR_SPEED_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @IGP01E1000_PSSR_SPEED_1000MBPS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %40
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.0*
  %62 = call i64 %59(%struct.e1000_hw.0* %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i64, i64* %5, align 8
  store i64 %66, i64* %2, align 8
  br label %112

67:                                               ; preds = %55
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = load i32, i32* @MII_STAT1000, align 4
  %70 = call i64 @e1e_rphy(%struct.e1000_hw* %68, i32 %69, i32* %6)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %2, align 8
  br label %112

75:                                               ; preds = %67
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @LPA_1000LOCALRXOK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %84

82:                                               ; preds = %75
  %83 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i8* [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %87 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @LPA_1000REMRXOK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %96

94:                                               ; preds = %84
  %95 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i8* [ %93, %92 ], [ %95, %94 ]
  %98 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %110

100:                                              ; preds = %40
  %101 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %102 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %103 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %105 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %106 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %108 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %109 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %100, %96
  %111 = load i64, i64* %5, align 8
  store i64 %111, i64* %2, align 8
  br label %112

112:                                              ; preds = %110, %73, %65, %38, %30, %19, %14
  %113 = load i64, i64* %2, align 8
  ret i64 %113
}

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_check_polarity_igp(%struct.e1000_hw*) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

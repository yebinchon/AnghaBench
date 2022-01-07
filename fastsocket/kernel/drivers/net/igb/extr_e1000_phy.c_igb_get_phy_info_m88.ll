; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_get_phy_info_m88.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_get_phy_info_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i32, i32, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Phy info is only valid for copper media\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Phy info is only valid if link is up\0A\00", align 1
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_MDIX = common dso_local global i32 0, align 4
@M88E1000_PSSR_SPEED = common dso_local global i32 0, align 4
@M88E1000_PSSR_1000MBS = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@SR_1000T_REMOTE_RX_STATUS = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_get_phy_info_m88(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %3, align 8
  %9 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_media_type_copper, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @hw_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %142

18:                                               ; preds = %1
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = call i32 @igb_phy_has_link(%struct.e1000_hw* %19, i32 1, i32 0, i32* %6)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %142

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = call i32 @hw_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %142

31:                                               ; preds = %24
  %32 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.0*
  %38 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %39 = call i32 %35(%struct.e1000_hw.0* %37, i32 %38, i32* %5)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %142

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = call i32 @igb_check_polarity_m88(%struct.e1000_hw* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %142

57:                                               ; preds = %43
  %58 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %60, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = bitcast %struct.e1000_hw* %62 to %struct.e1000_hw.0*
  %64 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %65 = call i32 %61(%struct.e1000_hw.0* %63, i32 %64, i32* %5)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %142

69:                                               ; preds = %57
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @M88E1000_PSSR_MDIX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @M88E1000_PSSR_SPEED, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @M88E1000_PSSR_1000MBS, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %131

83:                                               ; preds = %69
  %84 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %86, align 8
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %89 = bitcast %struct.e1000_hw* %88 to %struct.e1000_hw.1*
  %90 = call i32 %87(%struct.e1000_hw.1* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %142

94:                                               ; preds = %83
  %95 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %97, align 8
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %100 = bitcast %struct.e1000_hw* %99 to %struct.e1000_hw.0*
  %101 = load i32, i32* @PHY_1000T_STATUS, align 4
  %102 = call i32 %98(%struct.e1000_hw.0* %100, i32 %101, i32* %5)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %142

106:                                              ; preds = %94
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %115

113:                                              ; preds = %106
  %114 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i8* [ %112, %111 ], [ %114, %113 ]
  %117 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %117, i32 0, i32 4
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %127

125:                                              ; preds = %115
  %126 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i8* [ %124, %123 ], [ %126, %125 ]
  %129 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %130 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  br label %141

131:                                              ; preds = %69
  %132 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %133 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %134 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %136 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %137 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %139 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %140 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %131, %127
  br label %142

142:                                              ; preds = %141, %105, %93, %68, %56, %42, %27, %23, %14
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_phy_has_link(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @igb_check_polarity_m88(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

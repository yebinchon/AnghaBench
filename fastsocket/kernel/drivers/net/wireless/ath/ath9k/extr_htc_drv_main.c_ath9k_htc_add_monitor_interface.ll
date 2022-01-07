; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_add_monitor_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_add_monitor_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i64, i32, i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_target_vif = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath9k_htc_target_sta = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ATH9K_HTC_MAX_VIF = common dso_local global i64 0, align 8
@ATH9K_HTC_MAX_STA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@HTC_M_MONITOR = common dso_local global i32 0, align 4
@WMI_VAP_CREATE_CMDID = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@WMI_NODE_CREATE_CMDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unable to add station entry for monitor mode\0A\00", align 1
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Attached a monitor interface at idx: %d, sta idx: %d\0A\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to attach a monitor interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*)* @ath9k_htc_add_monitor_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_add_monitor_interface(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_htc_target_vif, align 4
  %6 = alloca %struct.ath9k_htc_target_sta, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  %10 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %10, i32 0, i32 6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__* %12)
  store %struct.ath_common* %13, %struct.ath_common** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ATH9K_HTC_MAX_VIF, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ATH9K_HTC_MAX_STA, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %1
  %26 = load i32, i32* @ENOBUFS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %149

28:                                               ; preds = %19
  %29 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @ffz(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ATH9K_HTC_MAX_STA, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %28
  %41 = load i32, i32* @ENOBUFS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %149

43:                                               ; preds = %36
  %44 = call i32 @memset(%struct.ath9k_htc_target_vif* %5, i32 0, i32 32)
  %45 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %5, i32 0, i32 7
  %46 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %47 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i32* %45, i32 %48, i32 %49)
  %51 = load i32, i32* @HTC_M_MONITOR, align 4
  %52 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %5, i32 0, i32 6
  store i32 %51, i32* %52, align 4
  %53 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @ffz(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %5, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @WMI_VAP_CREATE_CMDID, align 4
  %60 = call i32 @WMI_CMD_BUF(i32 %59, %struct.ath9k_htc_target_vif* %5)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %149

64:                                               ; preds = %43
  %65 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 1, %70
  %72 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %73 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %77 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %64
  %81 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %82 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %83 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %82, i32 0, i32 6
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %64
  %87 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %88 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = bitcast %struct.ath9k_htc_target_sta* %6 to %struct.ath9k_htc_target_vif*
  %92 = call i32 @memset(%struct.ath9k_htc_target_vif* %91, i32 0, i32 32)
  %93 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %6, i32 0, i32 5
  %94 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %95 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @memcpy(i32* %93, i32 %96, i32 %97)
  %99 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %6, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %6, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %5, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %6, i32 0, i32 3
  store i32 %103, i32* %104, align 4
  %105 = call i32 @cpu_to_be16(i32 65535)
  %106 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %6, i32 0, i32 4
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @WMI_NODE_CREATE_CMDID, align 4
  %108 = bitcast %struct.ath9k_htc_target_sta* %6 to %struct.ath9k_htc_target_vif*
  %109 = call i32 @WMI_CMD_BUF(i32 %107, %struct.ath9k_htc_target_vif* %108)
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %86
  %113 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %114 = call i32 @ath_err(%struct.ath_common* %113, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %146

115:                                              ; preds = %86
  %116 = load i32, i32* %8, align 4
  %117 = shl i32 1, %116
  %118 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %119 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %123 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %128 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %131 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  store i32 %126, i32* %134, align 4
  %135 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %136 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %135, i32 0, i32 6
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 4
  %139 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %140 = load i32, i32* @CONFIG, align 4
  %141 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %142 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %139, i32 %140, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %144)
  store i32 0, i32* %2, align 4
  br label %154

146:                                              ; preds = %112
  %147 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %148 = call i32 @__ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv* %147)
  br label %149

149:                                              ; preds = %146, %63, %40, %25
  %150 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %151 = load i32, i32* @FATAL, align 4
  %152 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %150, i32 %151, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %149, %115
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__*) #1

declare dso_local i8* @ffz(i32) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_vif*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, %struct.ath9k_htc_target_vif*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @__ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

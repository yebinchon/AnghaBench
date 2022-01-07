; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_add_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i32, i32, i64 }
%struct.ath9k_htc_vif = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_target_vif = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@HTC_M_STA = common dso_local global i32 0, align 4
@HTC_M_IBSS = common dso_local global i32 0, align 4
@HTC_M_HOSTAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Interface type %d not yet supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WMI_VAP_CREATE_CMDID = common dso_local global i32 0, align 4
@WMI_VAP_REMOVE_CMDID = common dso_local global i32 0, align 4
@OP_ANI_RUNNING = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Attach a VIF of type: %d at idx: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_htc_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ath9k_htc_vif*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath9k_htc_target_vif, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %12, align 8
  store %struct.ath9k_htc_priv* %13, %struct.ath9k_htc_priv** %5, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %18, %struct.ath9k_htc_vif** %6, align 8
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_3__* %21)
  store %struct.ath_common* %22, %struct.ath_common** %7, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %24 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %27 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %26)
  %28 = call i32 @memset(%struct.ath9k_htc_target_vif* %8, i32 0, i32 16)
  %29 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 3
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32* %29, i32 %32, i32 %33)
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %47 [
    i32 128, label %38
    i32 130, label %41
    i32 129, label %44
  ]

38:                                               ; preds = %2
  %39 = load i32, i32* @HTC_M_STA, align 4
  %40 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  br label %55

41:                                               ; preds = %2
  %42 = load i32, i32* @HTC_M_IBSS, align 4
  %43 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  br label %55

44:                                               ; preds = %2
  %45 = load i32, i32* @HTC_M_HOSTAP, align 4
  %46 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  br label %55

47:                                               ; preds = %2
  %48 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ath_err(%struct.ath_common* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %145

55:                                               ; preds = %44, %41, %38
  %56 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %57 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ffz(i32 %58)
  %60 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %62 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = call i32 @cpu_to_be16(i32 2304)
  %64 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @WMI_VAP_CREATE_CMDID, align 4
  %66 = call i32 @WMI_CMD_BUF(i32 %65, %struct.ath9k_htc_target_vif* %8)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %145

70:                                               ; preds = %55
  %71 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %72 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %73 = call i32 @ath9k_htc_add_station(%struct.ath9k_htc_priv* %71, %struct.ieee80211_vif* %72, i32* null)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @WMI_VAP_REMOVE_CMDID, align 4
  %78 = call i32 @WMI_CMD_BUF(i32 %77, %struct.ath9k_htc_target_vif* %8)
  br label %145

79:                                               ; preds = %70
  %80 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %81 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %82 = call i32 @ath9k_htc_set_bssid_mask(%struct.ath9k_htc_priv* %80, %struct.ieee80211_vif* %81)
  %83 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %84 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 1, %85
  %87 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %88 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %92 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %96 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @INC_VIF(%struct.ath9k_htc_priv* %95, i32 %98)
  %100 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %101 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 129
  br i1 %103, label %109, label %104

104:                                              ; preds = %79
  %105 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %106 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 130
  br i1 %108, label %109, label %113

109:                                              ; preds = %104, %79
  %110 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %111 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %112 = call i32 @ath9k_htc_assign_bslot(%struct.ath9k_htc_priv* %110, %struct.ieee80211_vif* %111)
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %115 = call i32 @ath9k_htc_set_opmode(%struct.ath9k_htc_priv* %114)
  %116 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %117 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %116, i32 0, i32 2
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 129
  br i1 %121, label %122, label %135

122:                                              ; preds = %113
  %123 = load i32, i32* @OP_ANI_RUNNING, align 4
  %124 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %125 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %124, i32 0, i32 3
  %126 = call i32 @test_bit(i32 %123, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %122
  %129 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %130 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %129, i32 0, i32 2
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = call i32 @ath9k_hw_set_tsfadjust(%struct.TYPE_3__* %131, i32 1)
  %133 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %134 = call i32 @ath9k_htc_start_ani(%struct.ath9k_htc_priv* %133)
  br label %135

135:                                              ; preds = %128, %122, %113
  %136 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %137 = load i32, i32* @CONFIG, align 4
  %138 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %139 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %142 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ath_dbg(%struct.ath_common* %136, i32 %137, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %135, %76, %69, %47
  %146 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %147 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %146)
  %148 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %149 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %148, i32 0, i32 1
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load i32, i32* %9, align 4
  ret i32 %151
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_vif*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, %struct.ath9k_htc_target_vif*) #1

declare dso_local i32 @ath9k_htc_add_station(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, i32*) #1

declare dso_local i32 @ath9k_htc_set_bssid_mask(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @INC_VIF(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @ath9k_htc_assign_bslot(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_htc_set_opmode(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath9k_hw_set_tsfadjust(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ath9k_htc_start_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

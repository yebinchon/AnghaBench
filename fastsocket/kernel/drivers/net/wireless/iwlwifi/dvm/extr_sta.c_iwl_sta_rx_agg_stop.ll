; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_sta_rx_agg_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_sta_rx_agg_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_addsta_cmd = type { i32 }

@IWL_INVALID_STATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid station for AGG tid %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@STA_MODIFY_DELBA_TID_MSK = common dso_local global i32 0, align 4
@STA_CONTROL_MODIFY_MSK = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_sta_rx_agg_stop(%struct.iwl_priv* %0, %struct.ieee80211_sta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_addsta_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 2
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %14 = call i32 @iwl_sta_id(%struct.ieee80211_sta* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IWL_INVALID_STATION, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @IWL_ERR(%struct.iwl_priv* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %79

24:                                               ; preds = %3
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @STA_MODIFY_DELBA_TID_MSK, align 4
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %36, i32* %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i64 %47, i64* %55, align 8
  %56 = load i32, i32* @STA_CONTROL_MODIFY_MSK, align 4
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %58 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %56, i32* %64, align 8
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %66 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @memcpy(%struct.iwl_addsta_cmd* %9, %struct.TYPE_6__* %71, i32 4)
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %74 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock_bh(i32* %74)
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %77 = load i32, i32* @CMD_SYNC, align 4
  %78 = call i32 @iwl_send_add_sta(%struct.iwl_priv* %76, %struct.iwl_addsta_cmd* %9, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %24, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_sta_id(%struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(%struct.iwl_addsta_cmd*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwl_send_add_sta(%struct.iwl_priv*, %struct.iwl_addsta_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

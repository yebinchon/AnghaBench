; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_sta_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mwl8k_vif = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ieee80211_key_conf = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@NUM_WEP_KEYS = common dso_local global i32 0, align 4
@SET_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @mwl8k_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.mwl8k_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwl8k_vif*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %13, align 8
  store %struct.mwl8k_priv* %14, %struct.mwl8k_priv** %7, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %16 = call %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif* %15)
  store %struct.mwl8k_vif* %16, %struct.mwl8k_vif** %10, align 8
  %17 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %18 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %25 = call i32 @mwl8k_cmd_update_stadb_add(%struct.ieee80211_hw* %22, %struct.ieee80211_vif* %23, %struct.ieee80211_sta* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %31 = call %struct.TYPE_6__* @MWL8K_STA(%struct.ieee80211_sta* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %40 = call %struct.TYPE_6__* @MWL8K_STA(%struct.ieee80211_sta* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %28
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %21
  br label %49

44:                                               ; preds = %3
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %48 = call i32 @mwl8k_cmd_set_new_stn_add(%struct.ieee80211_hw* %45, %struct.ieee80211_vif* %46, %struct.ieee80211_sta* %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %43
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %81, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NUM_WEP_KEYS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %10, align 8
  %56 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.ieee80211_key_conf* @IEEE80211_KEY_CONF(i32 %62)
  store %struct.ieee80211_key_conf* %63, %struct.ieee80211_key_conf** %11, align 8
  %64 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %10, align 8
  %65 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %54
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %75 = load i32, i32* @SET_KEY, align 4
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %77 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %78 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %79 = call i32 @mwl8k_set_key(%struct.ieee80211_hw* %74, i32 %75, %struct.ieee80211_vif* %76, %struct.ieee80211_sta* %77, %struct.ieee80211_key_conf* %78)
  br label %80

80:                                               ; preds = %73, %54
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %50

84:                                               ; preds = %50
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif*) #1

declare dso_local i32 @mwl8k_cmd_update_stadb_add(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local %struct.TYPE_6__* @MWL8K_STA(%struct.ieee80211_sta*) #1

declare dso_local i32 @mwl8k_cmd_set_new_stn_add(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local %struct.ieee80211_key_conf* @IEEE80211_KEY_CONF(i32) #1

declare dso_local i32 @mwl8k_set_key(%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

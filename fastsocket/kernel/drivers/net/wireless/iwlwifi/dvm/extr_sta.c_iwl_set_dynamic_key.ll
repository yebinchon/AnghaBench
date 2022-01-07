; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_set_dynamic_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_set_dynamic_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32 }
%struct.iwl_rxon_context = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64* }
%struct.ieee80211_key_conf = type { i64, i32, i32, i32 }
%struct.ieee80211_sta = type { i64* }
%struct.ieee80211_key_seq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WEP_INVALID_OFFSET = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown cipher %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Set dynamic key: cipher=%x len=%d idx=%d sta=%pM ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_set_dynamic_key(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.ieee80211_key_conf* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_rxon_context*, align 8
  %8 = alloca %struct.ieee80211_key_conf*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_key_seq, align 4
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %7, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %16 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %20 = call i64 @iwlagn_key_sta_id(%struct.iwl_priv* %15, i32 %18, %struct.ieee80211_sta* %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* @IWL_INVALID_STATION, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %133

27:                                               ; preds = %4
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 1
  %30 = call i32 @lockdep_assert_held(i32* %29)
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %32 = call i64 @iwl_get_free_ucode_key_offset(%struct.iwl_priv* %31)
  %33 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WEP_INVALID_OFFSET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %133

43:                                               ; preds = %27
  %44 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %88 [
    i32 130, label %51
    i32 131, label %82
    i32 128, label %82
    i32 129, label %82
  ]

51:                                               ; preds = %43
  %52 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %53 = icmp ne %struct.ieee80211_sta* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  store i64* %57, i64** %14, align 8
  br label %63

58:                                               ; preds = %51
  %59 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %60 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  store i64* %62, i64** %14, align 8
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %65 = call i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf* %64, i32 0, %struct.ieee80211_key_seq* %10)
  %66 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %67 = load i64*, i64** %14, align 8
  %68 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %10, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %72 = call i32 @ieee80211_get_tkip_rx_p1k(%struct.ieee80211_key_conf* %66, i64* %67, i32 %70, i32* %71)
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %74 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %10, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %80 = load i32, i32* @CMD_SYNC, align 4
  %81 = call i32 @iwlagn_send_sta_key(%struct.iwl_priv* %73, %struct.ieee80211_key_conf* %74, i64 %75, i32 %78, i32* %79, i32 %80)
  store i32 %81, i32* %12, align 4
  br label %96

82:                                               ; preds = %43, %43, %43
  %83 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %84 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i32, i32* @CMD_SYNC, align 4
  %87 = call i32 @iwlagn_send_sta_key(%struct.iwl_priv* %83, %struct.ieee80211_key_conf* %84, i64 %85, i32 0, i32* null, i32 %86)
  store i32 %87, i32* %12, align 4
  br label %96

88:                                               ; preds = %43
  %89 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %90 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @IWL_ERR(%struct.iwl_priv* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %88, %82, %63
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %101 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %105 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %108 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %107, i32 0, i32 0
  %109 = call i32 @clear_bit(i64 %106, i32* %108)
  br label %110

110:                                              ; preds = %99, %96
  %111 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %112 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %113 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %116 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %119 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %122 = icmp ne %struct.ieee80211_sta* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %110
  %124 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %125 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  br label %128

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %127, %123
  %129 = phi i64* [ %126, %123 ], [ null, %127 ]
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @IWL_DEBUG_WEP(%struct.iwl_priv* %111, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %117, i32 %120, i64* %129, i32 %130)
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %128, %40, %24
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i64 @iwlagn_key_sta_id(%struct.iwl_priv*, i32, %struct.ieee80211_sta*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iwl_get_free_ucode_key_offset(%struct.iwl_priv*) #1

declare dso_local i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf*, i32, %struct.ieee80211_key_seq*) #1

declare dso_local i32 @ieee80211_get_tkip_rx_p1k(%struct.ieee80211_key_conf*, i64*, i32, i32*) #1

declare dso_local i32 @iwlagn_send_sta_key(%struct.iwl_priv*, %struct.ieee80211_key_conf*, i64, i32, i32*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @IWL_DEBUG_WEP(%struct.iwl_priv*, i8*, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_add_station_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_add_station_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.iwl_rxon_context = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_addsta_cmd = type { i32 }

@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Unable to prepare station %pM for addition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWL_STA_UCODE_INPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"STA %d already in process of being added.\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@IWL_STA_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@IWL_STA_UCODE_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"STA %d (%pM) already added, not adding again.\0A\00", align 1
@CMD_SYNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Adding station %pM failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_add_station_common(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, i64* %2, i32 %3, %struct.ieee80211_sta* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_priv*, align 8
  %9 = alloca %struct.iwl_rxon_context*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.iwl_addsta_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %8, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ieee80211_sta* %4, %struct.ieee80211_sta** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load i64*, i64** %13, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %22 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %26 = call i64 @iwl_prep_station(%struct.iwl_priv* %21, %struct.iwl_rxon_context* %22, i64* %23, i32 %24, %struct.ieee80211_sta* %25)
  store i64 %26, i64* %15, align 8
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* @IWL_INVALID_STATION, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %6
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = call i32 @IWL_ERR(%struct.iwl_priv* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64* %32)
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_bh(i32* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %158

39:                                               ; preds = %6
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %41 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IWL_STA_UCODE_INPROGRESS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load i32, i32* @EEXIST, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %158

59:                                               ; preds = %39
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IWL_STA_DRIVER_ACTIVE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %59
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %72 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IWL_STA_UCODE_ACTIVE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %70
  %82 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load i64*, i64** %10, align 8
  %85 = call i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv* %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %83, i64* %84)
  %86 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %87 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_bh(i32* %87)
  %89 = load i32, i32* @EEXIST, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %158

91:                                               ; preds = %70, %59
  %92 = load i32, i32* @IWL_STA_UCODE_INPROGRESS, align 4
  %93 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %94 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %92
  store i32 %100, i32* %98, align 8
  %101 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %102 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = call i32 @memcpy(%struct.iwl_addsta_cmd* %16, %struct.TYPE_6__* %106, i32 4)
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %109 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock_bh(i32* %109)
  %111 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %112 = load i32, i32* @CMD_SYNC, align 4
  %113 = call i32 @iwl_send_add_sta(%struct.iwl_priv* %111, %struct.iwl_addsta_cmd* %16, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %91
  %117 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %118 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %117, i32 0, i32 0
  %119 = call i32 @spin_lock_bh(i32* %118)
  %120 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %122 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i64, i64* %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = call i32 @IWL_ERR(%struct.iwl_priv* %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64* %129)
  %131 = load i32, i32* @IWL_STA_DRIVER_ACTIVE, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %134 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i64, i64* %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %132
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @IWL_STA_UCODE_INPROGRESS, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %144 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %143, i32 0, i32 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load i64, i64* %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %142
  store i32 %150, i32* %148, align 8
  %151 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %152 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %151, i32 0, i32 0
  %153 = call i32 @spin_unlock_bh(i32* %152)
  br label %154

154:                                              ; preds = %116, %91
  %155 = load i64, i64* %15, align 8
  %156 = load i64*, i64** %13, align 8
  store i64 %155, i64* %156, align 8
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %154, %81, %50, %30
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @iwl_prep_station(%struct.iwl_priv*, %struct.iwl_rxon_context*, i64*, i32, %struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i64*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i64) #1

declare dso_local i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv*, i8*, i64, i64*) #1

declare dso_local i32 @memcpy(%struct.iwl_addsta_cmd*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @iwl_send_add_sta(%struct.iwl_priv*, %struct.iwl_addsta_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

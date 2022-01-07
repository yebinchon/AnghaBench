; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwlagn_add_bssid_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwlagn_add_bssid_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iwl_link_quality_cmd*, i32 }
%struct.iwl_link_quality_cmd = type { i32 }
%struct.iwl_rxon_context = type { i32 }

@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unable to add station %pM\0A\00", align 1
@IWL_STA_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to initialize rate scaling for station %pM.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Link quality command failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_add_bssid_station(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_rxon_context*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.iwl_link_quality_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64*, i64** %9, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i64, i64* @IWL_INVALID_STATION, align 8
  %17 = load i64*, i64** %9, align 8
  store i64 %16, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %20 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = call i32 @iwl_add_station_common(%struct.iwl_priv* %19, %struct.iwl_rxon_context* %20, i64* %21, i32 0, i32* null, i64* %11)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64* %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %90

30:                                               ; preds = %18
  %31 = load i64*, i64** %9, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* %11, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load i32, i32* @IWL_STA_LOCAL, align 4
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %40
  store i32 %48, i32* %46, align 8
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %53 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call %struct.iwl_link_quality_cmd* @iwl_sta_alloc_lq(%struct.iwl_priv* %52, %struct.iwl_rxon_context* %53, i64 %54)
  store %struct.iwl_link_quality_cmd* %55, %struct.iwl_link_quality_cmd** %12, align 8
  %56 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %12, align 8
  %57 = icmp ne %struct.iwl_link_quality_cmd* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %36
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %59, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %90

64:                                               ; preds = %36
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %66 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %67 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %12, align 8
  %68 = load i32, i32* @CMD_SYNC, align 4
  %69 = call i32 @iwl_send_lq_cmd(%struct.iwl_priv* %65, %struct.iwl_rxon_context* %66, %struct.iwl_link_quality_cmd* %67, i32 %68, i32 1)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %64
  %77 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %78 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %77, i32 0, i32 0
  %79 = call i32 @spin_lock_bh(i32* %78)
  %80 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %12, align 8
  %81 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %82 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store %struct.iwl_link_quality_cmd* %80, %struct.iwl_link_quality_cmd** %86, align 8
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %88 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %76, %58, %25
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @iwl_add_station_common(%struct.iwl_priv*, %struct.iwl_rxon_context*, i64*, i32, i32*, i64*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.iwl_link_quality_cmd* @iwl_sta_alloc_lq(%struct.iwl_priv*, %struct.iwl_rxon_context*, i64) #1

declare dso_local i32 @iwl_send_lq_cmd(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.iwl_link_quality_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_update_bcast_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_update_bcast_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iwl_link_quality_cmd* }
%struct.iwl_link_quality_cmd = type { i32 }
%struct.iwl_rxon_context = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"Unable to initialize rate scaling for bcast station.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Bcast station rate scaling has not been initialized yet.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_update_bcast_station(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca %struct.iwl_link_quality_cmd*, align 8
  %7 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  %8 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %12 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.iwl_link_quality_cmd* @iwl_sta_alloc_lq(%struct.iwl_priv* %11, %struct.iwl_rxon_context* %12, i64 %13)
  store %struct.iwl_link_quality_cmd* %14, %struct.iwl_link_quality_cmd** %6, align 8
  %15 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %6, align 8
  %16 = icmp ne %struct.iwl_link_quality_cmd* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %19 = call i32 @IWL_ERR(%struct.iwl_priv* %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %2
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %31, align 8
  %33 = icmp ne %struct.iwl_link_quality_cmd* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %36 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %40, align 8
  %42 = call i32 @kfree(%struct.iwl_link_quality_cmd* %41)
  br label %46

43:                                               ; preds = %22
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %45 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %44, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %34
  %47 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %6, align 8
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.iwl_link_quality_cmd* %47, %struct.iwl_link_quality_cmd** %53, align 8
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %46, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.iwl_link_quality_cmd* @iwl_sta_alloc_lq(%struct.iwl_priv*, %struct.iwl_rxon_context*, i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.iwl_link_quality_cmd*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

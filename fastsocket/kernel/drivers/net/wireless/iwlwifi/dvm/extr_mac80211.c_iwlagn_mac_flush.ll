; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.iwl_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Aborting flush due to device shutdown\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Aborting flush due to RF Kill\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"send flush command\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"flush request fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"wait transmit/flush all frames\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @iwlagn_mac_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_mac_flush(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_priv* %9, %struct.iwl_priv** %7, align 8
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %14 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %22 = call i32 @IWL_DEBUG_TX(%struct.iwl_priv* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %50

23:                                               ; preds = %3
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %25 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %29 = call i32 @IWL_DEBUG_TX(%struct.iwl_priv* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %50

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %35 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %37 = call i64 @iwlagn_txfifo_flush(%struct.iwl_priv* %36, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %41 = call i32 @IWL_ERR(%struct.iwl_priv* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %50

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %45 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @iwl_trans_wait_tx_queue_empty(i32 %48)
  br label %50

50:                                               ; preds = %43, %39, %27, %20
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %52 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %55 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_priv*, i8*) #1

declare dso_local i64 @iwl_is_rfkill(%struct.iwl_priv*) #1

declare dso_local i64 @iwlagn_txfifo_flush(%struct.iwl_priv*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_trans_wait_tx_queue_empty(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

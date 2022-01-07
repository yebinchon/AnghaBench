; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwl_chswitch_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwl_chswitch_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { i64 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@STATUS_CHANNEL_SWITCH_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_chswitch_done(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_rxon_context*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 1
  %8 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %9 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %10 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %8, i64 %9
  store %struct.iwl_rxon_context* %10, %struct.iwl_rxon_context** %5, align 8
  %11 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %35

17:                                               ; preds = %2
  %18 = load i32, i32* @STATUS_CHANNEL_SWITCH_PENDING, align 4
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %19, i32 0, i32 0
  %21 = call i32 @test_and_clear_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %35

24:                                               ; preds = %17
  %25 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ieee80211_chswitch_done(i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %16, %23, %29, %24
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_chswitch_done(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

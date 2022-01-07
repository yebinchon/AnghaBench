; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwlagn_disable_roc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwlagn_disable_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32*, i32, %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IWL_RXON_CTX_PAN = common dso_local global i64 0, align 8
@RXON_DEV_TYPE_P2P = common dso_local global i32 0, align 4
@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwlagn_disable_roc(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_rxon_context*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %4 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %4, i32 0, i32 3
  %6 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %7 = load i64, i64* @IWL_RXON_CTX_PAN, align 8
  %8 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %6, i64 %7
  store %struct.iwl_rxon_context* %8, %struct.iwl_rxon_context** %3, align 8
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 2
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %44

17:                                               ; preds = %1
  %18 = load i32, i32* @RXON_DEV_TYPE_P2P, align 4
  %19 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %30 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memset(i32 %34, i32 0, i32 %35)
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %38 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %3, align 8
  %39 = call i32 @iwlagn_commit_rxon(%struct.iwl_priv* %37, %struct.iwl_rxon_context* %38)
  %40 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @iwlagn_commit_rxon(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

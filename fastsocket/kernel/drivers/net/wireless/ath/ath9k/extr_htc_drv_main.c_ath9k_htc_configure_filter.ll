; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_configure_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32, i32, i32 }

@SUPPORTED_FILTERS = common dso_local global i32 0, align 4
@OP_INVALID = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to configure filter on invalid state\0A\00", align 1
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Set HW RX filter: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @ath9k_htc_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath9k_htc_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %12, align 8
  store %struct.ath9k_htc_priv* %13, %struct.ath9k_htc_priv** %9, align 8
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* @SUPPORTED_FILTERS, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @SUPPORTED_FILTERS, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @OP_INVALID, align 4
  %25 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %26 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %25, i32 0, i32 3
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %4
  %30 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %31 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ath9k_hw_common(i32 %32)
  %34 = load i32, i32* @ANY, align 4
  %35 = call i32 (i32, i32, i8*, ...) @ath_dbg(i32 %33, i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %37 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %65

39:                                               ; preds = %4
  %40 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %41 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %45 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %47 = call i32 @ath9k_htc_calcrxfilter(%struct.ath9k_htc_priv* %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %49 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ath9k_hw_setrxfilter(i32 %50, i32 %51)
  %53 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %54 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ath9k_hw_common(i32 %55)
  %57 = load i32, i32* @CONFIG, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i32, i32, i8*, ...) @ath_dbg(i32 %56, i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %61 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %60)
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %63 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  br label %65

65:                                               ; preds = %39, %29
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @ath9k_hw_common(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_calcrxfilter(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_hw_setrxfilter(i32, i32) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Failed to set rate: unable to get hw mode\0A\00", align 1
@RATE_COUNT_LEGACY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Set active_rate = %0x\0A\00", align 1
@IL_CCK_BASIC_RATES_MASK = common dso_local global i32 0, align 4
@IL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IL_OFDM_BASIC_RATES_MASK = common dso_local global i32 0, align 4
@IL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_set_rate(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca %struct.ieee80211_supported_band*, align 8
  %4 = alloca %struct.ieee80211_rate*, align 8
  %5 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %3, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ieee80211_supported_band* @il_get_hw_mode(%struct.il_priv* %6, i32 %9)
  store %struct.ieee80211_supported_band* %10, %struct.ieee80211_supported_band** %3, align 8
  %11 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %12 = icmp ne %struct.ieee80211_supported_band* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @IL_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %68

15:                                               ; preds = %1
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %46, %15
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i32 0, i32 1
  %27 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %27, i64 %29
  store %struct.ieee80211_rate* %30, %struct.ieee80211_rate** %4, align 8
  %31 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RATE_COUNT_LEGACY, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %36, %24
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %18

49:                                               ; preds = %18
  %50 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %51 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @D_RATE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @IL_CCK_BASIC_RATES_MASK, align 4
  %55 = load i32, i32* @IL_FIRST_CCK_RATE, align 4
  %56 = ashr i32 %54, %55
  %57 = and i32 %56, 15
  %58 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @IL_OFDM_BASIC_RATES_MASK, align 4
  %62 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %63 = ashr i32 %61, %62
  %64 = and i32 %63, 255
  %65 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %66 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %49, %13
  ret void
}

declare dso_local %struct.ieee80211_supported_band* @il_get_hw_mode(%struct.il_priv*, i32) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @D_RATE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_init_hw_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_init_hw_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.il_priv = type { i32 }
%struct.ieee80211_rate = type { i32, i32, i32, i32 }

@RATE_COUNT_LEGACY = common dso_local global i32 0, align 4
@il_rates = common dso_local global %struct.TYPE_2__* null, align 8
@IL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_1M_PLCP = common dso_local global i64 0, align 8
@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.ieee80211_rate*)* @il4965_init_hw_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_init_hw_rates(%struct.il_priv* %0, %struct.ieee80211_rate* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.ieee80211_rate*, align 8
  %5 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.ieee80211_rate* %1, %struct.ieee80211_rate** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %69, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RATE_COUNT_LEGACY, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %72

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @il_rates, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 5
  %18 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %18, i64 %20
  %22 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %24, i64 %26
  %28 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %27, i32 0, i32 1
  store i32 %23, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %30, i64 %32
  %34 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %33, i32 0, i32 2
  store i32 %29, i32* %34, align 4
  %35 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %35, i64 %37
  %39 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %38, i32 0, i32 3
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @IL_FIRST_CCK_RATE, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %10
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @IL_LAST_CCK_RATE, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @il_rates, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RATE_1M_PLCP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i32 [ 0, %56 ], [ %58, %57 ]
  %61 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %61, i64 %63
  %65 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %60
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %59, %43, %10
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %6

72:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

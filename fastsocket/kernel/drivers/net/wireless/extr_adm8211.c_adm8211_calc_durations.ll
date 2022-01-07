; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_calc_durations.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_calc_durations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLCP_SIGNAL_2M = common dso_local global i32 0, align 4
@PLCP_SIGNAL_11M = common dso_local global i32 0, align 4
@IEEE80211_DUR_DS_FAST_ACK = common dso_local global i64 0, align 8
@IEEE80211_DUR_DS_FAST_CTS = common dso_local global i64 0, align 8
@IEEE80211_DUR_DS_FAST_PLCPHDR = common dso_local global i32 0, align 4
@IEEE80211_DUR_DS_LONG_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_DUR_DS_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_DUR_DS_SIFS = common dso_local global i32 0, align 4
@IEEE80211_DUR_DS_SLOW_ACK = common dso_local global i64 0, align 8
@IEEE80211_DUR_DS_SLOW_CTS = common dso_local global i64 0, align 8
@IEEE80211_DUR_DS_SLOW_PLCPHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32, i32, i32)* @adm8211_calc_durations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8211_calc_durations(i32* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* %9, align 8
  %15 = add i64 24, %14
  %16 = mul i64 80, %15
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = sub i64 %19, 1
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %20, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @PLCP_SIGNAL_2M, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 542
  store i32 %32, i32* %30, align 4
  br label %37

33:                                               ; preds = %6
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 430
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 288
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 80, %45
  %47 = load i32, i32* %11, align 4
  %48 = sdiv i32 %46, %47
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 80, %50
  %52 = load i32, i32* %11, align 4
  %53 = srem i32 %51, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @PLCP_SIGNAL_11M, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %44
  %58 = load i32, i32* %13, align 4
  %59 = icmp sle i32 %58, 30
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, 32768
  %67 = add nsw i32 %66, 1
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  br label %77

69:                                               ; preds = %60, %57, %44
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %72, %69
  br label %77

77:                                               ; preds = %76, %63
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

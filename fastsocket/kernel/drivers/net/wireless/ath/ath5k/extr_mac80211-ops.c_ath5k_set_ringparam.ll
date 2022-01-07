; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@ATH_RXBUF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATH5K_TXQ_LEN_MAX = common dso_local global i64 0, align 8
@AR5K_TX_QUEUE_ID_DATA_MIN = common dso_local global i64 0, align 8
@AR5K_TX_QUEUE_ID_DATA_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64, i64)* @ath5k_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_set_ringparam(%struct.ieee80211_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath5k_hw*, align 8
  %9 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %11, align 8
  store %struct.ath5k_hw* %12, %struct.ath5k_hw** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @ATH_RXBUF, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %106

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @ATH5K_TXQ_LEN_MAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %106

29:                                               ; preds = %22
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %102, %29
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %33 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i64 @ARRAY_SIZE(%struct.TYPE_2__* %34)
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %105

37:                                               ; preds = %30
  %38 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %39 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %102

47:                                               ; preds = %37
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %49 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AR5K_TX_QUEUE_ID_DATA_MIN, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %47
  %58 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %59 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AR5K_TX_QUEUE_ID_DATA_MAX, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57, %47
  br label %102

68:                                               ; preds = %57
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %71 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 %69, i64* %75, align 8
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %77 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %84 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %82, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %68
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %93 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %94 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ieee80211_stop_queue(%struct.ieee80211_hw* %92, i64 %99)
  br label %101

101:                                              ; preds = %91, %68
  br label %102

102:                                              ; preds = %101, %67, %46
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %9, align 8
  br label %30

105:                                              ; preds = %30
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %26, %16
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @ieee80211_stop_queue(%struct.ieee80211_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

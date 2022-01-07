; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i64, i64, i32, i32 }
%struct.data_queue = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Configured TX queue %d - CWmin: %d, CWmax: %d, Aifs: %d, TXop: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00mac_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %10 = alloca %struct.rt2x00_dev*, align 8
  %11 = alloca %struct.data_queue*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %9, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %13, align 8
  store %struct.rt2x00_dev* %14, %struct.rt2x00_dev** %10, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %15, i32 %16)
  store %struct.data_queue* %17, %struct.data_queue** %11, align 8
  %18 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %19 = icmp ne %struct.data_queue* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %85

27:                                               ; preds = %4
  %28 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @fls(i64 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %39 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %43

40:                                               ; preds = %27
  %41 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %42 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %41, i32 0, i32 0
  store i32 5, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @fls(i64 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %55 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %59

56:                                               ; preds = %43
  %57 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %58 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %57, i32 0, i32 1
  store i32 10, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %64 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %69 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %73 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %76 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %79 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  %82 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rt2x00_dbg(%struct.rt2x00_dev* %70, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32 %80, i32 %83)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %59, %24
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @fls(i64) #1

declare dso_local i32 @rt2x00_dbg(%struct.rt2x00_dev*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

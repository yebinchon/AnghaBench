; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_sta_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.carl9170_sta_info = type { i32, i32* }
%struct.carl9170_sta_tid = type { i64 }

@CARL9170_TID_STATE_SHUTDOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @carl9170_op_sta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_op_sta_remove(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.ar9170*, align 8
  %8 = alloca %struct.carl9170_sta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.carl9170_sta_tid*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.ar9170*, %struct.ar9170** %13, align 8
  store %struct.ar9170* %14, %struct.ar9170** %7, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.carl9170_sta_info*
  store %struct.carl9170_sta_info* %19, %struct.carl9170_sta_info** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %3
  %26 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %8, align 8
  %27 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %73, %25
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %8, align 8
  %32 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = icmp ult i32 %30, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %29
  %37 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %8, align 8
  %38 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.carl9170_sta_tid* @rcu_dereference(i32 %43)
  store %struct.carl9170_sta_tid* %44, %struct.carl9170_sta_tid** %11, align 8
  %45 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %8, align 8
  %46 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @RCU_INIT_POINTER(i32 %51, i32* null)
  %53 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %11, align 8
  %54 = icmp ne %struct.carl9170_sta_tid* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %36
  br label %73

56:                                               ; preds = %36
  %57 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %58 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_bh(i32* %58)
  %60 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %11, align 8
  %61 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CARL9170_TID_STATE_SHUTDOWN, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i64, i64* @CARL9170_TID_STATE_SHUTDOWN, align 8
  %67 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %11, align 8
  %68 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %56
  %70 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %71 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_bh(i32* %71)
  store i32 1, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %55
  %74 = load i32, i32* %9, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %29

76:                                               ; preds = %29
  %77 = call i32 (...) @rcu_read_unlock()
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %82 = call i32 @carl9170_ampdu_gc(%struct.ar9170* %81)
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83, %3
  ret i32 0
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.carl9170_sta_tid* @rcu_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @carl9170_ampdu_gc(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_get_tsf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_get_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.carl9170_tsf_rsp = type { i32 }

@CARL9170_CMD_READ_TSF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @carl9170_op_get_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_op_get_tsf(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ar9170*, align 8
  %7 = alloca %struct.carl9170_tsf_rsp, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.ar9170*, %struct.ar9170** %10, align 8
  store %struct.ar9170* %11, %struct.ar9170** %6, align 8
  %12 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %13 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %16 = load i32, i32* @CARL9170_CMD_READ_TSF, align 4
  %17 = call i32 @carl9170_exec_cmd(%struct.ar9170* %15, i32 %16, i32 0, i32* null, i32 4, %struct.carl9170_tsf_rsp* %7)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %19 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.carl9170_tsf_rsp, %struct.carl9170_tsf_rsp* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le64_to_cpu(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @carl9170_exec_cmd(%struct.ar9170*, i32, i32, i32*, i32, %struct.carl9170_tsf_rsp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

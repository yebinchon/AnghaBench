; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_main.c_lbtf_bcn_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_main.c_lbtf_bcn_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@lbtf_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbtf_bcn_sent(%struct.lbtf_private* %0) #0 {
  %2 = alloca %struct.lbtf_private*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  %5 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %6 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %15 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %14, i32 0, i32 3
  %16 = call i64 @skb_queue_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %28, %18
  %20 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %21 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %24 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call %struct.sk_buff* @ieee80211_get_buffered_bc(i32 %22, %struct.TYPE_3__* %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %3, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %30 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %29, i32 0, i32 3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i32 @skb_queue_tail(i32* %30, %struct.sk_buff* %31)
  store i32 1, i32* %4, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %38 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ieee80211_stop_queues(i32 %39)
  %41 = load i32, i32* @lbtf_wq, align 4
  %42 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %43 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %42, i32 0, i32 2
  %44 = call i32 @queue_work(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %36, %33
  br label %46

46:                                               ; preds = %45, %13
  %47 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %48 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %51 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call %struct.sk_buff* @ieee80211_beacon_get(i32 %49, %struct.TYPE_3__* %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call i32 @lbtf_beacon_set(%struct.lbtf_private* %57, %struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %12, %56, %46
  ret void
}

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @ieee80211_get_buffered_bc(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @lbtf_beacon_set(%struct.lbtf_private*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, %struct.TYPE_2__*, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@CARL9170_TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*)* @carl9170_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_tx(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %8 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %10 = call i32 @IS_STARTED(%struct.ar9170* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %102

17:                                               ; preds = %1
  %18 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %19 = call i32 @carl9170_usb_handle_tx_err(%struct.ar9170* %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %86, %17
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %23 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %21, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %62, %61, %28
  %30 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %31 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @skb_queue_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %85

39:                                               ; preds = %29
  %40 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %41 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %42 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call %struct.sk_buff* @carl9170_tx_pick_skb(%struct.ar9170* %40, i32* %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %3, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %85

55:                                               ; preds = %39
  %56 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = call i32 @carl9170_tx_ps_drop(%struct.ar9170* %56, %struct.sk_buff* %57)
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %29

62:                                               ; preds = %55
  %63 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call i32 @carl9170_bar_check(%struct.ar9170* %63, %struct.sk_buff* %64)
  %66 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %67 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %66, i32 0, i32 4
  %68 = call i32 @atomic_inc(i32* %67)
  %69 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @__carl9170_get_queue(%struct.ar9170* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %73 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = call i32 @skb_queue_tail(i32* %77, %struct.sk_buff* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = call i32 @carl9170_tx_get_skb(%struct.sk_buff* %80)
  %82 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %84 = call i32 @carl9170_usb_tx(%struct.ar9170* %82, %struct.sk_buff* %83)
  store i32 1, i32* %6, align 4
  br label %29

85:                                               ; preds = %54, %29
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %20

89:                                               ; preds = %20
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %102

93:                                               ; preds = %89
  %94 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %95 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %98 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %97, i32 0, i32 1
  %99 = load i32, i32* @CARL9170_TX_TIMEOUT, align 4
  %100 = call i32 @msecs_to_jiffies(i32 %99)
  %101 = call i32 @ieee80211_queue_delayed_work(%struct.TYPE_2__* %96, i32* %98, i32 %100)
  br label %102

102:                                              ; preds = %93, %92, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_STARTED(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_handle_tx_err(%struct.ar9170*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @carl9170_tx_pick_skb(%struct.ar9170*, i32*) #1

declare dso_local i32 @carl9170_tx_ps_drop(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_bar_check(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__carl9170_get_queue(%struct.ar9170*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_get_skb(%struct.sk_buff*) #1

declare dso_local i32 @carl9170_usb_tx(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

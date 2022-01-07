; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.sk_buff**, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"flushing skb 0x%p\00", align 1
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@FW_TX_CMPLT_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1251_tx_flush(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  br label %6

6:                                                ; preds = %24, %23, %1
  %7 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %8 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %7, i32 0, i32 2
  %9 = call %struct.sk_buff* @skb_dequeue(i32* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %4, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %12)
  store %struct.ieee80211_tx_info* %13, %struct.ieee80211_tx_info** %5, align 8
  %14 = load i32, i32* @DEBUG_TX, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @wl1251_debug(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %15)
  %17 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %6

24:                                               ; preds = %11
  %25 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %26 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @ieee80211_tx_status(i32 %27, %struct.sk_buff* %28)
  br label %6

30:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %74, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @FW_TX_CMPLT_BLOCK_SIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %31
  %36 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %37 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %36, i32 0, i32 0
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %73

44:                                               ; preds = %35
  %45 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %46 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %45, i32 0, i32 0
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %49
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %52)
  store %struct.ieee80211_tx_info* %53, %struct.ieee80211_tx_info** %5, align 8
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %44
  br label %74

61:                                               ; preds = %44
  %62 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %63 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @ieee80211_tx_status(i32 %64, %struct.sk_buff* %65)
  %67 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %68 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %67, i32 0, i32 0
  %69 = load %struct.sk_buff**, %struct.sk_buff*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %69, i64 %71
  store %struct.sk_buff* null, %struct.sk_buff** %72, align 8
  br label %73

73:                                               ; preds = %61, %35
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %31

77:                                               ; preds = %31
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @wl1251_debug(i32, i8*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_status(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

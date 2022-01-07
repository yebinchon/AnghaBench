; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, %struct.sk_buff*)* @wl1251_tx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_tx_frame(%struct.wl1251* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %6, align 8
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %24 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %16
  %32 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @wl1251_acx_default_key(%struct.wl1251* %32, i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %70

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %16
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %43 = call i32 @wl1251_tx_path_status(%struct.wl1251* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %70

48:                                               ; preds = %41
  %49 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %52 = call i32 @wl1251_tx_fill_hdr(%struct.wl1251* %49, %struct.sk_buff* %50, %struct.ieee80211_tx_info* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %70

57:                                               ; preds = %48
  %58 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %61 = call i32 @wl1251_tx_send_packet(%struct.wl1251* %58, %struct.sk_buff* %59, %struct.ieee80211_tx_info* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %68 = call i32 @wl1251_tx_trigger(%struct.wl1251* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %64, %55, %46, %37
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1251_acx_default_key(%struct.wl1251*, i64) #1

declare dso_local i32 @wl1251_tx_path_status(%struct.wl1251*) #1

declare dso_local i32 @wl1251_tx_fill_hdr(%struct.wl1251*, %struct.sk_buff*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @wl1251_tx_send_packet(%struct.wl1251*, %struct.sk_buff*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @wl1251_tx_trigger(%struct.wl1251*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

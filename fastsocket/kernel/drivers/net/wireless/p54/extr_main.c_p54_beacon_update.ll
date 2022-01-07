; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_beacon_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_beacon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i64, i64, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54_common*, %struct.ieee80211_vif*)* @p54_beacon_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_beacon_update(%struct.p54_common* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p54_common*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_tx_control, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %9 = bitcast %struct.ieee80211_tx_control* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %11 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.sk_buff* @ieee80211_beacon_get(i32 %12, %struct.ieee80211_vif* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call i32 @p54_beacon_format_ie_tim(%struct.sk_buff* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %20
  %28 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %29 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = call i32 @p54_tx_80211(i32 %30, %struct.ieee80211_tx_control* %6, %struct.sk_buff* %31)
  %33 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %34 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %36 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %25, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(i32, %struct.ieee80211_vif*) #2

declare dso_local i32 @p54_beacon_format_ie_tim(%struct.sk_buff*) #2

declare dso_local i32 @p54_tx_80211(i32, %struct.ieee80211_tx_control*, %struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

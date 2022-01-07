; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_update_templates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_update_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wl = type { i32, i32, i32, i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wl*)* @b43_update_templates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_update_templates(%struct.b43_wl* %0) #0 {
  %2 = alloca %struct.b43_wl*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.b43_wl* %0, %struct.b43_wl** %2, align 8
  %4 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.sk_buff* @ieee80211_beacon_get(i32 %6, i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %20 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %19, i32 0, i32 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %25 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %24, i32 0, i32 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %27 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %31 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %30, i32 0, i32 4
  store %struct.sk_buff* %29, %struct.sk_buff** %31, align 8
  %32 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %33 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %35 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %37 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %40 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %39, i32 0, i32 2
  %41 = call i32 @ieee80211_queue_work(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %28, %17
  ret void
}

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

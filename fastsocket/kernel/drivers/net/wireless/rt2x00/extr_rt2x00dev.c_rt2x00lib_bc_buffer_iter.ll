; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_bc_buffer_iter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_bc_buffer_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.rt2x00_dev = type { i32 }
%struct.sk_buff = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @rt2x00lib_bc_buffer_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00lib_bc_buffer_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rt2x00_dev*
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %37

17:                                               ; preds = %3
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %19 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = call %struct.sk_buff* @ieee80211_get_buffered_bc(i32 %20, %struct.ieee80211_vif* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %8, align 8
  br label %23

23:                                               ; preds = %26, %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %28 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call i32 @rt2x00mac_tx(i32 %29, i32* null, %struct.sk_buff* %30)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = call %struct.sk_buff* @ieee80211_get_buffered_bc(i32 %34, %struct.ieee80211_vif* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %8, align 8
  br label %23

37:                                               ; preds = %16, %23
  ret void
}

declare dso_local %struct.sk_buff* @ieee80211_get_buffered_bc(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @rt2x00mac_tx(i32, i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

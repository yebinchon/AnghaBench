; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_beacon_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_beacon_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_mac = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i32 }

@ZD_DEVICE_RUNNING = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_mac*)* @zd_beacon_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zd_beacon_done(%struct.zd_mac* %0) #0 {
  %2 = alloca %struct.zd_mac*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.zd_mac* %0, %struct.zd_mac** %2, align 8
  %5 = load i32, i32* @ZD_DEVICE_RUNNING, align 4
  %6 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %7 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %6, i32 0, i32 4
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %77

11:                                               ; preds = %1
  %12 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %13 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %18 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %11
  br label %77

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %44, %25
  %27 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %28 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ieee80211_queue_stopped(i32 %29, i32 0)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %35 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %38 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call %struct.sk_buff* @ieee80211_get_buffered_bc(i32 %36, %struct.TYPE_5__* %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %50

44:                                               ; preds = %33
  %45 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %46 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @zd_op_tx(i32 %47, i32* null, %struct.sk_buff* %48)
  br label %26

50:                                               ; preds = %43, %26
  %51 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %52 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %55 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call %struct.sk_buff* @ieee80211_beacon_get(i32 %53, %struct.TYPE_5__* %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %4, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %62 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @zd_mac_config_beacon(i32 %63, %struct.sk_buff* %64, i32 1)
  br label %66

66:                                               ; preds = %60, %50
  %67 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %68 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %67, i32 0, i32 0
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load i32, i32* @jiffies, align 4
  %71 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %72 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %75 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_irq(i32* %75)
  br label %77

77:                                               ; preds = %66, %24, %10
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_queue_stopped(i32, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_get_buffered_bc(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @zd_op_tx(i32, i32*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @zd_mac_config_beacon(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

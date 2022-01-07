; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hdlcdrv_state = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hdlcdrv_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlcdrv_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hdlcdrv_state*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.hdlcdrv_state* @netdev_priv(%struct.net_device* %5)
  store %struct.hdlcdrv_state* %6, %struct.hdlcdrv_state** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %10 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %15 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %17, align 8
  %19 = icmp ne i32 (%struct.net_device*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %22 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 %25(%struct.net_device* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %20, %13, %1
  %29 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %30 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %35 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @dev_kfree_skb(i32* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %40 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %3, align 8
  %42 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.hdlcdrv_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

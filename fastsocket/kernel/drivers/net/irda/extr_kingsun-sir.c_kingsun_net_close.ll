; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_kingsun-sir.c_kingsun_net_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_kingsun-sir.c_kingsun_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.kingsun_cb = type { i32*, i64, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@OUTSIDE_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @kingsun_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kingsun_net_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.kingsun_cb*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.kingsun_cb* @netdev_priv(%struct.net_device* %4)
  store %struct.kingsun_cb* %5, %struct.kingsun_cb** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %9 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @usb_kill_urb(i32* %10)
  %12 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %13 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @usb_kill_urb(i32* %14)
  %16 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %17 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @usb_free_urb(i32* %18)
  %20 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %21 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @usb_free_urb(i32* %22)
  %24 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %25 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %27 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %29 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree_skb(i32* %31)
  %33 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %34 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %37 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @FALSE, align 4
  %40 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %41 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @OUTSIDE_FRAME, align 4
  %44 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %45 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %48 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %50 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %1
  %54 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %55 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @irlap_close(i32* %56)
  br label %58

58:                                               ; preds = %53, %1
  %59 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %60 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  ret i32 0
}

declare dso_local %struct.kingsun_cb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @irlap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

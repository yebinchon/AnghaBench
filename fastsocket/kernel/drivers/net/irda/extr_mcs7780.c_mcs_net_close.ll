; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_net_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mcs_cb = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mcs_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_net_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mcs_cb*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.mcs_cb* @netdev_priv(%struct.net_device* %5)
  store %struct.mcs_cb* %6, %struct.mcs_cb** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %10 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @kfree_skb(i32 %12)
  %14 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %15 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_kill_urb(i32 %16)
  %18 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %19 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_free_urb(i32 %20)
  %22 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %23 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_kill_urb(i32 %24)
  %26 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %27 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @usb_free_urb(i32 %28)
  %30 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %31 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %36 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @irlap_close(i32* %37)
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %41 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.mcs_cb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @irlap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

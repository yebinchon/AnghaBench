; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_net_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.stir_cb = type { i32*, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @stir_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stir_net_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.stir_cb*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.stir_cb* @netdev_priv(%struct.net_device* %4)
  store %struct.stir_cb* %5, %struct.stir_cb** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %9 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @kthread_stop(i32 %10)
  %12 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %13 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree(i32 %14)
  %16 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %17 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_kill_urb(i32 %18)
  %20 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %21 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %25 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_free_urb(i32 %26)
  %28 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %29 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kfree_skb(i32 %31)
  %33 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %34 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %39 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @irlap_close(i32* %40)
  br label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %44 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  ret i32 0
}

declare dso_local %struct.stir_cb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @irlap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

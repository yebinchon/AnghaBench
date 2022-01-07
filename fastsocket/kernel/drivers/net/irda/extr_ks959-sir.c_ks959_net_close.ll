; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ks959-sir.c_ks959_net_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ks959-sir.c_ks959_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ks959_cb = type { i32*, i64, %struct.TYPE_2__, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@OUTSIDE_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ks959_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks959_net_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ks959_cb*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ks959_cb* @netdev_priv(%struct.net_device* %4)
  store %struct.ks959_cb* %5, %struct.ks959_cb** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %9 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @usb_kill_urb(i32* %10)
  %12 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %13 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @usb_free_urb(i32* %14)
  %16 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %17 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  %18 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %19 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @usb_kill_urb(i32* %20)
  %22 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %23 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @usb_free_urb(i32* %24)
  %26 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %27 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %29 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @usb_kill_urb(i32* %30)
  %32 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %33 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @usb_free_urb(i32* %34)
  %36 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %37 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %39 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree_skb(i32* %41)
  %43 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %44 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  %46 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %47 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %51 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @OUTSIDE_FRAME, align 4
  %54 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %55 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %58 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %60 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %1
  %64 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %65 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @irlap_close(i32* %66)
  br label %68

68:                                               ; preds = %63, %1
  %69 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %70 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  ret i32 0
}

declare dso_local %struct.ks959_cb* @netdev_priv(%struct.net_device*) #1

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

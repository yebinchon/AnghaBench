; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_virtnet_set_tx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_virtnet_set_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.virtnet_info = type { %struct.virtio_device* }
%struct.virtio_device = type { i32 }

@VIRTIO_NET_F_CSUM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @virtnet_set_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtnet_set_tx_csum(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.virtnet_info*, align 8
  %7 = alloca %struct.virtio_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %8)
  store %struct.virtnet_info* %9, %struct.virtnet_info** %6, align 8
  %10 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  %11 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %10, i32 0, i32 0
  %12 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  store %struct.virtio_device* %12, %struct.virtio_device** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %17 = load i32, i32* @VIRTIO_NET_F_CSUM, align 4
  %18 = call i32 @virtio_has_feature(%struct.virtio_device* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %15, %2
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @ethtool_op_set_tx_hw_csum(%struct.net_device* %24, i64 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @virtio_has_feature(%struct.virtio_device*, i32) #1

declare dso_local i32 @ethtool_op_set_tx_hw_csum(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

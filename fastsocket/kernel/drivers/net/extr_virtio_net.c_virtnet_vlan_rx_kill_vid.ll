; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_virtnet_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_virtnet_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.virtnet_info = type { i32 }
%struct.scatterlist = type { i32 }

@VIRTIO_NET_CTRL_VLAN = common dso_local global i32 0, align 4
@VIRTIO_NET_CTRL_VLAN_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to kill VLAN ID %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @virtnet_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtnet_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtnet_info*, align 8
  %6 = alloca %struct.scatterlist, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %7)
  store %struct.virtnet_info* %8, %struct.virtnet_info** %5, align 8
  %9 = call i32 @sg_init_one(%struct.scatterlist* %6, i32* %4, i32 4)
  %10 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  %11 = load i32, i32* @VIRTIO_NET_CTRL_VLAN, align 4
  %12 = load i32, i32* @VIRTIO_NET_CTRL_VLAN_DEL, align 4
  %13 = call i32 @virtnet_send_command(%struct.virtnet_info* %10, i32 %11, i32 %12, %struct.scatterlist* %6, i32 1, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  ret void
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @virtnet_send_command(%struct.virtnet_info*, i32, i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

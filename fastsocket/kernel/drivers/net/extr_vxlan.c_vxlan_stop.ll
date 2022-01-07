; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxlan_net = type { i32 }
%struct.vxlan_dev = type { i32, i32, %struct.TYPE_2__, %struct.vxlan_sock* }
%struct.TYPE_2__ = type { i32 }
%struct.vxlan_sock = type { i32 }

@vxlan_net_id = common dso_local global i32 0, align 4
@vxlan_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vxlan_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vxlan_net*, align 8
  %4 = alloca %struct.vxlan_dev*, align 8
  %5 = alloca %struct.vxlan_sock*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @dev_net(%struct.net_device* %6)
  %8 = load i32, i32* @vxlan_net_id, align 4
  %9 = call %struct.vxlan_net* @net_generic(i32 %7, i32 %8)
  store %struct.vxlan_net* %9, %struct.vxlan_net** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.vxlan_dev* %11, %struct.vxlan_dev** %4, align 8
  %12 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %13 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %12, i32 0, i32 3
  %14 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  store %struct.vxlan_sock* %14, %struct.vxlan_sock** %5, align 8
  %15 = load %struct.vxlan_sock*, %struct.vxlan_sock** %5, align 8
  %16 = icmp ne %struct.vxlan_sock* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %19 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ntohl(i32 %21)
  %23 = call i64 @IN_MULTICAST(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %17
  %26 = load %struct.vxlan_net*, %struct.vxlan_net** %3, align 8
  %27 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %28 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @vxlan_group_used(%struct.vxlan_net* %26, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = load %struct.vxlan_sock*, %struct.vxlan_sock** %5, align 8
  %35 = call i32 @vxlan_sock_hold(%struct.vxlan_sock* %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @dev_hold(%struct.net_device* %36)
  %38 = load i32, i32* @vxlan_wq, align 4
  %39 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %40 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %39, i32 0, i32 1
  %41 = call i32 @queue_work(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %33, %25, %17, %1
  %43 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %44 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %43, i32 0, i32 0
  %45 = call i32 @del_timer_sync(i32* %44)
  %46 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %47 = call i32 @vxlan_flush(%struct.vxlan_dev* %46)
  ret i32 0
}

declare dso_local %struct.vxlan_net* @net_generic(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @IN_MULTICAST(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @vxlan_group_used(%struct.vxlan_net*, i32) #1

declare dso_local i32 @vxlan_sock_hold(%struct.vxlan_sock*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @vxlan_flush(%struct.vxlan_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

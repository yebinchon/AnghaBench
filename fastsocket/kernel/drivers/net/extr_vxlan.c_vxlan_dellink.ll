; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_dellink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxlan_net = type { i32 }
%struct.vxlan_dev = type { i32, i32 }

@vxlan_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @vxlan_dellink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_dellink(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vxlan_net*, align 8
  %4 = alloca %struct.vxlan_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32 @dev_net(%struct.net_device* %5)
  %7 = load i32, i32* @vxlan_net_id, align 4
  %8 = call %struct.vxlan_net* @net_generic(i32 %6, i32 %7)
  store %struct.vxlan_net* %8, %struct.vxlan_net** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.vxlan_dev* %10, %struct.vxlan_dev** %4, align 8
  %11 = load %struct.vxlan_net*, %struct.vxlan_net** %3, align 8
  %12 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %15 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %14, i32 0, i32 1
  %16 = call i32 @hlist_unhashed(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %20 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %19, i32 0, i32 1
  %21 = call i32 @hlist_del_rcu(i32* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.vxlan_net*, %struct.vxlan_net** %3, align 8
  %24 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %27 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %26, i32 0, i32 0
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @unregister_netdevice(%struct.net_device* %29)
  ret void
}

declare dso_local %struct.vxlan_net* @net_generic(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

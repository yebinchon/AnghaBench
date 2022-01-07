; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_dellink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i32, %struct.macvlan_port* }
%struct.macvlan_port = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macvlan_dellink(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.macvlan_dev*, align 8
  %4 = alloca %struct.macvlan_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %5)
  store %struct.macvlan_dev* %6, %struct.macvlan_dev** %3, align 8
  %7 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %8 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %7, i32 0, i32 1
  %9 = load %struct.macvlan_port*, %struct.macvlan_port** %8, align 8
  store %struct.macvlan_port* %9, %struct.macvlan_port** %4, align 8
  %10 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %11 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %10, i32 0, i32 0
  %12 = call i32 @list_del_rcu(i32* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @unregister_netdevice(%struct.net_device* %13)
  %15 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %16 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %15, i32 0, i32 1
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %21 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @macvlan_port_destroy(i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @macvlan_port_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

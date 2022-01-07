; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_del_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_del_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i32 }
%struct.macvtap_queue = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @macvtap_del_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macvtap_del_queues(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.macvlan_dev*, align 8
  %4 = alloca %struct.macvtap_queue*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %5)
  store %struct.macvlan_dev* %6, %struct.macvlan_dev** %3, align 8
  %7 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %8 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.macvtap_queue* @rtnl_dereference(i32 %9)
  store %struct.macvtap_queue* %10, %struct.macvtap_queue** %4, align 8
  %11 = load %struct.macvtap_queue*, %struct.macvtap_queue** %4, align 8
  %12 = icmp ne %struct.macvtap_queue* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %16 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rcu_assign_pointer(i32 %17, i32* null)
  %19 = load %struct.macvtap_queue*, %struct.macvtap_queue** %4, align 8
  %20 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rcu_assign_pointer(i32 %21, i32* null)
  %23 = call i32 (...) @synchronize_rcu()
  %24 = load %struct.macvtap_queue*, %struct.macvtap_queue** %4, align 8
  %25 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %24, i32 0, i32 0
  %26 = call i32 @sock_put(i32* %25)
  br label %27

27:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.macvtap_queue* @rtnl_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @sock_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

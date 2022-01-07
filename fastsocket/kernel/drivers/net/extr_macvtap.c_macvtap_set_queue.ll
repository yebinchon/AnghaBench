; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_set_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_set_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.file = type { %struct.macvtap_queue* }
%struct.macvtap_queue = type { %struct.file*, i32, i32, i32 }
%struct.macvlan_dev = type { %struct.file*, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.file*, %struct.macvtap_queue*)* @macvtap_set_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_set_queue(%struct.net_device* %0, %struct.file* %1, %struct.macvtap_queue* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.macvtap_queue*, align 8
  %7 = alloca %struct.macvlan_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.macvtap_queue* %2, %struct.macvtap_queue** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.macvtap_queue* @netdev_priv(%struct.net_device* %9)
  %11 = bitcast %struct.macvtap_queue* %10 to %struct.macvlan_dev*
  store %struct.macvlan_dev* %11, %struct.macvlan_dev** %7, align 8
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = call i32 (...) @rtnl_lock()
  %15 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %16 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @rtnl_dereference(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %42

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %22 = load %struct.macvtap_queue*, %struct.macvtap_queue** %6, align 8
  %23 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %26 = bitcast %struct.macvlan_dev* %25 to %struct.macvtap_queue*
  %27 = call i32 @rcu_assign_pointer(i32 %24, %struct.macvtap_queue* %26)
  %28 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %29 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.macvtap_queue*, %struct.macvtap_queue** %6, align 8
  %32 = call i32 @rcu_assign_pointer(i32 %30, %struct.macvtap_queue* %31)
  %33 = load %struct.macvtap_queue*, %struct.macvtap_queue** %6, align 8
  %34 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %33, i32 0, i32 1
  %35 = call i32 @sock_hold(i32* %34)
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = load %struct.macvtap_queue*, %struct.macvtap_queue** %6, align 8
  %38 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %37, i32 0, i32 0
  store %struct.file* %36, %struct.file** %38, align 8
  %39 = load %struct.macvtap_queue*, %struct.macvtap_queue** %6, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  store %struct.macvtap_queue* %39, %struct.macvtap_queue** %41, align 8
  br label %42

42:                                               ; preds = %21, %20
  %43 = call i32 (...) @rtnl_unlock()
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local %struct.macvtap_queue* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @rtnl_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.macvtap_queue*) #1

declare dso_local i32 @sock_hold(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

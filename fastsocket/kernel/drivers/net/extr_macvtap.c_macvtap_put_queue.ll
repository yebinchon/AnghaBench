; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_put_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_put_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macvtap_queue = type { i32, i32 }
%struct.macvlan_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macvtap_queue*)* @macvtap_put_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macvtap_put_queue(%struct.macvtap_queue* %0) #0 {
  %2 = alloca %struct.macvtap_queue*, align 8
  %3 = alloca %struct.macvlan_dev*, align 8
  store %struct.macvtap_queue* %0, %struct.macvtap_queue** %2, align 8
  %4 = call i32 (...) @rtnl_lock()
  %5 = load %struct.macvtap_queue*, %struct.macvtap_queue** %2, align 8
  %6 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.macvlan_dev* @rtnl_dereference(i32 %7)
  store %struct.macvlan_dev* %8, %struct.macvlan_dev** %3, align 8
  %9 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %10 = icmp ne %struct.macvlan_dev* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %13 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rcu_assign_pointer(i32 %14, i32* null)
  %16 = load %struct.macvtap_queue*, %struct.macvtap_queue** %2, align 8
  %17 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rcu_assign_pointer(i32 %18, i32* null)
  %20 = load %struct.macvtap_queue*, %struct.macvtap_queue** %2, align 8
  %21 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %20, i32 0, i32 0
  %22 = call i32 @sock_put(i32* %21)
  br label %23

23:                                               ; preds = %11, %1
  %24 = call i32 (...) @rtnl_unlock()
  %25 = call i32 (...) @synchronize_rcu()
  %26 = load %struct.macvtap_queue*, %struct.macvtap_queue** %2, align 8
  %27 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %26, i32 0, i32 0
  %28 = call i32 @sock_put(i32* %27)
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.macvlan_dev* @rtnl_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @sock_put(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

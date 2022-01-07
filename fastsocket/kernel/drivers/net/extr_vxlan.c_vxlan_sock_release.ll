; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_sock_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_sock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_sock = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vxlan_net = type { i32 }

@vxlan_net_id = common dso_local global i32 0, align 4
@vxlan_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxlan_sock_release(%struct.vxlan_sock* %0) #0 {
  %2 = alloca %struct.vxlan_sock*, align 8
  %3 = alloca %struct.vxlan_net*, align 8
  store %struct.vxlan_sock* %0, %struct.vxlan_sock** %2, align 8
  %4 = load %struct.vxlan_sock*, %struct.vxlan_sock** %2, align 8
  %5 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @sock_net(i32 %8)
  %10 = load i32, i32* @vxlan_net_id, align 4
  %11 = call %struct.vxlan_net* @net_generic(i32 %9, i32 %10)
  store %struct.vxlan_net* %11, %struct.vxlan_net** %3, align 8
  %12 = load %struct.vxlan_sock*, %struct.vxlan_sock** %2, align 8
  %13 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %12, i32 0, i32 2
  %14 = call i32 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.vxlan_net*, %struct.vxlan_net** %3, align 8
  %19 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.vxlan_sock*, %struct.vxlan_sock** %2, align 8
  %22 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %21, i32 0, i32 1
  %23 = call i32 @hlist_del_rcu(i32* %22)
  %24 = load %struct.vxlan_net*, %struct.vxlan_net** %3, align 8
  %25 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* @vxlan_wq, align 4
  %28 = load %struct.vxlan_sock*, %struct.vxlan_sock** %2, align 8
  %29 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %28, i32 0, i32 0
  %30 = call i32 @queue_work(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.vxlan_net* @net_generic(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

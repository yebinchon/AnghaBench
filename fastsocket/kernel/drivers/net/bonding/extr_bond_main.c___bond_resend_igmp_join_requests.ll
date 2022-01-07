; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c___bond_resend_igmp_join_requests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c___bond_resend_igmp_join_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in_device = type { %struct.ip_mc_list* }
%struct.ip_mc_list = type { %struct.ip_mc_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__bond_resend_igmp_join_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bond_resend_igmp_join_requests(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.in_device*, align 8
  %4 = alloca %struct.ip_mc_list*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %6)
  store %struct.in_device* %7, %struct.in_device** %3, align 8
  %8 = load %struct.in_device*, %struct.in_device** %3, align 8
  %9 = icmp ne %struct.in_device* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.in_device*, %struct.in_device** %3, align 8
  %12 = getelementptr inbounds %struct.in_device, %struct.in_device* %11, i32 0, i32 0
  %13 = load %struct.ip_mc_list*, %struct.ip_mc_list** %12, align 8
  store %struct.ip_mc_list* %13, %struct.ip_mc_list** %4, align 8
  br label %14

14:                                               ; preds = %20, %10
  %15 = load %struct.ip_mc_list*, %struct.ip_mc_list** %4, align 8
  %16 = icmp ne %struct.ip_mc_list* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.ip_mc_list*, %struct.ip_mc_list** %4, align 8
  %19 = call i32 @ip_mc_rejoin_group(%struct.ip_mc_list* %18)
  br label %20

20:                                               ; preds = %17
  %21 = load %struct.ip_mc_list*, %struct.ip_mc_list** %4, align 8
  %22 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %21, i32 0, i32 0
  %23 = load %struct.ip_mc_list*, %struct.ip_mc_list** %22, align 8
  store %struct.ip_mc_list* %23, %struct.ip_mc_list** %4, align 8
  br label %14

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %1
  %26 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @ip_mc_rejoin_group(%struct.ip_mc_list*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

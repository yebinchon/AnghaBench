; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb_neigh_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb_neigh_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.t3cdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*)* @cxgb_neigh_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb_neigh_update(%struct.neighbour* %0) #0 {
  %2 = alloca %struct.neighbour*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.t3cdev*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %2, align 8
  %5 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %6 = icmp ne %struct.neighbour* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %10 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i64 @is_offloading(%struct.net_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call %struct.t3cdev* @dev2t3cdev(%struct.net_device* %19)
  store %struct.t3cdev* %20, %struct.t3cdev** %4, align 8
  %21 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %22 = icmp ne %struct.t3cdev* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %27 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %28 = call i32 @t3_l2t_update(%struct.t3cdev* %26, %struct.neighbour* %27)
  br label %29

29:                                               ; preds = %7, %18, %14, %8
  ret void
}

declare dso_local i64 @is_offloading(%struct.net_device*) #1

declare dso_local %struct.t3cdev* @dev2t3cdev(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @t3_l2t_update(%struct.t3cdev*, %struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

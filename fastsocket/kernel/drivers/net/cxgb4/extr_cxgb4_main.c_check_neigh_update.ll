; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_check_neigh_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_check_neigh_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.neighbour = type { %struct.net_device* }
%struct.net_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32* }

@IFF_802_1Q_VLAN = common dso_local global i32 0, align 4
@cxgb4_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*)* @check_neigh_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_neigh_update(%struct.neighbour* %0) #0 {
  %2 = alloca %struct.neighbour*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %2, align 8
  %5 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %6 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %5, i32 0, i32 0
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IFF_802_1Q_VLAN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %15)
  store %struct.net_device* %16, %struct.net_device** %4, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %3, align 8
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = icmp ne %struct.device* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxgb4_driver, i32 0, i32 0)
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i32 @dev_get_drvdata(%struct.device* %30)
  %32 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %33 = call i32 @t4_l2t_update(i32 %31, %struct.neighbour* %32)
  br label %34

34:                                               ; preds = %29, %24, %17
  ret void
}

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i32 @t4_l2t_update(i32, %struct.neighbour*) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

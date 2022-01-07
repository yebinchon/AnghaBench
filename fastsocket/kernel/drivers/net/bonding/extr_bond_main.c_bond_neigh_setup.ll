; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_neigh_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_neigh_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.neigh_parms = type { i32 }
%struct.bonding = type { %struct.slave* }
%struct.slave = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.TYPE_2__*, %struct.neigh_parms.0*)* }
%struct.neigh_parms.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.neigh_parms*)* @bond_neigh_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_neigh_setup(%struct.net_device* %0, %struct.neigh_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.neigh_parms*, align 8
  %6 = alloca %struct.bonding*, align 8
  %7 = alloca %struct.slave*, align 8
  %8 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.neigh_parms* %1, %struct.neigh_parms** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bonding* @netdev_priv(%struct.net_device* %9)
  store %struct.bonding* %10, %struct.bonding** %6, align 8
  %11 = load %struct.bonding*, %struct.bonding** %6, align 8
  %12 = getelementptr inbounds %struct.bonding, %struct.bonding* %11, i32 0, i32 0
  %13 = load %struct.slave*, %struct.slave** %12, align 8
  store %struct.slave* %13, %struct.slave** %7, align 8
  %14 = load %struct.slave*, %struct.slave** %7, align 8
  %15 = icmp ne %struct.slave* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load %struct.slave*, %struct.slave** %7, align 8
  %18 = getelementptr inbounds %struct.slave, %struct.slave* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.net_device_ops*, %struct.net_device_ops** %20, align 8
  store %struct.net_device_ops* %21, %struct.net_device_ops** %8, align 8
  %22 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %23 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_2__*, %struct.neigh_parms.0*)*, i32 (%struct.TYPE_2__*, %struct.neigh_parms.0*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_2__*, %struct.neigh_parms.0*)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %16
  %27 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %28 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_2__*, %struct.neigh_parms.0*)*, i32 (%struct.TYPE_2__*, %struct.neigh_parms.0*)** %28, align 8
  %30 = load %struct.slave*, %struct.slave** %7, align 8
  %31 = getelementptr inbounds %struct.slave, %struct.slave* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %34 = bitcast %struct.neigh_parms* %33 to %struct.neigh_parms.0*
  %35 = call i32 %29(%struct.TYPE_2__* %32, %struct.neigh_parms.0* %34)
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

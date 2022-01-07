; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c_setup_sdla.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c_setup_sdla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64, i64, i64, i32* }
%struct.frad_local = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@sdla_netdev_ops = common dso_local global i32 0, align 4
@SDLA_MAX_MTU = common dso_local global i32 0, align 4
@sdla_activate = common dso_local global i32 0, align 4
@sdla_deactivate = common dso_local global i32 0, align 4
@sdla_assoc = common dso_local global i32 0, align 4
@sdla_deassoc = common dso_local global i32 0, align 4
@sdla_dlci_conf = common dso_local global i32 0, align 4
@sdla_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @setup_sdla to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sdla(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.frad_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.frad_local* @netdev_priv(%struct.net_device* %4)
  store %struct.frad_local* %5, %struct.frad_local** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netdev_boot_setup_check(%struct.net_device* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 5
  store i32* @sdla_netdev_ops, i32** %9, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store i32 65535, i32* %13, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @SDLA_MAX_MTU, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @sdla_activate, align 4
  %22 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %23 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @sdla_deactivate, align 4
  %25 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %26 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @sdla_assoc, align 4
  %28 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %29 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @sdla_deassoc, align 4
  %31 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %32 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @sdla_dlci_conf, align 4
  %34 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %35 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %37 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %36, i32 0, i32 0
  %38 = call i32 @init_timer(%struct.TYPE_2__* %37)
  %39 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %40 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = ptrtoint %struct.net_device* %42 to i64
  %44 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %45 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 %43, i64* %46, align 8
  %47 = load i32, i32* @sdla_poll, align 4
  %48 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %49 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  ret void
}

declare dso_local %struct.frad_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_boot_setup_check(%struct.net_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

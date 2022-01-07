; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.nes_vnic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.nes_adapter* }
%struct.nes_adapter = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@DRV_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @nes_netdev_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_netdev_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.nes_vnic*, align 8
  %6 = alloca %struct.nes_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nes_vnic* @netdev_priv(%struct.net_device* %7)
  store %struct.nes_vnic* %8, %struct.nes_vnic** %5, align 8
  %9 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %10 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.nes_adapter*, %struct.nes_adapter** %12, align 8
  store %struct.nes_adapter* %13, %struct.nes_adapter** %6, align 8
  %14 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DRV_NAME, align 4
  %18 = call i32 @strcpy(i32 %16, i32 %17)
  %19 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %23 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pci_name(i32 %26)
  %28 = call i32 @strcpy(i32 %21, i32 %27)
  %29 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nes_adapter*, %struct.nes_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = load %struct.nes_adapter*, %struct.nes_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 255
  %40 = call i32 @sprintf(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39)
  %41 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DRV_VERSION, align 4
  %45 = call i32 @strcpy(i32 %43, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @nes_netdev_get_stats_count(%struct.net_device* %46)
  %48 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  ret void
}

declare dso_local %struct.nes_vnic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @nes_netdev_get_stats_count(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

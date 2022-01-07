; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i64, %struct.nes_adapter* }
%struct.nes_adapter = type { i64*, i32, i32*, i64 }

@NES_PHY_TYPE_PUMA_1G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @nes_netdev_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_netdev_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.nes_vnic*, align 8
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca %struct.nes_adapter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.nes_vnic* @netdev_priv(%struct.net_device* %11)
  store %struct.nes_vnic* %12, %struct.nes_vnic** %5, align 8
  %13 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %14 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %13, i32 0, i32 0
  %15 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  store %struct.nes_device* %15, %struct.nes_device** %6, align 8
  %16 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %17 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %16, i32 0, i32 1
  %18 = load %struct.nes_adapter*, %struct.nes_adapter** %17, align 8
  store %struct.nes_adapter* %18, %struct.nes_adapter** %7, align 8
  %19 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %20 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %2
  %24 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %25 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %28 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NES_PHY_TYPE_PUMA_1G, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %23
  %35 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %36 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %39 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %44 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %43, i32 0, i32 1
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @nes_read_1G_phy_reg(%struct.nes_device* %47, i32 0, i32 %48, i32* %9)
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %34
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, 4864
  store i32 %56, i32* %9, align 4
  br label %60

57:                                               ; preds = %34
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, -4097
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @nes_write_1G_phy_reg(%struct.nes_device* %61, i32 0, i32 %62, i32 %63)
  %65 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %66 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %65, i32 0, i32 1
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %60, %23, %2
  ret i32 0
}

declare dso_local %struct.nes_vnic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nes_read_1G_phy_reg(%struct.nes_device*, i32, i32, i32*) #1

declare dso_local i32 @nes_write_1G_phy_reg(%struct.nes_device*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

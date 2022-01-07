; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { %struct.nes_adapter* }
%struct.nes_adapter = type { i32, i64, i32, i32, i32, %struct.nes_hw_tune_timer }
%struct.nes_hw_tune_timer = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @nes_netdev_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_netdev_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.nes_vnic*, align 8
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca %struct.nes_adapter*, align 8
  %8 = alloca %struct.ethtool_coalesce, align 8
  %9 = alloca %struct.nes_hw_tune_timer*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.nes_vnic* @netdev_priv(%struct.net_device* %11)
  store %struct.nes_vnic* %12, %struct.nes_vnic** %5, align 8
  %13 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %14 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %13, i32 0, i32 0
  %15 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  store %struct.nes_device* %15, %struct.nes_device** %6, align 8
  %16 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %17 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %16, i32 0, i32 0
  %18 = load %struct.nes_adapter*, %struct.nes_adapter** %17, align 8
  store %struct.nes_adapter* %18, %struct.nes_adapter** %7, align 8
  %19 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %20 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %19, i32 0, i32 5
  store %struct.nes_hw_tune_timer* %20, %struct.nes_hw_tune_timer** %9, align 8
  %21 = call i32 @memset(%struct.ethtool_coalesce* %8, i32 0, i32 40)
  %22 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %27 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 8
  store i64 %28, i64* %29, align 8
  %30 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 7
  store i32 %32, i32* %33, align 4
  %34 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 6
  store i32 %36, i32* %37, align 8
  %38 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %38, i32 0, i32 0
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %9, align 8
  %43 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 5
  store i32 %44, i32* %45, align 4
  %46 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %9, align 8
  %47 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %9, align 8
  %51 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %9, align 8
  %55 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %9, align 8
  %59 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %63 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %2
  %67 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %9, align 8
  %68 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %2
  %72 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %73 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %72, i32 0, i32 0
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %77 = call i32 @memcpy(%struct.ethtool_coalesce* %76, %struct.ethtool_coalesce* %8, i32 40)
  ret i32 0
}

declare dso_local %struct.nes_vnic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ethtool_coalesce*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.ethtool_coalesce*, %struct.ethtool_coalesce*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

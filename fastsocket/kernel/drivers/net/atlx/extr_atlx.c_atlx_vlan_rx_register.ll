; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atlx.c_atlx_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atlx.c_atlx_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.atlx_adapter = type { i32, %struct.TYPE_2__, %struct.vlan_group* }
%struct.TYPE_2__ = type { i64 }

@REG_MAC_CTRL = common dso_local global i64 0, align 8
@MAC_CTRL_RMV_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.vlan_group*)* @atlx_vlan_rx_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atlx_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca %struct.atlx_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.atlx_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.atlx_adapter* %9, %struct.atlx_adapter** %5, align 8
  %10 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %15 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %15, i32 0, i32 2
  store %struct.vlan_group* %14, %struct.vlan_group** %16, align 8
  %17 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %18 = icmp ne %struct.vlan_group* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_MAC_CTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @ioread32(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @MAC_CTRL_RMV_VLAN, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG_MAC_CTRL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @iowrite32(i32 %30, i64 %36)
  br label %58

38:                                               ; preds = %2
  %39 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REG_MAC_CTRL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @ioread32(i64 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @MAC_CTRL_RMV_VLAN, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @REG_MAC_CTRL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite32(i32 %50, i64 %56)
  br label %58

58:                                               ; preds = %38, %19
  %59 = load %struct.atlx_adapter*, %struct.atlx_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %59, i32 0, i32 0
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  ret void
}

declare dso_local %struct.atlx_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

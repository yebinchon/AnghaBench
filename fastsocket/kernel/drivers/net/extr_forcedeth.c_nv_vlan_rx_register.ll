; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.fe_priv = type { i32, i32, %struct.vlan_group* }

@NVREG_TXRXCTL_VLANSTRIP = common dso_local global i32 0, align 4
@NVREG_TXRXCTL_VLANINS = common dso_local global i32 0, align 4
@NvRegTxRxControl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.vlan_group*)* @nv_vlan_rx_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca %struct.fe_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.fe_priv* @get_nvpriv(%struct.net_device* %6)
  store %struct.fe_priv* %7, %struct.fe_priv** %5, align 8
  %8 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %9 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %12 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %13 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %12, i32 0, i32 2
  store %struct.vlan_group* %11, %struct.vlan_group** %13, align 8
  %14 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %15 = icmp ne %struct.vlan_group* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @NVREG_TXRXCTL_VLANSTRIP, align 4
  %18 = load i32, i32* @NVREG_TXRXCTL_VLANINS, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %21 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %37

24:                                               ; preds = %2
  %25 = load i32, i32* @NVREG_TXRXCTL_VLANSTRIP, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %28 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @NVREG_TXRXCTL_VLANINS, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %34 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %24, %16
  %38 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %39 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i64 @get_hwbase(%struct.net_device* %41)
  %43 = load i64, i64* @NvRegTxRxControl, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %40, i64 %44)
  %46 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %47 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock_irq(i32* %47)
  ret void
}

declare dso_local %struct.fe_priv* @get_nvpriv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @get_hwbase(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

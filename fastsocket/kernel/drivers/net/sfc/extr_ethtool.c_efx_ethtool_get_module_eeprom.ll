; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32 }
%struct.efx_nic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*, %struct.ethtool_eeprom*, i32*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @efx_ethtool_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.efx_nic*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %10)
  store %struct.efx_nic* %11, %struct.efx_nic** %8, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.efx_nic*, %struct.ethtool_eeprom*, i32*)*, i32 (%struct.efx_nic*, %struct.ethtool_eeprom*, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.efx_nic*, %struct.ethtool_eeprom*, i32*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16, %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %16
  %27 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.efx_nic*, %struct.ethtool_eeprom*, i32*)*, i32 (%struct.efx_nic*, %struct.ethtool_eeprom*, i32*)** %33, align 8
  %35 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 %34(%struct.efx_nic* %35, %struct.ethtool_eeprom* %36, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %26, %23
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_config_intf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_config_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00_intf = type { i32 }
%struct.rt2x00intf_conf = type { i32, i32, i32 }

@CONFIG_UPDATE_TYPE = common dso_local global i32 0, align 4
@PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_HEADER = common dso_local global i32 0, align 4
@BCNCSR1 = common dso_local global i32 0, align 4
@BCNCSR1_PRELOAD = common dso_local global i32 0, align 4
@CSR14 = common dso_local global i32 0, align 4
@CSR14_TSF_SYNC = common dso_local global i32 0, align 4
@CONFIG_UPDATE_MAC = common dso_local global i32 0, align 4
@CSR3 = common dso_local global i32 0, align 4
@CONFIG_UPDATE_BSSID = common dso_local global i32 0, align 4
@CSR5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00_intf*, %struct.rt2x00intf_conf*, i32)* @rt2400pci_config_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2400pci_config_intf(%struct.rt2x00_dev* %0, %struct.rt2x00_intf* %1, %struct.rt2x00intf_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00_intf*, align 8
  %7 = alloca %struct.rt2x00intf_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00_intf* %1, %struct.rt2x00_intf** %6, align 8
  store %struct.rt2x00intf_conf* %2, %struct.rt2x00intf_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @CONFIG_UPDATE_TYPE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  %16 = load i32, i32* @PREAMBLE, align 4
  %17 = load i32, i32* @IEEE80211_HEADER, align 4
  %18 = call i32 @GET_DURATION(i32 %17, i32 20)
  %19 = add i32 %16, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %21 = load i32, i32* @BCNCSR1, align 4
  %22 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %20, i32 %21, i32* %10)
  %23 = load i32, i32* @BCNCSR1_PRELOAD, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @rt2x00_set_field32(i32* %10, i32 %23, i32 %24)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %27 = load i32, i32* @BCNCSR1, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %31 = load i32, i32* @CSR14, align 4
  %32 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %30, i32 %31, i32* %10)
  %33 = load i32, i32* @CSR14_TSF_SYNC, align 4
  %34 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %35 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rt2x00_set_field32(i32* %10, i32 %33, i32 %36)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %39 = load i32, i32* @CSR14, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %15, %4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @CONFIG_UPDATE_MAC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %49 = load i32, i32* @CSR3, align 4
  %50 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %51 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %48, i32 %49, i32 %52, i32 4)
  br label %54

54:                                               ; preds = %47, %42
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @CONFIG_UPDATE_BSSID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %61 = load i32, i32* @CSR5, align 4
  %62 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %63 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %60, i32 %61, i32 %64, i32 4)
  br label %66

66:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @GET_DURATION(i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

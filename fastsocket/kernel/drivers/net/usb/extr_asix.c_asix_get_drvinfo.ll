; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32 }
%struct.usbnet = type { i32 }
%struct.asix_data = type { i32 }

@driver_name = common dso_local global i32 0, align 4
@DRIVER_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @asix_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asix_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.asix_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.usbnet* @netdev_priv(%struct.net_device* %7)
  store %struct.usbnet* %8, %struct.usbnet** %5, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to %struct.asix_data*
  store %struct.asix_data* %11, %struct.asix_data** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %14 = call i32 @usbnet_get_drvinfo(%struct.net_device* %12, %struct.ethtool_drvinfo* %13)
  %15 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @driver_name, align 4
  %19 = call i32 @strncpy(i32 %17, i32 %18, i32 4)
  %20 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DRIVER_VERSION, align 4
  %24 = call i32 @strncpy(i32 %22, i32 %23, i32 4)
  %25 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %26 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usbnet_get_drvinfo(%struct.net_device*, %struct.ethtool_drvinfo*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

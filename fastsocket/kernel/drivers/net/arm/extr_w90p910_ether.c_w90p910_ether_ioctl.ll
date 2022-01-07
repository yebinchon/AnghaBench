; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_ether_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_ether_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.w90p910_ether = type { i32 }
%struct.mii_ioctl_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @w90p910_ether_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w90p910_ether_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.w90p910_ether*, align 8
  %8 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.w90p910_ether* @netdev_priv(%struct.net_device* %9)
  store %struct.w90p910_ether* %10, %struct.w90p910_ether** %7, align 8
  %11 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %12 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %11)
  store %struct.mii_ioctl_data* %12, %struct.mii_ioctl_data** %8, align 8
  %13 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %14 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %13, i32 0, i32 0
  %15 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @generic_mii_ioctl(i32* %14, %struct.mii_ioctl_data* %15, i32 %16, i32* null)
  ret i32 %17
}

declare dso_local %struct.w90p910_ether* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @generic_mii_ioctl(i32*, %struct.mii_ioctl_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

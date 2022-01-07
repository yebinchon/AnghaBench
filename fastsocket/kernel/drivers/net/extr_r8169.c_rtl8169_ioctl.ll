; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.rtl8169_private = type { i32 (%struct.rtl8169_private*, %struct.mii_ioctl_data*, i32)* }
%struct.mii_ioctl_data = type opaque
%struct.mii_ioctl_data.0 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @rtl8169_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8169_private*, align 8
  %8 = alloca %struct.mii_ioctl_data.0*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %9)
  store %struct.rtl8169_private* %10, %struct.rtl8169_private** %7, align 8
  %11 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %12 = call %struct.mii_ioctl_data.0* @if_mii(%struct.ifreq* %11)
  store %struct.mii_ioctl_data.0* %12, %struct.mii_ioctl_data.0** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i64 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %7, align 8
  %18 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %17, i32 0, i32 0
  %19 = load i32 (%struct.rtl8169_private*, %struct.mii_ioctl_data*, i32)*, i32 (%struct.rtl8169_private*, %struct.mii_ioctl_data*, i32)** %18, align 8
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %7, align 8
  %21 = load %struct.mii_ioctl_data.0*, %struct.mii_ioctl_data.0** %8, align 8
  %22 = bitcast %struct.mii_ioctl_data.0* %21 to %struct.mii_ioctl_data*
  %23 = load i32, i32* %6, align 4
  %24 = call i32 %19(%struct.rtl8169_private* %20, %struct.mii_ioctl_data* %22, i32 %23)
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  br label %28

28:                                               ; preds = %25, %16
  %29 = phi i32 [ %24, %16 ], [ %27, %25 ]
  ret i32 %29
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data.0* @if_mii(%struct.ifreq*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

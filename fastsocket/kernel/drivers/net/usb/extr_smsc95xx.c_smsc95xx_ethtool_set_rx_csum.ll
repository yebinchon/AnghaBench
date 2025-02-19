; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_ethtool_set_rx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_ethtool_set_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i64* }
%struct.smsc95xx_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @smsc95xx_ethtool_set_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_ethtool_set_rx_csum(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.smsc95xx_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.usbnet* @netdev_priv(%struct.net_device* %7)
  store %struct.usbnet* %8, %struct.usbnet** %5, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %14, %struct.smsc95xx_priv** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %6, align 8
  %21 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %23 = call i32 @smsc95xx_set_csums(%struct.usbnet* %22)
  ret i32 %23
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc95xx_set_csums(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

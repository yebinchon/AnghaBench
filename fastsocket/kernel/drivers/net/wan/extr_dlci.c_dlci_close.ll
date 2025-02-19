; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dlci.c_dlci_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dlci.c_dlci_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dlci_local = type { %struct.net_device* }
%struct.frad_local = type { i32 (%struct.net_device*, %struct.net_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dlci_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlci_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dlci_local*, align 8
  %4 = alloca %struct.frad_local*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i8* @netdev_priv(%struct.net_device* %8)
  %10 = bitcast i8* %9 to %struct.dlci_local*
  store %struct.dlci_local* %10, %struct.dlci_local** %3, align 8
  %11 = load %struct.dlci_local*, %struct.dlci_local** %3, align 8
  %12 = getelementptr inbounds %struct.dlci_local, %struct.dlci_local* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = call i8* @netdev_priv(%struct.net_device* %13)
  %15 = bitcast i8* %14 to %struct.frad_local*
  store %struct.frad_local* %15, %struct.frad_local** %4, align 8
  %16 = load %struct.frad_local*, %struct.frad_local** %4, align 8
  %17 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %16, i32 0, i32 0
  %18 = load i32 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.net_device*, %struct.net_device*)** %17, align 8
  %19 = load %struct.dlci_local*, %struct.dlci_local** %3, align 8
  %20 = getelementptr inbounds %struct.dlci_local, %struct.dlci_local* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 %18(%struct.net_device* %21, %struct.net_device* %22)
  store i32 %23, i32* %5, align 4
  ret i32 0
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i8* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_t1_set_rxmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_t1_set_rxmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.cmac* }
%struct.cmac = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.cmac*, %struct.t1_rx_mode*)* }
%struct.t1_rx_mode = type { i32, i64, %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @t1_set_rxmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t1_set_rxmode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cmac*, align 8
  %5 = alloca %struct.t1_rx_mode, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 2
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.cmac*, %struct.cmac** %16, align 8
  store %struct.cmac* %17, %struct.cmac** %4, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.t1_rx_mode, %struct.t1_rx_mode* %5, i32 0, i32 2
  store %struct.net_device* %18, %struct.net_device** %19, align 8
  %20 = getelementptr inbounds %struct.t1_rx_mode, %struct.t1_rx_mode* %5, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.t1_rx_mode, %struct.t1_rx_mode* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.cmac*, %struct.cmac** %4, align 8
  %26 = getelementptr inbounds %struct.cmac, %struct.cmac* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.cmac*, %struct.t1_rx_mode*)*, i32 (%struct.cmac*, %struct.t1_rx_mode*)** %28, align 8
  %30 = load %struct.cmac*, %struct.cmac** %4, align 8
  %31 = call i32 %29(%struct.cmac* %30, %struct.t1_rx_mode* %5)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

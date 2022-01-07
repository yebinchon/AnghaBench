; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_cxgb_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_cxgb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.adapter* }
%struct.adapter = type { i32, i32, %struct.TYPE_4__, i32, %struct.port_info* }
%struct.TYPE_4__ = type { i64 }
%struct.port_info = type { %struct.cmac* }
%struct.cmac = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.cmac*, i32)* }

@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cxgb_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.cmac*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 1
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 4
  %11 = load %struct.port_info*, %struct.port_info** %10, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i64 %14
  store %struct.port_info* %15, %struct.port_info** %4, align 8
  %16 = load %struct.port_info*, %struct.port_info** %4, align 8
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 0
  %18 = load %struct.cmac*, %struct.cmac** %17, align 8
  store %struct.cmac* %18, %struct.cmac** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @netif_stop_queue(%struct.net_device* %19)
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 3
  %23 = call i32 @napi_disable(i32* %22)
  %24 = load %struct.cmac*, %struct.cmac** %5, align 8
  %25 = getelementptr inbounds %struct.cmac, %struct.cmac* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.cmac*, i32)*, i32 (%struct.cmac*, i32)** %27, align 8
  %29 = load %struct.cmac*, %struct.cmac** %5, align 8
  %30 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %31 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %32 = or i32 %30, %31
  %33 = call i32 %28(%struct.cmac* %29, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @netif_carrier_off(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = call i32 @clear_bit(i64 %38, i32* %40)
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %1
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PORT_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %47
  %55 = call i32 (...) @smp_mb__after_clear_bit()
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 1
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = call i32 @cancel_mac_stats_update(%struct.adapter* %62)
  br label %64

64:                                               ; preds = %54, %47, %1
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = call i32 @cxgb_down(%struct.adapter* %70)
  br label %72

72:                                               ; preds = %69, %64
  ret i32 0
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cancel_mac_stats_update(%struct.adapter*) #1

declare dso_local i32 @cxgb_down(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

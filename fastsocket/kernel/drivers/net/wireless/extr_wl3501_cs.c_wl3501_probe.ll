; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_8__, %struct.net_device*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.net_device*, i32, i32 }
%struct.net_device = type { i32, i32*, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.wl3501_card = type { %struct.TYPE_7__, %struct.pcmcia_device*, i32 }

@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@IRQ_TYPE_DYNAMIC_SHARING = common dso_local global i32 0, align 4
@IRQ_HANDLE_PRESENT = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@wl3501_interrupt = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@wl3501_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@wl3501_handler_def = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @wl3501_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wl3501_card*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 16, i32* %8, align 4
  %9 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 5, i32* %15, align 4
  %16 = load i32, i32* @IRQ_TYPE_DYNAMIC_SHARING, align 4
  %17 = load i32, i32* @IRQ_HANDLE_PRESENT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @wl3501_interrupt, align 4
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %32 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %39 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = call %struct.net_device* @alloc_etherdev(i32 24)
  store %struct.net_device* %41, %struct.net_device** %4, align 8
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = icmp ne %struct.net_device* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %1
  br label %80

45:                                               ; preds = %1
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 3
  store i32* @wl3501_netdev_ops, i32** %47, align 8
  %48 = load i32, i32* @HZ, align 4
  %49 = mul nsw i32 5, %48
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call %struct.wl3501_card* @netdev_priv(%struct.net_device* %52)
  store %struct.wl3501_card* %53, %struct.wl3501_card** %5, align 8
  %54 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %55 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %54, i32 0, i32 2
  %56 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %57 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %60 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %61 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %60, i32 0, i32 1
  store %struct.pcmcia_device* %59, %struct.pcmcia_device** %61, align 8
  %62 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %63 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %62, i32 0, i32 0
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 2
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  store i32* @wl3501_handler_def, i32** %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %68, i32* @ops)
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = call i32 @netif_stop_queue(%struct.net_device* %70)
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %74 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store %struct.net_device* %72, %struct.net_device** %75, align 8
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %77 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %76, i32 0, i32 1
  store %struct.net_device* %72, %struct.net_device** %77, align 8
  %78 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %79 = call i32 @wl3501_config(%struct.pcmcia_device* %78)
  store i32 %79, i32* %2, align 4
  br label %83

80:                                               ; preds = %44
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %45
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.wl3501_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @wl3501_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

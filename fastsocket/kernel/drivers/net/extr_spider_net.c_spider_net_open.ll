; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.spider_net_card = type { i32, i32, i32, i32, i32*, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@BCM54XX_COPPER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SPIDER_NET_ANEG_TIMER = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@spider_net_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spider_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.spider_net_card* @netdev_priv(%struct.net_device* %6)
  store %struct.spider_net_card* %7, %struct.spider_net_card** %4, align 8
  %8 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %9 = call i32 @spider_net_init_firmware(%struct.spider_net_card* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %104

13:                                               ; preds = %1
  %14 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %15 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @BCM54XX_COPPER, align 4
  %17 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %18 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %20 = call i32 @spider_net_setup_aneg(%struct.spider_net_card* %19)
  %21 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %22 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %13
  %29 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %30 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %29, i32 0, i32 0
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* @SPIDER_NET_ANEG_TIMER, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @mod_timer(i32* %30, i64 %33)
  br label %35

35:                                               ; preds = %28, %13
  %36 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %37 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %38 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %37, i32 0, i32 1
  %39 = call i32 @spider_net_init_chain(%struct.spider_net_card* %36, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %100

43:                                               ; preds = %35
  %44 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %45 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %44, i32 0, i32 4
  store i32* null, i32** %45, align 8
  %46 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %47 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %48 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %47, i32 0, i32 2
  %49 = call i32 @spider_net_init_chain(%struct.spider_net_card* %46, i32* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %95

53:                                               ; preds = %43
  %54 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %55 = call i64 @spider_net_alloc_rx_skbs(%struct.spider_net_card* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %90

58:                                               ; preds = %53
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @spider_net_set_multi(%struct.net_device* %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @spider_net_interrupt, align 4
  %67 = load i32, i32* @IRQF_SHARED, align 4
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i64 @request_irq(i32 %65, i32 %66, i32 %67, i32 %70, %struct.net_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %87

75:                                               ; preds = %58
  %76 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %77 = call i32 @spider_net_enable_card(%struct.spider_net_card* %76)
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i32 @netif_start_queue(%struct.net_device* %78)
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = call i32 @netif_carrier_on(%struct.net_device* %80)
  %82 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %83 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %82, i32 0, i32 3
  %84 = call i32 @napi_enable(i32* %83)
  %85 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %86 = call i32 @spider_net_enable_interrupts(%struct.spider_net_card* %85)
  store i32 0, i32* %2, align 4
  br label %106

87:                                               ; preds = %74
  %88 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %89 = call i32 @spider_net_free_rx_chain_contents(%struct.spider_net_card* %88)
  br label %90

90:                                               ; preds = %87, %57
  %91 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %92 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %93 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %92, i32 0, i32 2
  %94 = call i32 @spider_net_free_chain(%struct.spider_net_card* %91, i32* %93)
  br label %95

95:                                               ; preds = %90, %52
  %96 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %97 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %98 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %97, i32 0, i32 1
  %99 = call i32 @spider_net_free_chain(%struct.spider_net_card* %96, i32* %98)
  br label %100

100:                                              ; preds = %95, %42
  %101 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %102 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %101, i32 0, i32 0
  %103 = call i32 @del_timer_sync(i32* %102)
  br label %104

104:                                              ; preds = %100, %12
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %75
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.spider_net_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spider_net_init_firmware(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_setup_aneg(%struct.spider_net_card*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spider_net_init_chain(%struct.spider_net_card*, i32*) #1

declare dso_local i64 @spider_net_alloc_rx_skbs(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_set_multi(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @spider_net_enable_card(%struct.spider_net_card*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @spider_net_enable_interrupts(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_free_rx_chain_contents(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_free_chain(%struct.spider_net_card*, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

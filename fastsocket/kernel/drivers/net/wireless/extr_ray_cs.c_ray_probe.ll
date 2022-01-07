; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_ray_cs.c_ray_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_ray_cs.c_ray_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_9__, %struct.net_device*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, %struct.net_device*, i32*, i32 }
%struct.net_device = type { %struct.TYPE_10__*, i32*, i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, i64, i32, i32, %struct.pcmcia_device* }

@.str = private unnamed_addr constant [14 x i8] c"ray_attach()\0A\00", align 1
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@IRQ_TYPE_DYNAMIC_SHARING = common dso_local global i32 0, align 4
@IRQ_HANDLE_PRESENT = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@ray_interrupt = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@CARD_INSERTED = common dso_local global i32 0, align 4
@UNAUTHENTICATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"ray_attach p_dev = %p,  dev = %p,  local = %p, intr = %p\0A\00", align 1
@ray_netdev_ops = common dso_local global i32 0, align 4
@netdev_ethtool_ops = common dso_local global i32 0, align 4
@ray_handler_def = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"ray_cs ray_attach calling ether_setup.)\0A\00", align 1
@this_device = common dso_local global %struct.pcmcia_device* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @ray_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ray_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.net_device* @alloc_etherdev(i32 48)
  store %struct.net_device* %7, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %88

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.TYPE_11__* @netdev_priv(%struct.net_device* %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 6
  store %struct.pcmcia_device* %14, %struct.pcmcia_device** %16, align 8
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 5, i32* %26, align 8
  %27 = load i32, i32* @IRQ_TYPE_DYNAMIC_SHARING, align 4
  %28 = load i32, i32* @IRQ_HANDLE_PRESENT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 8
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %38 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i32* @ray_interrupt, i32** %39, align 8
  %40 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %45 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %46 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 1
  store %struct.net_device* %51, %struct.net_device** %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %56 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store %struct.net_device* %54, %struct.net_device** %57, align 8
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 6
  store %struct.pcmcia_device* %58, %struct.pcmcia_device** %60, align 8
  %61 = load i32, i32* @CARD_INSERTED, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @UNAUTHENTICATED, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), %struct.pcmcia_device* %69, %struct.net_device* %70, %struct.TYPE_11__* %71, i32* @ray_interrupt)
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 2
  store i32* @ray_netdev_ops, i32** %74, align 8
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %75, i32* @netdev_ethtool_ops)
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 1
  store i32* @ray_handler_def, i32** %78, align 8
  %79 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = call i32 @netif_stop_queue(%struct.net_device* %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = call i32 @init_timer(i32* %83)
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  store %struct.pcmcia_device* %85, %struct.pcmcia_device** @this_device, align 8
  %86 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %87 = call i32 @ray_config(%struct.pcmcia_device* %86)
  store i32 %87, i32* %2, align 4
  br label %91

88:                                               ; preds = %10
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %11
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.TYPE_11__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @ray_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

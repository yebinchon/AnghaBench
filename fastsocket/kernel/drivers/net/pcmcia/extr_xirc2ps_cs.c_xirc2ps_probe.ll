; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_xirc2ps_cs.c_xirc2ps_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_xirc2ps_cs.c_xirc2ps_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.net_device* }
%struct.TYPE_6__ = type { %struct.net_device*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.net_device = type { i32, i32*, i32* }
%struct.TYPE_7__ = type { i32, %struct.pcmcia_device*, %struct.net_device* }

@.str = private unnamed_addr constant [10 x i8] c"attach()\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@xirc2ps_interrupt = common dso_local global i32 0, align 4
@netdev_ops = common dso_local global i32 0, align 4
@netdev_ethtool_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@xirc2ps_tx_timeout_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @xirc2ps_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xirc2ps_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.net_device* @alloc_etherdev(i32 24)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  store %struct.net_device* %16, %struct.net_device** %18, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store %struct.pcmcia_device* %19, %struct.pcmcia_device** %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %23, i32 0, i32 2
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  %25 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @xirc2ps_interrupt, align 4
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %38 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store %struct.net_device* %40, %struct.net_device** %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 2
  store i32* @netdev_ops, i32** %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  store i32* @netdev_ethtool_ops, i32** %47, align 8
  %48 = load i32, i32* @TX_TIMEOUT, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* @xirc2ps_tx_timeout_task, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %56 = call i32 @xirc2ps_config(%struct.pcmcia_device* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %13, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @xirc2ps_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

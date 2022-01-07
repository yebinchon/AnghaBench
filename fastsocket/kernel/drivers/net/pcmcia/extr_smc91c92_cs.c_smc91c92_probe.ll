; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc91c92_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc91c92_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.net_device* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.net_device*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.net_device = type { i32, i32* }
%struct.smc_private = type { %struct.TYPE_8__, i32, %struct.pcmcia_device* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.net_device* }

@.str = private unnamed_addr constant [19 x i8] c"smc91c92_attach()\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@IRQ_TYPE_DYNAMIC_SHARING = common dso_local global i32 0, align 4
@IRQ_HANDLE_PRESENT = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@smc_interrupt = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@smc_netdev_ops = common dso_local global i32 0, align 4
@ethtool_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@mdio_read = common dso_local global i32 0, align 4
@mdio_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @smc91c92_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc91c92_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.net_device* @alloc_etherdev(i32 40)
  store %struct.net_device* %7, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %87

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.smc_private* @netdev_priv(%struct.net_device* %14)
  store %struct.smc_private* %15, %struct.smc_private** %4, align 8
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %17 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %18 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %17, i32 0, i32 2
  store %struct.pcmcia_device* %16, %struct.pcmcia_device** %18, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %20, i32 0, i32 3
  store %struct.net_device* %19, %struct.net_device** %21, align 8
  %22 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %23 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %26 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 16, i32* %27, align 8
  %28 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %33 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 4, i32* %34, align 4
  %35 = load i32, i32* @IRQ_TYPE_DYNAMIC_SHARING, align 4
  %36 = load i32, i32* @IRQ_HANDLE_PRESENT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %39 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %46 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32* @smc_interrupt, i32** %47, align 8
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store %struct.net_device* %48, %struct.net_device** %51, align 8
  %52 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %54 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %57 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %58 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  store i32* @smc_netdev_ops, i32** %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %62, i32* @ethtool_ops)
  %64 = load i32, i32* @TX_TIMEOUT, align 4
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %69 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  store %struct.net_device* %67, %struct.net_device** %70, align 8
  %71 = load i32, i32* @mdio_read, align 4
  %72 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %73 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @mdio_write, align 4
  %76 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %77 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %80 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 31, i32* %81, align 8
  %82 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %83 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 31, i32* %84, align 4
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %86 = call i32 @smc91c92_config(%struct.pcmcia_device* %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %13, %10
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @smc91c92_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

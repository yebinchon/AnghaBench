; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_nmclan_cs.c_nmclan_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_nmclan_cs.c_nmclan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.net_device* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.net_device*, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.net_device = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32, %struct.pcmcia_device* }

@.str = private unnamed_addr constant [17 x i8] c"nmclan_attach()\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@rcsid = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@IRQ_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@IRQ_HANDLE_PRESENT = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@mace_interrupt = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@PRESENT_OPTION = common dso_local global i32 0, align 4
@AM2150_MAX_TX_FRAMES = common dso_local global i32 0, align 4
@mace_netdev_ops = common dso_local global i32 0, align 4
@netdev_ethtool_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @nmclan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmclan_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = call i32 (i32, i8*, ...) @DEBUG(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @rcsid, align 4
  %8 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = call %struct.net_device* @alloc_etherdev(i32 16)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.TYPE_9__* @netdev_priv(%struct.net_device* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store %struct.pcmcia_device* %18, %struct.pcmcia_device** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 3
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %32 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 5, i32* %36, align 4
  %37 = load i32, i32* @IRQ_TYPE_EXCLUSIVE, align 4
  %38 = load i32, i32* @IRQ_HANDLE_PRESENT, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %45 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %48 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i32* @mace_interrupt, i32** %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %52 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store %struct.net_device* %50, %struct.net_device** %53, align 8
  %54 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %56 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %60 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %63 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @PRESENT_OPTION, align 4
  %66 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %67 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @AM2150_MAX_TX_FRAMES, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  store i32* @mace_netdev_ops, i32** %73, align 8
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %74, i32* @netdev_ethtool_ops)
  %76 = load i32, i32* @TX_TIMEOUT, align 4
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %80 = call i32 @nmclan_config(%struct.pcmcia_device* %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %15, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.TYPE_9__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @nmclan_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

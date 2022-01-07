; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_com20020_cs.c_com20020_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_com20020_cs.c_com20020_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.net_device* }
%struct.net_device = type { i32* }
%struct.TYPE_11__ = type { %struct.net_device*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.arcnet_local = type { i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"com20020_attach()\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@timeout = common dso_local global i32 0, align 4
@backplane = common dso_local global i32 0, align 4
@clockp = common dso_local global i32 0, align 4
@clockm = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@node = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@IRQ_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @com20020_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @com20020_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.arcnet_local*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_12__* @kzalloc(i32 4, i32 %8)
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %83

13:                                               ; preds = %1
  %14 = call %struct.net_device* @alloc_arcdev(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %80

18:                                               ; preds = %13
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %19)
  store %struct.arcnet_local* %20, %struct.arcnet_local** %6, align 8
  %21 = load i32, i32* @timeout, align 4
  %22 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %23 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @backplane, align 4
  %25 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %26 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @clockp, align 4
  %28 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %29 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @clockm, align 4
  %31 = and i32 %30, 3
  %32 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %33 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @THIS_MODULE, align 4
  %35 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %36 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @node, align 4
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %45 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %48 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 16, i32* %49, align 8
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %51 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32 16, i32* %52, align 4
  %53 = load i32, i32* @IRQ_TYPE_EXCLUSIVE, align 4
  %54 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %55 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %63 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %66 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %67 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store %struct.net_device* %69, %struct.net_device** %71, align 8
  %72 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %73 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store %struct.net_device* %69, %struct.net_device** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %77 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %76, i32 0, i32 0
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %77, align 8
  %78 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %79 = call i32 @com20020_config(%struct.pcmcia_device* %78)
  store i32 %79, i32* %2, align 4
  br label %86

80:                                               ; preds = %17
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = call i32 @kfree(%struct.TYPE_12__* %81)
  br label %83

83:                                               ; preds = %80, %12
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %18
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @kzalloc(i32, i32) #1

declare dso_local %struct.net_device* @alloc_arcdev(i8*) #1

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @com20020_config(%struct.pcmcia_device*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

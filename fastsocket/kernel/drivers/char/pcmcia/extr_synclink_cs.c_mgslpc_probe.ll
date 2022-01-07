; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.pcmcia_device*, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32* }

@debug_level = common dso_local global i64 0, align 8
@DEBUG_LEVEL_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"mgslpc_attach\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Error can't allocate device instance data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MGSLPC_MAGIC = common dso_local global i32 0, align 4
@mgslpc_port_ops = common dso_local global i32 0, align 4
@bh_handler = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@default_params = common dso_local global i32 0, align 4
@HDLC_TXIDLE_FLAGS = common dso_local global i32 0, align 4
@IRQ_TYPE_DYNAMIC_SHARING = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @mgslpc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgslpc_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load i64, i64* @debug_level, align 8
  %7 = load i64, i64* @DEBUG_LEVEL_INFO, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_9__* @kzalloc(i32 72, i32 %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %104

20:                                               ; preds = %11
  %21 = load i32, i32* @MGSLPC_MAGIC, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 13
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 11
  %26 = call i32 @tty_port_init(%struct.TYPE_10__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  store i32* @mgslpc_port_ops, i32** %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 12
  %32 = load i32, i32* @bh_handler, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 4096, i32* %35, align 8
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 5, %36
  %38 = sdiv i32 %37, 10
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 11
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 30, %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 11
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 10
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 9
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 8
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 7
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 6
  %61 = call i32 @memcpy(i32* %60, i32* @default_params, i32 4)
  %62 = load i32, i32* @HDLC_TXIDLE_FLAGS, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 65535, i32* %66, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i32 65535, i32* %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  store i32 255, i32* %70, align 4
  %71 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  store %struct.pcmcia_device* %71, %struct.pcmcia_device** %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %76 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %75, i32 0, i32 2
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %76, align 8
  %77 = load i32, i32* @IRQ_TYPE_DYNAMIC_SHARING, align 4
  %78 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %79 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %82 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %83 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %86 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  %88 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %89 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %92 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %93 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %96 = call i32 @mgslpc_config(%struct.pcmcia_device* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %20
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %104

101:                                              ; preds = %20
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = call i32 @mgslpc_add_device(%struct.TYPE_9__* %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %101, %99, %16
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.TYPE_9__* @kzalloc(i32, i32) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_10__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mgslpc_config(%struct.pcmcia_device*) #1

declare dso_local i32 @mgslpc_add_device(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

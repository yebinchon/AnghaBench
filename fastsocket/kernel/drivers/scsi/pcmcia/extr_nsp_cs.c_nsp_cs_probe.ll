; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.pcmcia_device* }
%struct.pcmcia_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.pcmcia_device*, %struct.pcmcia_device* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.pcmcia_device*, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@nsp_data_base = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@NSP_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"info=0x%p\00", align 1
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@IRQ_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@IRQ_HANDLE_PRESENT = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@nspintr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"link=0x%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @nsp_cs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_cs_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  store %struct.TYPE_9__* @nsp_data_base, %struct.TYPE_9__** %5, align 8
  %7 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %8 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pcmcia_device* @kzalloc(i32 72, i32 %9)
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %4, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %12 = icmp eq %struct.pcmcia_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %76

16:                                               ; preds = %1
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 4
  store %struct.pcmcia_device* %17, %struct.pcmcia_device** %19, align 8
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 3
  store %struct.pcmcia_device* %20, %struct.pcmcia_device** %22, align 8
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store %struct.pcmcia_device* %23, %struct.pcmcia_device** %25, align 8
  %26 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %28 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.pcmcia_device* %27)
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 16, i32* %31, align 8
  %32 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 10, i32* %38, align 4
  %39 = load i32, i32* @IRQ_TYPE_EXCLUSIVE, align 4
  %40 = load i32, i32* @IRQ_HANDLE_PRESENT, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %47 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32* @nspintr, i32** %51, align 8
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %54 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store %struct.pcmcia_device* %52, %struct.pcmcia_device** %55, align 8
  %56 = load i32, i32* @IRQF_SHARED, align 4
  %57 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %58 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %63 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %64 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %67 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %68 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %71 = call i32 @nsp_cs_config(%struct.pcmcia_device* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %73 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %74 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.pcmcia_device* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %16, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @nsp_dbg(i32, i8*, ...) #1

declare dso_local %struct.pcmcia_device* @kzalloc(i32, i32) #1

declare dso_local i32 @nsp_cs_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

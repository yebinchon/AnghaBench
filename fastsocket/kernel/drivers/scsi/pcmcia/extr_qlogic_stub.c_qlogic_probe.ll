; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_qlogic_stub.c_qlogic_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_qlogic_stub.c_qlogic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.pcmcia_device* }

@.str = private unnamed_addr constant [17 x i8] c"qlogic_attach()\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@IRQ_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@PRESENT_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @qlogic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlogic_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %5 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.TYPE_9__* @kzalloc(i32 8, i32 %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store %struct.pcmcia_device* %14, %struct.pcmcia_device** %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 3
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %19, align 8
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 16, i32* %22, align 4
  %23 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 10, i32* %29, align 4
  %30 = load i32, i32* @IRQ_TYPE_EXCLUSIVE, align 4
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %32 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %40 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @PRESENT_OPTION, align 4
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %48 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %51 = call i32 @qlogic_config(%struct.pcmcia_device* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %13, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @kzalloc(i32, i32) #1

declare dso_local i32 @qlogic_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

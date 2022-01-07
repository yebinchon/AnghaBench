; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_cs.c_serial_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_cs.c_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.serial_info* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.serial_info = type { %struct.pcmcia_device* }

@.str = private unnamed_addr constant [17 x i8] c"serial_attach()\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@IRQ_TYPE_DYNAMIC_SHARING = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@do_sound = common dso_local global i64 0, align 8
@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@CCSR_AUDIO_ENA = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.serial_info*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %5 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.serial_info* @kzalloc(i32 8, i32 %6)
  store %struct.serial_info* %7, %struct.serial_info** %4, align 8
  %8 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %9 = icmp ne %struct.serial_info* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %16 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %15, i32 0, i32 0
  store %struct.pcmcia_device* %14, %struct.pcmcia_device** %16, align 8
  %17 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 3
  store %struct.serial_info* %17, %struct.serial_info** %19, align 8
  %20 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 8, i32* %26, align 4
  %27 = load i32, i32* @IRQ_TYPE_DYNAMIC_SHARING, align 4
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %29 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %33 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i64, i64* @do_sound, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %13
  %42 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @CCSR_AUDIO_ENA, align 4
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %41, %13
  %53 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %54 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %55 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %58 = call i32 @serial_config(%struct.pcmcia_device* %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %52, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local %struct.serial_info* @kzalloc(i32, i32) #1

declare dso_local i32 @serial_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

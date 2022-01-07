; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [65 x i8] c"rtd520: Acquisition canceled. %ld ints, intStat=%x, overStat=%x\0A\00", align 1
@DMA0_ACTIVE = common dso_local global i32 0, align 4
@ICS_DMA0_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @rtd_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = call i32 @RtdPacerStopSource(%struct.comedi_device* %6, i32 0)
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = call i32 @RtdPacerStop(%struct.comedi_device* %8)
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = call i32 @RtdAdcConversionSource(%struct.comedi_device* %10, i32 0)
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = call i32 @RtdInterruptMask(%struct.comedi_device* %12, i32 0)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = call i32 @RtdInterruptStatus(%struct.comedi_device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %23 = call i32 @RtdInterruptOverrunStatus(%struct.comedi_device* %22)
  %24 = and i32 65535, %23
  %25 = call i32 @DPRINTK(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %24)
  ret i32 0
}

declare dso_local i32 @RtdPacerStopSource(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdPacerStop(%struct.comedi_device*) #1

declare dso_local i32 @RtdAdcConversionSource(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdInterruptMask(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdInterruptStatus(%struct.comedi_device*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32) #1

declare dso_local i32 @RtdInterruptOverrunStatus(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

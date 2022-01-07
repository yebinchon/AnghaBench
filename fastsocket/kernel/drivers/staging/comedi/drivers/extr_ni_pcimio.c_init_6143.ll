; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcimio.c_init_6143.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcimio.c_init_6143.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }
%struct.TYPE_4__ = type { i32 }

@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@Interrupt_Control_Register = common dso_local global i32 0, align 4
@Magic_6143 = common dso_local global i32 0, align 4
@PipelineDelay_6143 = common dso_local global i32 0, align 4
@EOC_Set_6143 = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AIFIFO_Flag_6143 = common dso_local global i32 0, align 4
@Calibration_Channel_6143_RelayOff = common dso_local global i32 0, align 4
@Calibration_Channel_6143 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @init_6143 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_6143(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %5 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = load i32, i32* @Interrupt_Control_Register, align 4
  %8 = call i32 %5(%struct.comedi_device* %6, i32 0, i32 %7)
  %9 = load i32, i32* @Magic_6143, align 4
  %10 = call i32 @ni_writeb(i32 0, i32 %9)
  %11 = load i32, i32* @PipelineDelay_6143, align 4
  %12 = call i32 @ni_writeb(i32 128, i32 %11)
  %13 = load i32, i32* @EOC_Set_6143, align 4
  %14 = call i32 @ni_writeb(i32 0, i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %16 = sdiv i32 %15, 2
  %17 = load i32, i32* @AIFIFO_Flag_6143, align 4
  %18 = call i32 @ni_writel(i32 %16, i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @Calibration_Channel_6143_RelayOff, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @Calibration_Channel_6143, align 4
  %27 = call i32 @ni_writew(i32 %25, i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @Calibration_Channel_6143, align 4
  %32 = call i32 @ni_writew(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @ni_writeb(i32, i32) #1

declare dso_local i32 @ni_writel(i32, i32) #1

declare dso_local i32 @ni_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_clear_ai_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_clear_ai_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }

@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ni_reg_6143 = common dso_local global i64 0, align 8
@AIFIFO_Control_6143 = common dso_local global i32 0, align 4
@AIFIFO_Status_6143 = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@ADC_FIFO_Clear = common dso_local global i32 0, align 4
@ni_reg_625x = common dso_local global i64 0, align 8
@AI_CONVERT_Pulse = common dso_local global i32 0, align 4
@AI_Command_1_Register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @ni_clear_ai_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_clear_ai_fifo(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %4 = load i64, i64* @ni_reg_6143, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load i32, i32* @AIFIFO_Control_6143, align 4
  %8 = call i32 @ni_writel(i32 16, i32 %7)
  %9 = load i32, i32* @AIFIFO_Control_6143, align 4
  %10 = call i32 @ni_writel(i32 0, i32 %9)
  br label %11

11:                                               ; preds = %16, %6
  %12 = load i32, i32* @AIFIFO_Status_6143, align 4
  %13 = call i32 @ni_readl(i32 %12)
  %14 = and i32 %13, 16
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %11

17:                                               ; preds = %11
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %20, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %23 = load i32, i32* @ADC_FIFO_Clear, align 4
  %24 = call i32 %21(%struct.comedi_device* %22, i32 1, i32 %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %26 = load i64, i64* @ni_reg_625x, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = call i32 @M_Offset_Static_AI_Control(i32 0)
  %30 = call i32 @ni_writeb(i32 0, i32 %29)
  %31 = call i32 @M_Offset_Static_AI_Control(i32 0)
  %32 = call i32 @ni_writeb(i32 1, i32 %31)
  br label %33

33:                                               ; preds = %28, %18
  br label %34

34:                                               ; preds = %33, %17
  ret void
}

declare dso_local i32 @ni_writel(i32, i32) #1

declare dso_local i32 @ni_readl(i32) #1

declare dso_local i32 @ni_writeb(i32, i32) #1

declare dso_local i32 @M_Offset_Static_AI_Control(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

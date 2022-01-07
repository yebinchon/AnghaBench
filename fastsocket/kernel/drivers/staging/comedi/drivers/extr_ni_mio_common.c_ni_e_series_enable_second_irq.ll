; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_e_series_enable_second_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_e_series_enable_second_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }

@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ni_reg_m_series_mask = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@G0_Gate_Second_Irq_Enable = common dso_local global i32 0, align 4
@Second_IRQ_A_Enable_Register = common dso_local global i32 0, align 4
@G1_Gate_Second_Irq_Enable = common dso_local global i32 0, align 4
@Second_IRQ_B_Enable_Register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i16)* @ni_e_series_enable_second_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_e_series_enable_second_irq(%struct.comedi_device* %0, i32 %1, i16 signext %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %8 = load i32, i32* @ni_reg_m_series_mask, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %54

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %52 [
    i32 0, label %14
    i32 1, label %33
  ]

14:                                               ; preds = %12
  %15 = load i16, i16* %6, align 2
  %16 = icmp ne i16 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %19, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = load i32, i32* @G0_Gate_Second_Irq_Enable, align 4
  %23 = load i32, i32* @Second_IRQ_A_Enable_Register, align 4
  %24 = call i32 %20(%struct.comedi_device* %21, i32 %22, i32 %23)
  br label %32

25:                                               ; preds = %14
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %27, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = load i32, i32* @Second_IRQ_A_Enable_Register, align 4
  %31 = call i32 %28(%struct.comedi_device* %29, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %25, %17
  br label %54

33:                                               ; preds = %12
  %34 = load i16, i16* %6, align 2
  %35 = icmp ne i16 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %38, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = load i32, i32* @G1_Gate_Second_Irq_Enable, align 4
  %42 = load i32, i32* @Second_IRQ_B_Enable_Register, align 4
  %43 = call i32 %39(%struct.comedi_device* %40, i32 %41, i32 %42)
  br label %51

44:                                               ; preds = %33
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %46, align 8
  %48 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %49 = load i32, i32* @Second_IRQ_B_Enable_Register, align 4
  %50 = call i32 %47(%struct.comedi_device* %48, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %44, %36
  br label %54

52:                                               ; preds = %12
  %53 = call i32 (...) @BUG()
  br label %54

54:                                               ; preds = %11, %52, %51, %32
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

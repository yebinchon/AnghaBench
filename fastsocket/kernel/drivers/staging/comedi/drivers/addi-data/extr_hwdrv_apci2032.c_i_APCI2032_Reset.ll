; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2032.c_i_APCI2032_Reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2032.c_i_APCI2032_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ui_Type = common dso_local global i64 0, align 8
@APCI2032_DIGITAL_OP = common dso_local global i64 0, align 8
@APCI2032_DIGITAL_OP_INTERRUPT = common dso_local global i64 0, align 8
@APCI2032_DIGITAL_OP_WATCHDOG = common dso_local global i64 0, align 8
@APCI2032_TCW_PROG = common dso_local global i64 0, align 8
@APCI2032_TCW_RELOAD_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI2032_Reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  store i64 0, i64* @ui_Type, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @APCI2032_DIGITAL_OP, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @outl(i32 0, i64 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @APCI2032_DIGITAL_OP_INTERRUPT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outl(i32 0, i64 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @APCI2032_DIGITAL_OP_WATCHDOG, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* @APCI2032_TCW_PROG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outl(i32 0, i64 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @APCI2032_DIGITAL_OP_WATCHDOG, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @APCI2032_TCW_RELOAD_VALUE, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outl(i32 0, i64 %31)
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

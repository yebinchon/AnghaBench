; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_i_APCI1564_Reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_i_APCI1564_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1564_DIGITAL_IP_IRQ = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_IP_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_IP_INTERRUPT_MODE1 = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_IP_INTERRUPT_MODE2 = common dso_local global i64 0, align 8
@ui_Type = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP_INTERRUPT = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP_WATCHDOG = common dso_local global i64 0, align 8
@APCI1564_TCW_RELOAD_VALUE = common dso_local global i64 0, align 8
@APCI1564_TIMER = common dso_local global i64 0, align 8
@APCI1564_TCW_PROG = common dso_local global i64 0, align 8
@APCI1564_COUNTER1 = common dso_local global i64 0, align 8
@APCI1564_COUNTER2 = common dso_local global i64 0, align 8
@APCI1564_COUNTER3 = common dso_local global i64 0, align 8
@APCI1564_COUNTER4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1564_Reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @APCI1564_DIGITAL_IP_IRQ, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @outl(i32 0, i64 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @APCI1564_DIGITAL_IP_INTERRUPT_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @inl(i64 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @APCI1564_DIGITAL_IP_INTERRUPT_MODE1, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outl(i32 0, i64 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @APCI1564_DIGITAL_IP_INTERRUPT_MODE2, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outl(i32 0, i64 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  store i64 0, i64* @ui_Type, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outl(i32 0, i64 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @APCI1564_DIGITAL_OP_INTERRUPT, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outl(i32 0, i64 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @APCI1564_DIGITAL_OP_WATCHDOG, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @APCI1564_TCW_RELOAD_VALUE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outl(i32 0, i64 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @APCI1564_TIMER, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outl(i32 0, i64 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @APCI1564_TIMER, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outl(i32 0, i64 %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @APCI1564_COUNTER1, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outl(i32 0, i64 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @APCI1564_COUNTER2, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outl(i32 0, i64 %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @APCI1564_COUNTER3, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outl(i32 0, i64 %85)
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @APCI1564_COUNTER4, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outl(i32 0, i64 %93)
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

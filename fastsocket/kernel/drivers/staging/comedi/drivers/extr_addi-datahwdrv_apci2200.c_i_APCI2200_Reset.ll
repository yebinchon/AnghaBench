; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci2200.c_i_APCI2200_Reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci2200.c_i_APCI2200_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI2200_DIGITAL_OP = common dso_local global i64 0, align 8
@APCI2200_WATCHDOG = common dso_local global i64 0, align 8
@APCI2200_WATCHDOG_ENABLEDISABLE = common dso_local global i64 0, align 8
@APCI2200_WATCHDOG_RELOAD_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI2200_Reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @APCI2200_DIGITAL_OP, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @outw(i32 0, i64 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @APCI2200_WATCHDOG, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* @APCI2200_WATCHDOG_ENABLEDISABLE, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outw(i32 0, i64 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @APCI2200_WATCHDOG, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* @APCI2200_WATCHDOG_RELOAD_VALUE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outw(i32 0, i64 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @APCI2200_WATCHDOG, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @APCI2200_WATCHDOG_RELOAD_VALUE, align 8
  %31 = add nsw i64 %29, %30
  %32 = add nsw i64 %31, 2
  %33 = call i32 @outw(i32 0, i64 %32)
  ret i32 0
}

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

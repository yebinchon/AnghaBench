; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3501.c_v_APCI3501_Interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3501.c_v_APCI3501_Interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI3501_WATCHDOG = common dso_local global i64 0, align 8
@APCI3501_TCW_PROG = common dso_local global i64 0, align 8
@APCI3501_TCW_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"IRQ from unknow source\00", align 1
@SIGIO = common dso_local global i32 0, align 4
@APCI3501_TCW_TRIG_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_APCI3501_Interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.comedi_device*
  store %struct.comedi_device* %10, %struct.comedi_device** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inl(i64 %17)
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = and i64 %20, 4294965757
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outl(i64 %22, i64 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* @APCI3501_TCW_IRQ, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @inl(i64 %37)
  %39 = and i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %2
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = call i32 @comedi_error(%struct.comedi_device* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %81

45:                                               ; preds = %2
  %46 = load i32, i32* @SIGIO, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @send_sig(i32 %46, i32 %49, i32 0)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @inl(i64 %57)
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = and i64 %60, 4294965757
  %62 = or i64 %61, 2
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* @APCI3501_TCW_PROG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outl(i64 %63, i64 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i64, i64* @APCI3501_TCW_TRIG_STATUS, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inl(i64 %78)
  %80 = and i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i64, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

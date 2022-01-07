; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3501.c_i_APCI3501_ReadTimerCounterWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3501.c_i_APCI3501_ReadTimerCounterWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ADDIDATA_WATCHDOG = common dso_local global i64 0, align 8
@APCI3501_WATCHDOG = common dso_local global i64 0, align 8
@APCI3501_TCW_TRIG_STATUS = common dso_local global i64 0, align 8
@ADDIDATA_TIMER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"\0AIn ReadTimerCounterWatchdog :: Invalid Subdevice \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3501_ReadTimerCounterWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ADDIDATA_WATCHDOG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @APCI3501_TCW_TRIG_STATUS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @inl(i64 %21)
  %23 = and i32 %22, 1
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @inl(i64 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  br label %76

34:                                               ; preds = %4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ADDIDATA_TIMER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @APCI3501_TCW_TRIG_STATUS, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @inl(i64 %47)
  %49 = and i32 %48, 1
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @APCI3501_WATCHDOG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @inl(i64 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %57, i32* %59, align 4
  br label %75

60:                                               ; preds = %34
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ADDIDATA_TIMER, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ADDIDATA_WATCHDOG, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %66, %60
  br label %75

75:                                               ; preds = %74, %40
  br label %76

76:                                               ; preds = %75, %14
  %77 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  ret i32 %79
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

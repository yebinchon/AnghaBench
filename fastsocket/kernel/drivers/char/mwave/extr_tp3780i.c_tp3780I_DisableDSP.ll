; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_tp3780i.c_tp3780I_DisableDSP.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_tp3780i.c_tp3780I_DisableDSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }

@TRACE_TP3780I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"tp3780i::tp3780I_DisableDSP entry pBDData %p\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"tp3780i::tp3780I_DisableDSP exit retval %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tp3780I_DisableDSP(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  %7 = load i32, i32* @TRACE_TP3780I, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = call i32 (i32, i8*, ...) @PRINTK_2(i32 %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = call i32 @dsp3780I_DisableDSP(%struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @free_irq(i32 %25, i32* null)
  %27 = load i8*, i8** @FALSE, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %22, %14
  %31 = load i8*, i8** @FALSE, align 8
  %32 = call i32 @smapi_set_DSP_power_state(i8* %31)
  %33 = load i8*, i8** @FALSE, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %30, %1
  %37 = load i32, i32* @TRACE_TP3780I, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i32, i8*, ...) @PRINTK_2(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @PRINTK_2(i32, i8*, ...) #1

declare dso_local i32 @dsp3780I_DisableDSP(%struct.TYPE_6__*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @smapi_set_DSP_power_state(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

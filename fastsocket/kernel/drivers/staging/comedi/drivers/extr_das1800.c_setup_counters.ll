; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_setup_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_setup_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_cmd = type { i32, i32, i32, i64, i32, i32 }

@TIMER_BASE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@DAS1800_COUNTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @setup_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_counters(%struct.comedi_device* %0, %struct.comedi_cmd* byval(%struct.comedi_cmd) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  %5 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %46 [
    i32 129, label %7
    i32 128, label %29
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 128
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load i32, i32* @TIMER_BASE, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 5
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %12, i32* %14, i32* %16, i32* %17, i32 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = call i32 @das1800_set_frequency(%struct.comedi_device* %23)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %60

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27, %7
  br label %47

29:                                               ; preds = %2
  %30 = load i32, i32* @TIMER_BASE, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 4
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %30, i32* %32, i32* %34, i32* %35, i32 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = call i32 @das1800_set_frequency(%struct.comedi_device* %41)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %60

45:                                               ; preds = %29
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %45, %28
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TRIG_EXT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DAS1800_COUNTER, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @i8254_load(i64 %57, i32 0, i32 0, i32 1, i32 0)
  br label %59

59:                                               ; preds = %52, %47
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %44, %26
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @i8253_cascade_ns_to_timer_2div(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @das1800_set_frequency(%struct.comedi_device*) #1

declare dso_local i32 @i8254_load(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00_ts = type { i32*, i32, i64, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@UCB_IRQ_TSPX = common dso_local global i32 0, align 4
@UCB_RISING = common dso_local global i32 0, align 4
@UCB_FALLING = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ucb1x00_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ucb1x00_ts*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ucb1x00_ts*
  store %struct.ucb1x00_ts* %10, %struct.ucb1x00_ts** %3, align 8
  %11 = load i32, i32* @wait, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  store i32 0, i32* %4, align 4
  %14 = call i32 (...) @set_freezable()
  %15 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %16 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %15, i32 0, i32 1
  %17 = call i32 @add_wait_queue(i32* %16, i32* @wait)
  br label %18

18:                                               ; preds = %97, %1
  %19 = call i32 (...) @kthread_should_stop()
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %101

22:                                               ; preds = %18
  %23 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %24 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %26 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ucb1x00_adc_enable(i32 %27)
  %29 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %30 = call i32 @ucb1x00_ts_read_xpos(%struct.ucb1x00_ts* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %32 = call i32 @ucb1x00_ts_read_ypos(%struct.ucb1x00_ts* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %34 = call i32 @ucb1x00_ts_read_pressure(%struct.ucb1x00_ts* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %36 = call i32 @ucb1x00_ts_mode_int(%struct.ucb1x00_ts* %35)
  %37 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %38 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ucb1x00_adc_disable(i32 %39)
  %41 = call i32 @msleep(i32 10)
  %42 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %43 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ucb1x00_enable(i32 %44)
  %46 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %47 = call i64 @ucb1x00_ts_pen_down(%struct.ucb1x00_ts* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %22
  %50 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %51 = call i32 @set_current_state(i32 %50)
  %52 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %53 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @UCB_IRQ_TSPX, align 4
  %56 = call i64 (...) @machine_is_collie()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @UCB_RISING, align 4
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @UCB_FALLING, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @ucb1x00_enable_irq(i32 %54, i32 %55, i32 %63)
  %65 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %66 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ucb1x00_disable(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %73 = call i32 @ucb1x00_ts_event_release(%struct.ucb1x00_ts* %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %62
  %75 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %75, i64* %8, align 8
  br label %97

76:                                               ; preds = %22
  %77 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %78 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ucb1x00_disable(i32 %79)
  %81 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %82 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %76
  %86 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @ucb1x00_ts_evt_add(%struct.ucb1x00_ts* %86, i32 %87, i32 %88, i32 %89)
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %76
  %92 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %93 = call i32 @set_current_state(i32 %92)
  %94 = load i32, i32* @HZ, align 4
  %95 = sdiv i32 %94, 100
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %8, align 8
  br label %97

97:                                               ; preds = %91, %74
  %98 = call i32 (...) @try_to_freeze()
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @schedule_timeout(i64 %99)
  br label %18

101:                                              ; preds = %18
  %102 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %103 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %102, i32 0, i32 1
  %104 = call i32 @remove_wait_queue(i32* %103, i32* @wait)
  %105 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %106 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  ret i32 0
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @ucb1x00_adc_enable(i32) #1

declare dso_local i32 @ucb1x00_ts_read_xpos(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_ts_read_ypos(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_ts_read_pressure(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_ts_mode_int(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_adc_disable(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ucb1x00_enable(i32) #1

declare dso_local i64 @ucb1x00_ts_pen_down(%struct.ucb1x00_ts*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @ucb1x00_enable_irq(i32, i32, i32) #1

declare dso_local i64 @machine_is_collie(...) #1

declare dso_local i32 @ucb1x00_disable(i32) #1

declare dso_local i32 @ucb1x00_ts_event_release(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_ts_evt_add(%struct.ucb1x00_ts*, i32, i32, i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

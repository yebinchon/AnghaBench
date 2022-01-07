; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.sched_param = type { i32 }
%struct.ucb1400_ts = type { i32*, i32, i64, i64, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@__const.ucb1400_ts_thread.param = private unnamed_addr constant %struct.sched_param { i32 1 }, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ucb1400_ts_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_ts_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ucb1400_ts*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sched_param, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.ucb1400_ts*
  store %struct.ucb1400_ts* %12, %struct.ucb1400_ts** %3, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %13, %struct.task_struct** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = bitcast %struct.sched_param* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.sched_param* @__const.ucb1400_ts_thread.param to i8*), i64 4, i1 false)
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = load i32, i32* @SCHED_FIFO, align 4
  %17 = call i32 @sched_setscheduler(%struct.task_struct* %15, i32 %16, %struct.sched_param* %6)
  %18 = call i32 (...) @set_freezable()
  br label %19

19:                                               ; preds = %99, %1
  %20 = call i64 (...) @kthread_should_stop()
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %104

23:                                               ; preds = %19
  %24 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %25 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %27 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %32 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %34 = call i32 @ucb1400_handle_pending_irq(%struct.ucb1400_ts* %33)
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %37 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ucb1400_adc_enable(i32 %38)
  %40 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %41 = call i32 @ucb1400_ts_read_xpos(%struct.ucb1400_ts* %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %43 = call i32 @ucb1400_ts_read_ypos(%struct.ucb1400_ts* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %45 = call i32 @ucb1400_ts_read_pressure(%struct.ucb1400_ts* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %47 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ucb1400_adc_disable(i32 %48)
  %50 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %51 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ucb1400_ts_mode_int(i32 %52)
  %54 = call i32 @msleep(i32 10)
  %55 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %56 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ucb1400_ts_pen_up(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %35
  %61 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %62 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ucb1400_ts_irq_enable(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %69 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ucb1400_ts_event_release(i32 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %60
  %73 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %73, i64* %10, align 8
  br label %83

74:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  %75 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %76 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ucb1400_ts_evt_add(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = call i64 @msecs_to_jiffies(i32 10)
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %74, %72
  %84 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %85 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %88 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %83
  %92 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %93 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = call i64 (...) @kthread_should_stop()
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %96, %91, %83
  %100 = phi i1 [ true, %91 ], [ true, %83 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @wait_event_freezable_timeout(i32 %86, i32 %101, i64 %102)
  br label %19

104:                                              ; preds = %19
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %109 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ucb1400_ts_event_release(i32 %110)
  br label %112

112:                                              ; preds = %107, %104
  %113 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %3, align 8
  %114 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sched_setscheduler(%struct.task_struct*, i32, %struct.sched_param*) #2

declare dso_local i32 @set_freezable(...) #2

declare dso_local i64 @kthread_should_stop(...) #2

declare dso_local i32 @ucb1400_handle_pending_irq(%struct.ucb1400_ts*) #2

declare dso_local i32 @ucb1400_adc_enable(i32) #2

declare dso_local i32 @ucb1400_ts_read_xpos(%struct.ucb1400_ts*) #2

declare dso_local i32 @ucb1400_ts_read_ypos(%struct.ucb1400_ts*) #2

declare dso_local i32 @ucb1400_ts_read_pressure(%struct.ucb1400_ts*) #2

declare dso_local i32 @ucb1400_adc_disable(i32) #2

declare dso_local i32 @ucb1400_ts_mode_int(i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i64 @ucb1400_ts_pen_up(i32) #2

declare dso_local i32 @ucb1400_ts_irq_enable(i32) #2

declare dso_local i32 @ucb1400_ts_event_release(i32) #2

declare dso_local i32 @ucb1400_ts_evt_add(i32, i32, i32, i32) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i32 @wait_event_freezable_timeout(i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

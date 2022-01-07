; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_pad.c_power_saving_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_pad.c_power_saving_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@__const.power_saving_thread.param = private unnamed_addr constant %struct.sched_param { i32 1 }, align 4
@current = common dso_local global i32 0, align 4
@SCHED_RR = common dso_local global i32 0, align 4
@round_robin_time = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TS_POLLING = common dso_local global i32 0, align 4
@idle_pct = common dso_local global i32 0, align 4
@tsc_detected_unstable = common dso_local global i64 0, align 8
@tsc_marked_unstable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"TSC halts in idle\00", align 1
@CLOCK_EVT_NOTIFY_BROADCAST_ENTER = common dso_local global i32 0, align 4
@power_saving_mwait_eax = common dso_local global i32 0, align 4
@CLOCK_EVT_NOTIFY_BROADCAST_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @power_saving_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_saving_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sched_param, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = bitcast %struct.sched_param* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.sched_param* @__const.power_saving_thread.param to i8*), i64 4, i1 false)
  %10 = load i8*, i8** %2, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %13 = load i32, i32* @current, align 4
  %14 = load i32, i32* @SCHED_RR, align 4
  %15 = call i32 @sched_setscheduler(i32 %13, i32 %14, %struct.sched_param* %3)
  br label %16

16:                                               ; preds = %102, %1
  %17 = call i32 (...) @kthread_should_stop()
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %103

20:                                               ; preds = %16
  %21 = call i32 (...) @try_to_freeze()
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @round_robin_time, align 4
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = load i64, i64* @jiffies, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i64, i64* @jiffies, align 8
  store i64 %31, i64* %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @round_robin_cpu(i32 %32)
  br label %34

34:                                               ; preds = %30, %20
  store i32 0, i32* %4, align 4
  %35 = load i32, i32* @TS_POLLING, align 4
  %36 = xor i32 %35, -1
  %37 = call %struct.TYPE_2__* (...) @current_thread_info()
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = call i32 (...) @smp_mb()
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i32, i32* @HZ, align 4
  %44 = load i32, i32* @idle_pct, align 4
  %45 = sub nsw i32 100, %44
  %46 = mul nsw i32 %43, %45
  %47 = sdiv i32 %46, 100
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %42, %48
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %87, %34
  %51 = call i32 (...) @need_resched()
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %88

54:                                               ; preds = %50
  %55 = load i64, i64* @tsc_detected_unstable, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* @tsc_marked_unstable, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 @mark_tsc_unstable(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @tsc_marked_unstable, align 4
  br label %62

62:                                               ; preds = %60, %57, %54
  %63 = call i32 (...) @local_irq_disable()
  %64 = call i32 (...) @smp_processor_id()
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @CLOCK_EVT_NOTIFY_BROADCAST_ENTER, align 4
  %66 = call i32 @clockevents_notify(i32 %65, i32* %7)
  %67 = call i32 (...) @stop_critical_timings()
  %68 = call %struct.TYPE_2__* (...) @current_thread_info()
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = bitcast i32* %69 to i8*
  %71 = call i32 @__monitor(i8* %70, i32 0, i32 0)
  %72 = call i32 (...) @smp_mb()
  %73 = call i32 (...) @need_resched()
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @power_saving_mwait_eax, align 4
  %77 = call i32 @__mwait(i32 %76, i32 1)
  br label %78

78:                                               ; preds = %75, %62
  %79 = call i32 (...) @start_critical_timings()
  %80 = load i32, i32* @CLOCK_EVT_NOTIFY_BROADCAST_EXIT, align 4
  %81 = call i32 @clockevents_notify(i32 %80, i32* %7)
  %82 = call i32 (...) @local_irq_enable()
  %83 = load i64, i64* @jiffies, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %88

87:                                               ; preds = %78
  br label %50

88:                                               ; preds = %86, %50
  %89 = load i32, i32* @TS_POLLING, align 4
  %90 = call %struct.TYPE_2__* (...) @current_thread_info()
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load i32, i32* @HZ, align 4
  %98 = load i32, i32* @idle_pct, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sdiv i32 %99, 100
  %101 = call i32 @schedule_timeout_killable(i32 %100)
  br label %102

102:                                              ; preds = %96, %88
  br label %16

103:                                              ; preds = %16
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @exit_round_robin(i32 %104)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #2

declare dso_local i32 @kthread_should_stop(...) #2

declare dso_local i32 @try_to_freeze(...) #2

declare dso_local i32 @round_robin_cpu(i32) #2

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #2

declare dso_local i32 @smp_mb(...) #2

declare dso_local i32 @need_resched(...) #2

declare dso_local i32 @mark_tsc_unstable(i8*) #2

declare dso_local i32 @local_irq_disable(...) #2

declare dso_local i32 @smp_processor_id(...) #2

declare dso_local i32 @clockevents_notify(i32, i32*) #2

declare dso_local i32 @stop_critical_timings(...) #2

declare dso_local i32 @__monitor(i8*, i32, i32) #2

declare dso_local i32 @__mwait(i32, i32) #2

declare dso_local i32 @start_critical_timings(...) #2

declare dso_local i32 @local_irq_enable(...) #2

declare dso_local i32 @schedule_timeout_killable(i32) #2

declare dso_local i32 @exit_round_robin(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

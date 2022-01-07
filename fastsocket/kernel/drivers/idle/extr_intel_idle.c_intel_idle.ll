; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/idle/extr_intel_idle.c_intel_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/idle/extr_intel_idle.c_intel_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_state = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MWAIT_SUBSTATE_SIZE = common dso_local global i64 0, align 8
@MWAIT_CSTATE_MASK = common dso_local global i64 0, align 8
@lapic_timer_reliable_states = common dso_local global i32 0, align 4
@CLOCK_EVT_NOTIFY_BROADCAST_ENTER = common dso_local global i32 0, align 4
@POWER_CSTATE = common dso_local global i32 0, align 4
@CLOCK_EVT_NOTIFY_BROADCAST_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_state*)* @intel_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_idle(%struct.cpuidle_device* %0, %struct.cpuidle_state* %1) #0 {
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca %struct.cpuidle_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  store %struct.cpuidle_state* %1, %struct.cpuidle_state** %4, align 8
  store i64 1, i64* %5, align 8
  %12 = load %struct.cpuidle_state*, %struct.cpuidle_state** %4, align 8
  %13 = call i64 @cpuidle_get_statedata(%struct.cpuidle_state* %12)
  store i64 %13, i64* %6, align 8
  %14 = call i32 (...) @smp_processor_id()
  store i32 %14, i32* %11, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @MWAIT_SUBSTATE_SIZE, align 8
  %17 = lshr i64 %15, %16
  %18 = load i64, i64* @MWAIT_CSTATE_MASK, align 8
  %19 = and i64 %17, %18
  %20 = add i64 %19, 1
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = call i32 (...) @local_irq_disable()
  %23 = load i32, i32* @lapic_timer_reliable_states, align 4
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @CLOCK_EVT_NOTIFY_BROADCAST_ENTER, align 4
  %30 = call i32 @clockevents_notify(i32 %29, i32* %11)
  br label %31

31:                                               ; preds = %28, %2
  %32 = call i32 (...) @ktime_get_real()
  store i32 %32, i32* %8, align 4
  %33 = call i32 (...) @stop_critical_timings()
  %34 = load i32, i32* @POWER_CSTATE, align 4
  %35 = load i64, i64* %6, align 8
  %36 = lshr i64 %35, 4
  %37 = add i64 %36, 1
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @trace_power_start(i32 %34, i64 %37, i32 %38)
  %40 = call i32 (...) @need_resched()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %31
  %43 = call %struct.TYPE_2__* (...) @current_thread_info()
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = bitcast i32* %44 to i8*
  %46 = call i32 @__monitor(i8* %45, i32 0, i32 0)
  %47 = call i32 (...) @smp_mb()
  %48 = call i32 (...) @need_resched()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @__mwait(i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %42
  br label %55

55:                                               ; preds = %54, %31
  %56 = call i32 (...) @start_critical_timings()
  %57 = call i32 (...) @ktime_get_real()
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ktime_sub(i32 %58, i32 %59)
  %61 = call i32 @ktime_to_us(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = call i32 (...) @local_irq_enable()
  %63 = load i32, i32* @lapic_timer_reliable_states, align 4
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %55
  %69 = load i32, i32* @CLOCK_EVT_NOTIFY_BROADCAST_EXIT, align 4
  %70 = call i32 @clockevents_notify(i32 %69, i32* %11)
  br label %71

71:                                               ; preds = %68, %55
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i64 @cpuidle_get_statedata(%struct.cpuidle_state*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @clockevents_notify(i32, i32*) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @stop_critical_timings(...) #1

declare dso_local i32 @trace_power_start(i32, i64, i32) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @__monitor(i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @__mwait(i64, i64) #1

declare dso_local i32 @start_critical_timings(...) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_idle_enter_simple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_idle_enter_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_state = type { i32 }
%struct.acpi_processor = type { i32 }
%struct.acpi_processor_cx = type { i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@processors = common dso_local global i32 0, align 4
@acpi_idle_suspend = common dso_local global i64 0, align 8
@ACPI_CSTATE_FFH = common dso_local global i64 0, align 8
@TS_POLLING = common dso_local global i32 0, align 4
@ACPI_STATE_C3 = common dso_local global i64 0, align 8
@PM_TIMER_TICK_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_state*)* @acpi_idle_enter_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_idle_enter_simple(%struct.cpuidle_device* %0, %struct.cpuidle_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_state*, align 8
  %6 = alloca %struct.acpi_processor*, align 8
  %7 = alloca %struct.acpi_processor_cx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_state* %1, %struct.cpuidle_state** %5, align 8
  %12 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %13 = call %struct.acpi_processor_cx* @cpuidle_get_statedata(%struct.cpuidle_state* %12)
  store %struct.acpi_processor_cx* %13, %struct.acpi_processor_cx** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @processors, align 4
  %15 = call %struct.acpi_processor* @__get_cpu_var(i32 %14)
  store %struct.acpi_processor* %15, %struct.acpi_processor** %6, align 8
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %17 = icmp ne %struct.acpi_processor* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

23:                                               ; preds = %2
  %24 = load i64, i64* @acpi_idle_suspend, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %28 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %29 = call i32 @acpi_idle_enter_c1(%struct.cpuidle_device* %27, %struct.cpuidle_state* %28)
  store i32 %29, i32* %3, align 4
  br label %102

30:                                               ; preds = %23
  %31 = call i32 (...) @local_irq_disable()
  %32 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %33 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ACPI_CSTATE_FFH, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, i32* @TS_POLLING, align 4
  %39 = xor i32 %38, -1
  %40 = call %struct.TYPE_2__* (...) @current_thread_info()
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = call i32 (...) @smp_mb()
  br label %45

45:                                               ; preds = %37, %30
  %46 = call i32 (...) @need_resched()
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* @TS_POLLING, align 4
  %51 = call %struct.TYPE_2__* (...) @current_thread_info()
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = call i32 (...) @local_irq_enable()
  store i32 0, i32* %3, align 4
  br label %102

56:                                               ; preds = %45
  %57 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %58 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %59 = call i32 @lapic_timer_state_broadcast(%struct.acpi_processor* %57, %struct.acpi_processor_cx* %58, i32 1)
  %60 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %61 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ACPI_STATE_C3, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  br label %67

67:                                               ; preds = %65, %56
  %68 = call i32 (...) @ktime_get_real()
  store i32 %68, i32* %8, align 4
  %69 = call i32 (...) @sched_clock_idle_sleep_event()
  %70 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %71 = call i32 @acpi_idle_do_entry(%struct.acpi_processor_cx* %70)
  %72 = call i32 (...) @ktime_get_real()
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ktime_sub(i32 %73, i32 %74)
  %76 = call i32 @ktime_to_us(i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @us_to_pm_timer_ticks(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @PM_TIMER_TICK_NS, align 4
  %81 = mul nsw i32 %79, %80
  %82 = call i32 @sched_clock_idle_wakeup_event(i32 %81)
  %83 = call i32 (...) @local_irq_enable()
  %84 = load i32, i32* @TS_POLLING, align 4
  %85 = call %struct.TYPE_2__* (...) @current_thread_info()
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %90 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %94 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %95 = call i32 @lapic_timer_state_broadcast(%struct.acpi_processor* %93, %struct.acpi_processor_cx* %94, i32 0)
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %98 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %67, %49, %26, %22
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.acpi_processor_cx* @cpuidle_get_statedata(%struct.cpuidle_state*) #1

declare dso_local %struct.acpi_processor* @__get_cpu_var(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @acpi_idle_enter_c1(%struct.cpuidle_device*, %struct.cpuidle_state*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @lapic_timer_state_broadcast(%struct.acpi_processor*, %struct.acpi_processor_cx*, i32) #1

declare dso_local i32 @ACPI_FLUSH_CPU_CACHE(...) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @sched_clock_idle_sleep_event(...) #1

declare dso_local i32 @acpi_idle_do_entry(%struct.acpi_processor_cx*) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @us_to_pm_timer_ticks(i32) #1

declare dso_local i32 @sched_clock_idle_wakeup_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

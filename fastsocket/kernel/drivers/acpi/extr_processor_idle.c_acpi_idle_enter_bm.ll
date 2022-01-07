; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_idle_enter_bm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_idle_enter_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.cpuidle_device*, %struct.TYPE_5__*)* }
%struct.cpuidle_state = type { i32 }
%struct.acpi_processor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.acpi_processor_cx = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@processors = common dso_local global i32 0, align 4
@acpi_idle_suspend = common dso_local global i64 0, align 8
@ACPI_CSTATE_FFH = common dso_local global i64 0, align 8
@TS_POLLING = common dso_local global i32 0, align 4
@c3_lock = common dso_local global i32 0, align 4
@c3_cpu_count = common dso_local global i64 0, align 8
@ACPI_BITREG_ARB_DISABLE = common dso_local global i32 0, align 4
@PM_TIMER_TICK_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_state*)* @acpi_idle_enter_bm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_idle_enter_bm(%struct.cpuidle_device* %0, %struct.cpuidle_state* %1) #0 {
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
  br label %181

23:                                               ; preds = %2
  %24 = load i64, i64* @acpi_idle_suspend, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %28 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %29 = call i32 @acpi_idle_enter_c1(%struct.cpuidle_device* %27, %struct.cpuidle_state* %28)
  store i32 %29, i32* %3, align 4
  br label %181

30:                                               ; preds = %23
  %31 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %32 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %30
  %36 = call i64 (...) @acpi_idle_bm_check()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %40 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %45 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %48 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %47, i32 0, i32 1
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %48, align 8
  %49 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %50 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (%struct.cpuidle_device*, %struct.TYPE_5__*)*, i32 (%struct.cpuidle_device*, %struct.TYPE_5__*)** %52, align 8
  %54 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %55 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %56 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 %53(%struct.cpuidle_device* %54, %struct.TYPE_5__* %57)
  store i32 %58, i32* %3, align 4
  br label %181

59:                                               ; preds = %38
  %60 = call i32 (...) @local_irq_disable()
  %61 = call i32 (...) @acpi_safe_halt()
  %62 = call i32 (...) @local_irq_enable()
  store i32 0, i32* %3, align 4
  br label %181

63:                                               ; preds = %35, %30
  %64 = call i32 (...) @local_irq_disable()
  %65 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %66 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ACPI_CSTATE_FFH, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i32, i32* @TS_POLLING, align 4
  %72 = xor i32 %71, -1
  %73 = call %struct.TYPE_6__* (...) @current_thread_info()
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = call i32 (...) @smp_mb()
  br label %78

78:                                               ; preds = %70, %63
  %79 = call i32 (...) @need_resched()
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* @TS_POLLING, align 4
  %84 = call %struct.TYPE_6__* (...) @current_thread_info()
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = call i32 (...) @local_irq_enable()
  store i32 0, i32* %3, align 4
  br label %181

89:                                               ; preds = %78
  %90 = call i32 (...) @smp_processor_id()
  %91 = call i32 @acpi_unlazy_tlb(i32 %90)
  %92 = call i32 (...) @sched_clock_idle_sleep_event()
  %93 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %94 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %95 = call i32 @lapic_timer_state_broadcast(%struct.acpi_processor* %93, %struct.acpi_processor_cx* %94, i32 1)
  %96 = call i32 (...) @ktime_get_real()
  store i32 %96, i32* %8, align 4
  %97 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %98 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %89
  %103 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %104 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = call i32 @spin_lock(i32* @c3_lock)
  %110 = load i64, i64* @c3_cpu_count, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* @c3_cpu_count, align 8
  %112 = load i64, i64* @c3_cpu_count, align 8
  %113 = call i64 (...) @num_online_cpus()
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @ACPI_BITREG_ARB_DISABLE, align 4
  %117 = call i32 @acpi_write_bit_register(i32 %116, i32 1)
  br label %118

118:                                              ; preds = %115, %108
  %119 = call i32 @spin_unlock(i32* @c3_lock)
  br label %129

120:                                              ; preds = %102, %89
  %121 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %122 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  br label %128

128:                                              ; preds = %126, %120
  br label %129

129:                                              ; preds = %128, %118
  %130 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %131 = call i32 @acpi_idle_do_entry(%struct.acpi_processor_cx* %130)
  %132 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %133 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %129
  %138 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %139 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = call i32 @spin_lock(i32* @c3_lock)
  %145 = load i32, i32* @ACPI_BITREG_ARB_DISABLE, align 4
  %146 = call i32 @acpi_write_bit_register(i32 %145, i32 0)
  %147 = load i64, i64* @c3_cpu_count, align 8
  %148 = add nsw i64 %147, -1
  store i64 %148, i64* @c3_cpu_count, align 8
  %149 = call i32 @spin_unlock(i32* @c3_lock)
  br label %150

150:                                              ; preds = %143, %137, %129
  %151 = call i32 (...) @ktime_get_real()
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @ktime_sub(i32 %152, i32 %153)
  %155 = call i32 @ktime_to_us(i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @us_to_pm_timer_ticks(i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @PM_TIMER_TICK_NS, align 4
  %160 = mul nsw i32 %158, %159
  %161 = call i32 @sched_clock_idle_wakeup_event(i32 %160)
  %162 = call i32 (...) @local_irq_enable()
  %163 = load i32, i32* @TS_POLLING, align 4
  %164 = call %struct.TYPE_6__* (...) @current_thread_info()
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %169 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %173 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %174 = call i32 @lapic_timer_state_broadcast(%struct.acpi_processor* %172, %struct.acpi_processor_cx* %173, i32 0)
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %7, align 8
  %177 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %150, %82, %59, %43, %26, %22
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.acpi_processor_cx* @cpuidle_get_statedata(%struct.cpuidle_state*) #1

declare dso_local %struct.acpi_processor* @__get_cpu_var(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @acpi_idle_enter_c1(%struct.cpuidle_device*, %struct.cpuidle_state*) #1

declare dso_local i64 @acpi_idle_bm_check(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @acpi_safe_halt(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local %struct.TYPE_6__* @current_thread_info(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @acpi_unlazy_tlb(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @sched_clock_idle_sleep_event(...) #1

declare dso_local i32 @lapic_timer_state_broadcast(%struct.acpi_processor*, %struct.acpi_processor_cx*, i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @acpi_write_bit_register(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ACPI_FLUSH_CPU_CACHE(...) #1

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

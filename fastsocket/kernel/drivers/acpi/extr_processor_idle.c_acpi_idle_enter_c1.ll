; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_idle_enter_c1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_idle_enter_c1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_state = type { i32 }
%struct.acpi_processor = type { i32 }
%struct.acpi_processor_cx = type { i32 }

@processors = common dso_local global i32 0, align 4
@acpi_idle_suspend = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_state*)* @acpi_idle_enter_c1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_idle_enter_c1(%struct.cpuidle_device* %0, %struct.cpuidle_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_processor*, align 8
  %10 = alloca %struct.acpi_processor_cx*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_state* %1, %struct.cpuidle_state** %5, align 8
  %11 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %12 = call %struct.acpi_processor_cx* @cpuidle_get_statedata(%struct.cpuidle_state* %11)
  store %struct.acpi_processor_cx* %12, %struct.acpi_processor_cx** %10, align 8
  %13 = load i32, i32* @processors, align 4
  %14 = call %struct.acpi_processor* @__get_cpu_var(i32 %13)
  store %struct.acpi_processor* %14, %struct.acpi_processor** %9, align 8
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %9, align 8
  %16 = icmp ne %struct.acpi_processor* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = call i32 (...) @local_irq_disable()
  %24 = load i64, i64* @acpi_idle_suspend, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32 (...) @local_irq_enable()
  %28 = call i32 (...) @cpu_relax()
  store i32 0, i32* %3, align 4
  br label %50

29:                                               ; preds = %22
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %9, align 8
  %31 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %10, align 8
  %32 = call i32 @lapic_timer_state_broadcast(%struct.acpi_processor* %30, %struct.acpi_processor_cx* %31, i32 1)
  %33 = call i32 (...) @ktime_get_real()
  store i32 %33, i32* %6, align 4
  %34 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %10, align 8
  %35 = call i32 @acpi_idle_do_entry(%struct.acpi_processor_cx* %34)
  %36 = call i32 (...) @ktime_get_real()
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ktime_sub(i32 %37, i32 %38)
  %40 = call i32 @ktime_to_us(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = call i32 (...) @local_irq_enable()
  %42 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %10, align 8
  %43 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.acpi_processor*, %struct.acpi_processor** %9, align 8
  %47 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %10, align 8
  %48 = call i32 @lapic_timer_state_broadcast(%struct.acpi_processor* %46, %struct.acpi_processor_cx* %47, i32 0)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %29, %26, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.acpi_processor_cx* @cpuidle_get_statedata(%struct.cpuidle_state*) #1

declare dso_local %struct.acpi_processor* @__get_cpu_var(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @lapic_timer_state_broadcast(%struct.acpi_processor*, %struct.acpi_processor_cx*, i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @acpi_idle_do_entry(%struct.acpi_processor_cx*) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

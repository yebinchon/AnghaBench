; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_cpuidle.c_cpuidle_idle_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_cpuidle.c_cpuidle_idle_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpuidle_device*)*, i32 (%struct.cpuidle_device*)* }
%struct.cpuidle_device = type { i64, %struct.cpuidle_state*, %struct.cpuidle_state*, i32 }
%struct.cpuidle_state = type { i64, i32, i64 (%struct.cpuidle_device.0*, %struct.cpuidle_state*)* }
%struct.cpuidle_device.0 = type opaque

@cpuidle_devices = common dso_local global i32 0, align 4
@cpuidle_curr_governor = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpuidle_idle_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuidle_idle_call() #0 {
  %1 = alloca %struct.cpuidle_device*, align 8
  %2 = alloca %struct.cpuidle_state*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @cpuidle_devices, align 4
  %5 = call %struct.cpuidle_device* @__get_cpu_var(i32 %4)
  store %struct.cpuidle_device* %5, %struct.cpuidle_device** %1, align 8
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %7 = icmp ne %struct.cpuidle_device* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %10 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8, %0
  br i1 true, label %14, label %16

14:                                               ; preds = %13
  %15 = call i32 (...) @pm_idle_old()
  br label %18

16:                                               ; preds = %13
  %17 = call i32 (...) @local_irq_enable()
  br label %18

18:                                               ; preds = %16, %14
  br label %81

19:                                               ; preds = %8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.cpuidle_device*)*, i32 (%struct.cpuidle_device*)** %21, align 8
  %23 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %24 = call i32 %22(%struct.cpuidle_device* %23)
  store i32 %24, i32* %3, align 4
  %25 = call i64 (...) @need_resched()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 (...) @local_irq_enable()
  br label %81

29:                                               ; preds = %19
  %30 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %31 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %30, i32 0, i32 2
  %32 = load %struct.cpuidle_state*, %struct.cpuidle_state** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %32, i64 %34
  store %struct.cpuidle_state* %35, %struct.cpuidle_state** %2, align 8
  %36 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %37 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %38 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %37, i32 0, i32 1
  store %struct.cpuidle_state* %36, %struct.cpuidle_state** %38, align 8
  %39 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %40 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %39, i32 0, i32 2
  %41 = load i64 (%struct.cpuidle_device.0*, %struct.cpuidle_state*)*, i64 (%struct.cpuidle_device.0*, %struct.cpuidle_state*)** %40, align 8
  %42 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %43 = bitcast %struct.cpuidle_device* %42 to %struct.cpuidle_device.0*
  %44 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %45 = call i64 %41(%struct.cpuidle_device.0* %43, %struct.cpuidle_state* %44)
  %46 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %47 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %49 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %48, i32 0, i32 1
  %50 = load %struct.cpuidle_state*, %struct.cpuidle_state** %49, align 8
  %51 = icmp ne %struct.cpuidle_state* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %29
  %53 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %54 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %53, i32 0, i32 1
  %55 = load %struct.cpuidle_state*, %struct.cpuidle_state** %54, align 8
  store %struct.cpuidle_state* %55, %struct.cpuidle_state** %2, align 8
  br label %56

56:                                               ; preds = %52, %29
  %57 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %58 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %61 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %65 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32 (%struct.cpuidle_device*)*, i32 (%struct.cpuidle_device*)** %69, align 8
  %71 = icmp ne i32 (%struct.cpuidle_device*)* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %56
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32 (%struct.cpuidle_device*)*, i32 (%struct.cpuidle_device*)** %74, align 8
  %76 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %77 = call i32 %75(%struct.cpuidle_device* %76)
  br label %78

78:                                               ; preds = %72, %56
  %79 = call i32 (...) @smp_processor_id()
  %80 = call i32 @trace_power_end(i32 %79)
  br label %81

81:                                               ; preds = %78, %27, %18
  ret void
}

declare dso_local %struct.cpuidle_device* @__get_cpu_var(i32) #1

declare dso_local i32 @pm_idle_old(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @trace_power_end(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

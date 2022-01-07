; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_dispose_cpu_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_dispose_cpu_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpu_pid_state = type { i64, i32* }

@of_dev = common dso_local global %struct.TYPE_2__* null, align 8
@dev_attr_cpu0_temperature = common dso_local global i32 0, align 4
@dev_attr_cpu0_voltage = common dso_local global i32 0, align 4
@dev_attr_cpu0_current = common dso_local global i32 0, align 4
@dev_attr_cpu0_exhaust_fan_rpm = common dso_local global i32 0, align 4
@dev_attr_cpu0_intake_fan_rpm = common dso_local global i32 0, align 4
@dev_attr_cpu1_temperature = common dso_local global i32 0, align 4
@dev_attr_cpu1_voltage = common dso_local global i32 0, align 4
@dev_attr_cpu1_current = common dso_local global i32 0, align 4
@dev_attr_cpu1_exhaust_fan_rpm = common dso_local global i32 0, align 4
@dev_attr_cpu1_intake_fan_rpm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_pid_state*)* @dispose_cpu_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispose_cpu_state(%struct.cpu_pid_state* %0) #0 {
  %2 = alloca %struct.cpu_pid_state*, align 8
  store %struct.cpu_pid_state* %0, %struct.cpu_pid_state** %2, align 8
  %3 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %2, align 8
  %4 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %48

8:                                                ; preds = %1
  %9 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %2, align 8
  %10 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @device_remove_file(i32* %15, i32* @dev_attr_cpu0_temperature)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @device_remove_file(i32* %18, i32* @dev_attr_cpu0_voltage)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @device_remove_file(i32* %21, i32* @dev_attr_cpu0_current)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @device_remove_file(i32* %24, i32* @dev_attr_cpu0_exhaust_fan_rpm)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @device_remove_file(i32* %27, i32* @dev_attr_cpu0_intake_fan_rpm)
  br label %45

29:                                               ; preds = %8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @device_remove_file(i32* %31, i32* @dev_attr_cpu1_temperature)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @device_remove_file(i32* %34, i32* @dev_attr_cpu1_voltage)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @device_remove_file(i32* %37, i32* @dev_attr_cpu1_current)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @device_remove_file(i32* %40, i32* @dev_attr_cpu1_exhaust_fan_rpm)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @device_remove_file(i32* %43, i32* @dev_attr_cpu1_intake_fan_rpm)
  br label %45

45:                                               ; preds = %29, %13
  %46 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %2, align 8
  %47 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %45, %7
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

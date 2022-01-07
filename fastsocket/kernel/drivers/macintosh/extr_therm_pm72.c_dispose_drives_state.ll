; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_dispose_drives_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_dispose_drives_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.drives_pid_state = type { i32* }

@of_dev = common dso_local global %struct.TYPE_2__* null, align 8
@dev_attr_drives_temperature = common dso_local global i32 0, align 4
@dev_attr_drives_fan_rpm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drives_pid_state*)* @dispose_drives_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispose_drives_state(%struct.drives_pid_state* %0) #0 {
  %2 = alloca %struct.drives_pid_state*, align 8
  store %struct.drives_pid_state* %0, %struct.drives_pid_state** %2, align 8
  %3 = load %struct.drives_pid_state*, %struct.drives_pid_state** %2, align 8
  %4 = getelementptr inbounds %struct.drives_pid_state, %struct.drives_pid_state* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %17

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @device_remove_file(i32* %10, i32* @dev_attr_drives_temperature)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @of_dev, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @device_remove_file(i32* %13, i32* @dev_attr_drives_fan_rpm)
  %15 = load %struct.drives_pid_state*, %struct.drives_pid_state** %2, align 8
  %16 = getelementptr inbounds %struct.drives_pid_state, %struct.drives_pid_state* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

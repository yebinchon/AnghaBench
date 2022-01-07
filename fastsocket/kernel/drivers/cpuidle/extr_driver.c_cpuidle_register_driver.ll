; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_driver.c_cpuidle_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_driver.c_cpuidle_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cpuidle_driver_lock = common dso_local global i32 0, align 4
@cpuidle_curr_driver = common dso_local global %struct.cpuidle_driver* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_register_driver(%struct.cpuidle_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %3, align 8
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %5 = icmp ne %struct.cpuidle_driver* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = call i32 @spin_lock(i32* @cpuidle_driver_lock)
  %11 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** @cpuidle_curr_driver, align 8
  %12 = icmp ne %struct.cpuidle_driver* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32 @spin_unlock(i32* @cpuidle_driver_lock)
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %9
  %18 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  store %struct.cpuidle_driver* %18, %struct.cpuidle_driver** @cpuidle_curr_driver, align 8
  %19 = call i32 @spin_unlock(i32* @cpuidle_driver_lock)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %13, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

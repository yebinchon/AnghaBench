; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_governor.c_cpuidle_unregister_governor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_governor.c_cpuidle_unregister_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_governor = type { i32, i32 }

@cpuidle_lock = common dso_local global i32 0, align 4
@cpuidle_curr_governor = common dso_local global %struct.cpuidle_governor* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuidle_unregister_governor(%struct.cpuidle_governor* %0) #0 {
  %2 = alloca %struct.cpuidle_governor*, align 8
  %3 = alloca %struct.cpuidle_governor*, align 8
  store %struct.cpuidle_governor* %0, %struct.cpuidle_governor** %2, align 8
  %4 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %2, align 8
  %5 = icmp ne %struct.cpuidle_governor* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  %8 = call i32 @mutex_lock(i32* @cpuidle_lock)
  %9 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %2, align 8
  %10 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8
  %11 = icmp eq %struct.cpuidle_governor* %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %2, align 8
  %14 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cpuidle_governor* @cpuidle_replace_governor(i32 %15)
  store %struct.cpuidle_governor* %16, %struct.cpuidle_governor** %3, align 8
  %17 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %18 = call i32 @cpuidle_switch_governor(%struct.cpuidle_governor* %17)
  br label %19

19:                                               ; preds = %12, %7
  %20 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %2, align 8
  %21 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = call i32 @mutex_unlock(i32* @cpuidle_lock)
  br label %24

24:                                               ; preds = %19, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cpuidle_governor* @cpuidle_replace_governor(i32) #1

declare dso_local i32 @cpuidle_switch_governor(%struct.cpuidle_governor*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

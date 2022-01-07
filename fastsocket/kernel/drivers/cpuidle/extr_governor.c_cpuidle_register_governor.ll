; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_governor.c_cpuidle_register_governor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_governor.c_cpuidle_register_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cpuidle_governor = type { i64, i32, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cpuidle_lock = common dso_local global i32 0, align 4
@cpuidle_governors = common dso_local global i32 0, align 4
@cpuidle_curr_governor = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_register_governor(%struct.cpuidle_governor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_governor*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuidle_governor* %0, %struct.cpuidle_governor** %3, align 8
  %5 = load i32, i32* @EEXIST, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %8 = icmp ne %struct.cpuidle_governor* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %11 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %9
  %18 = call i32 @mutex_lock(i32* @cpuidle_lock)
  %19 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %20 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @__cpuidle_find_governor(i32 %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  %25 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %26 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %25, i32 0, i32 1
  %27 = call i32 @list_add_tail(i32* %26, i32* @cpuidle_governors)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %35 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %24
  %39 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %40 = call i32 @cpuidle_switch_governor(%struct.cpuidle_governor* %39)
  br label %41

41:                                               ; preds = %38, %30
  br label %42

42:                                               ; preds = %41, %17
  %43 = call i32 @mutex_unlock(i32* @cpuidle_lock)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @__cpuidle_find_governor(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cpuidle_switch_governor(%struct.cpuidle_governor*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

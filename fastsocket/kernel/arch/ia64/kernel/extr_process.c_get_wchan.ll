; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.unw_frame_info = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.unw_frame_info, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = icmp ne %struct.task_struct* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %12 = icmp eq %struct.task_struct* %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TASK_RUNNING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %9, %1
  store i64 0, i64* %2, align 8
  br label %47

20:                                               ; preds = %13
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = call i32 @unw_init_from_blocked_task(%struct.unw_frame_info* %4, %struct.task_struct* %21)
  br label %23

23:                                               ; preds = %42, %20
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TASK_RUNNING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i64 0, i64* %2, align 8
  br label %47

30:                                               ; preds = %23
  %31 = call i64 @unw_unwind(%struct.unw_frame_info* %4)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i64 0, i64* %2, align 8
  br label %47

34:                                               ; preds = %30
  %35 = call i32 @unw_get_ip(%struct.unw_frame_info* %4, i64* %5)
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @in_sched_functions(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %2, align 8
  br label %47

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = icmp slt i32 %43, 16
  br i1 %45, label %23, label %46

46:                                               ; preds = %42
  store i64 0, i64* %2, align 8
  br label %47

47:                                               ; preds = %46, %39, %33, %29, %19
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i32 @unw_init_from_blocked_task(%struct.unw_frame_info*, %struct.task_struct*) #1

declare dso_local i64 @unw_unwind(%struct.unw_frame_info*) #1

declare dso_local i32 @unw_get_ip(%struct.unw_frame_info*, i64*) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

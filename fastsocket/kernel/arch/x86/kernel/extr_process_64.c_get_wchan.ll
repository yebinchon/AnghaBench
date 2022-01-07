; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process_64.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process_64.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = icmp ne %struct.task_struct* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %13 = icmp eq %struct.task_struct* %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TASK_RUNNING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %10, %1
  store i64 0, i64* %2, align 8
  br label %77

21:                                               ; preds = %14
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = call i64 @task_stack_page(%struct.task_struct* %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %21
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @THREAD_SIZE, align 8
  %37 = add i64 %35, %36
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30, %21
  store i64 0, i64* %2, align 8
  br label %77

40:                                               ; preds = %30
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %72, %40
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @THREAD_SIZE, align 8
  %55 = add i64 %53, %54
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %47
  store i64 0, i64* %2, align 8
  br label %77

58:                                               ; preds = %51
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 8
  %61 = inttoptr i64 %60 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @in_sched_functions(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %6, align 8
  store i64 %67, i64* %2, align 8
  br label %77

68:                                               ; preds = %58
  %69 = load i64, i64* %5, align 8
  %70 = inttoptr i64 %69 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = icmp slt i32 %73, 16
  br i1 %75, label %47, label %76

76:                                               ; preds = %72
  store i64 0, i64* %2, align 8
  br label %77

77:                                               ; preds = %76, %66, %57, %39, %20
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

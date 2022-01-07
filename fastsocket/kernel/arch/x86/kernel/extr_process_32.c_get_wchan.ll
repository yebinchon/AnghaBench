; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process_32.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process_32.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@top_esp = common dso_local global i64 0, align 8
@top_ebp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %14 = icmp eq %struct.task_struct* %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TASK_RUNNING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %11, %1
  store i64 0, i64* %2, align 8
  br label %76

22:                                               ; preds = %15
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = call i64 @task_stack_page(%struct.task_struct* %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @top_esp, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %37, %38
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %31, %22
  store i64 0, i64* %2, align 8
  br label %76

42:                                               ; preds = %35
  %43 = load i64, i64* %5, align 8
  %44 = inttoptr i64 %43 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %71, %42
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @top_ebp, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %52, %53
  %55 = icmp ugt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %46
  store i64 0, i64* %2, align 8
  br label %76

57:                                               ; preds = %50
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, 4
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @in_sched_functions(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %57
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %2, align 8
  br label %76

67:                                               ; preds = %57
  %68 = load i64, i64* %4, align 8
  %69 = inttoptr i64 %68 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = icmp slt i32 %72, 16
  br i1 %74, label %46, label %75

75:                                               ; preds = %71
  store i64 0, i64* %2, align 8
  br label %76

76:                                               ; preds = %75, %65, %56, %41, %21
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

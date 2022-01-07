; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

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
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = call i64 @task_stack_page(%struct.task_struct* %8)
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %15 = icmp eq %struct.task_struct* %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TASK_RUNNING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %12, %1
  store i64 0, i64* %2, align 8
  br label %74

23:                                               ; preds = %16
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @MAKE_PC_FROM_RA(i64 %31, i64 %35)
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %69, %23
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 24
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @THREAD_SIZE, align 8
  %46 = add i64 %44, %45
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %5, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %42, %37
  store i64 0, i64* %2, align 8
  br label %74

52:                                               ; preds = %48
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @in_sched_functions(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %2, align 8
  br label %74

58:                                               ; preds = %52
  %59 = load i64, i64* %4, align 8
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, 4
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @MAKE_PC_FROM_RA(i64 %62, i64 %63)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %4, align 8
  %66 = inttoptr i64 %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %67, 3
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = icmp slt i32 %70, 16
  br i1 %72, label %37, label %73

73:                                               ; preds = %69
  store i64 0, i64* %2, align 8
  br label %74

74:                                               ; preds = %73, %56, %51, %22
  %75 = load i64, i64* %2, align 8
  ret i64 %75
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @MAKE_PC_FROM_RA(i64, i64) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

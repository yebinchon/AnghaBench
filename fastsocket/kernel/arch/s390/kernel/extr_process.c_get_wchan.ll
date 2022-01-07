; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.stack_frame = type { i64, i64* }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@PSW_ADDR_INSN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stack_frame*, align 8
  %5 = alloca %struct.stack_frame*, align 8
  %6 = alloca %struct.stack_frame*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %14 = icmp eq %struct.task_struct* %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TASK_RUNNING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = call %struct.stack_frame* @task_stack_page(%struct.task_struct* %22)
  %24 = icmp ne %struct.stack_frame* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %15, %11, %1
  store i64 0, i64* %2, align 8
  br label %84

26:                                               ; preds = %21
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = call %struct.stack_frame* @task_stack_page(%struct.task_struct* %27)
  store %struct.stack_frame* %28, %struct.stack_frame** %5, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = call i64 @task_pt_regs(%struct.task_struct* %29)
  %31 = inttoptr i64 %30 to %struct.stack_frame*
  store %struct.stack_frame* %31, %struct.stack_frame** %6, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PSW_ADDR_INSN, align 8
  %37 = and i64 %35, %36
  %38 = inttoptr i64 %37 to %struct.stack_frame*
  store %struct.stack_frame* %38, %struct.stack_frame** %4, align 8
  %39 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %40 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %41 = icmp ule %struct.stack_frame* %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %26
  %43 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %44 = load %struct.stack_frame*, %struct.stack_frame** %6, align 8
  %45 = icmp ugt %struct.stack_frame* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %26
  store i64 0, i64* %2, align 8
  br label %84

47:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %80, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %83

51:                                               ; preds = %48
  %52 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %53 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PSW_ADDR_INSN, align 8
  %56 = and i64 %54, %55
  %57 = inttoptr i64 %56 to %struct.stack_frame*
  store %struct.stack_frame* %57, %struct.stack_frame** %4, align 8
  %58 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %59 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %60 = icmp ule %struct.stack_frame* %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %51
  %62 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %63 = load %struct.stack_frame*, %struct.stack_frame** %6, align 8
  %64 = icmp ugt %struct.stack_frame* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %51
  store i64 0, i64* %2, align 8
  br label %84

66:                                               ; preds = %61
  %67 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %68 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PSW_ADDR_INSN, align 8
  %73 = and i64 %71, %72
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @in_sched_functions(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %2, align 8
  br label %84

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %48

83:                                               ; preds = %48
  store i64 0, i64* %2, align 8
  br label %84

84:                                               ; preds = %83, %77, %65, %46, %25
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

declare dso_local %struct.stack_frame* @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

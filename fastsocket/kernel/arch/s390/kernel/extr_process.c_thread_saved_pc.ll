; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_process.c_thread_saved_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_process.c_thread_saved_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.stack_frame = type { i32, i64* }

@PSW_ADDR_INSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_saved_pc(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stack_frame*, align 8
  %5 = alloca %struct.stack_frame*, align 8
  %6 = alloca %struct.stack_frame*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = icmp ne %struct.task_struct* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = call %struct.stack_frame* @task_stack_page(%struct.task_struct* %10)
  %12 = icmp ne %struct.stack_frame* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  store i64 0, i64* %2, align 8
  br label %58

14:                                               ; preds = %9
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = call %struct.stack_frame* @task_stack_page(%struct.task_struct* %15)
  store %struct.stack_frame* %16, %struct.stack_frame** %5, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = call i64 @task_pt_regs(%struct.task_struct* %17)
  %19 = inttoptr i64 %18 to %struct.stack_frame*
  store %struct.stack_frame* %19, %struct.stack_frame** %6, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PSW_ADDR_INSN, align 4
  %25 = and i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.stack_frame*
  store %struct.stack_frame* %27, %struct.stack_frame** %4, align 8
  %28 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %29 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %30 = icmp ule %struct.stack_frame* %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %14
  %32 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %33 = load %struct.stack_frame*, %struct.stack_frame** %6, align 8
  %34 = icmp ugt %struct.stack_frame* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %14
  store i64 0, i64* %2, align 8
  br label %58

36:                                               ; preds = %31
  %37 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %38 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PSW_ADDR_INSN, align 4
  %41 = and i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.stack_frame*
  store %struct.stack_frame* %43, %struct.stack_frame** %4, align 8
  %44 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %45 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %46 = icmp ule %struct.stack_frame* %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %49 = load %struct.stack_frame*, %struct.stack_frame** %6, align 8
  %50 = icmp ugt %struct.stack_frame* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %36
  store i64 0, i64* %2, align 8
  br label %58

52:                                               ; preds = %47
  %53 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %54 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 8
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %2, align 8
  br label %58

58:                                               ; preds = %52, %51, %35, %13
  %59 = load i64, i64* %2, align 8
  ret i64 %59
}

declare dso_local %struct.stack_frame* @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @task_pt_regs(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

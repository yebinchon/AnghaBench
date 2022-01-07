; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_stacktrace.c_save_stack_trace_tsk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_stacktrace.c_save_stack_trace_tsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.stack_trace = type { i64, i64, i32* }

@PSW_ADDR_INSN = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_stack_trace_tsk(%struct.task_struct* %0, %struct.stack_trace* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stack_trace*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.stack_trace* %1, %struct.stack_trace** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PSW_ADDR_INSN, align 8
  %13 = and i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = call i64 @task_stack_page(%struct.task_struct* %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = call i64 @task_pt_regs(%struct.task_struct* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @save_context_stack(%struct.stack_trace* %18, i64 %19, i64 %20, i64 %21, i32 0)
  %23 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %24 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %27 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load i32, i32* @ULONG_MAX, align 4
  %32 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %33 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %36 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %31, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %2
  ret void
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @save_context_stack(%struct.stack_trace*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

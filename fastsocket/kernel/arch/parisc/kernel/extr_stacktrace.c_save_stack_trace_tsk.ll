; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_stacktrace.c_save_stack_trace_tsk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_stacktrace.c_save_stack_trace_tsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.stack_trace = type { i64, i64, i32* }

@ULONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_stack_trace_tsk(%struct.task_struct* %0, %struct.stack_trace* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stack_trace*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.stack_trace* %1, %struct.stack_trace** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %7 = call i32 @dump_trace(%struct.task_struct* %5, %struct.stack_trace* %6)
  %8 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %9 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %12 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @ULONG_MAX, align 4
  %17 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %18 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %21 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %16, i32* %24, align 4
  br label %25

25:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @dump_trace(%struct.task_struct*, %struct.stack_trace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

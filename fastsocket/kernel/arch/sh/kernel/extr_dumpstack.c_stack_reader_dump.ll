; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_dumpstack.c_stack_reader_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_dumpstack.c_stack_reader_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }
%struct.stacktrace_ops = type { i32 (i8*, i64, i32)* }
%struct.thread_info = type { i32 }

@THREAD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_reader_dump(%struct.task_struct* %0, %struct.pt_regs* %1, i64* %2, %struct.stacktrace_ops* %3, i8* %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.stacktrace_ops*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.thread_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.stacktrace_ops* %3, %struct.stacktrace_ops** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load i64*, i64** %8, align 8
  %15 = ptrtoint i64* %14 to i64
  %16 = load i32, i32* @THREAD_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = xor i32 %17, -1
  %19 = sext i32 %18 to i64
  %20 = and i64 %15, %19
  %21 = inttoptr i64 %20 to %struct.thread_info*
  store %struct.thread_info* %21, %struct.thread_info** %11, align 8
  br label %22

22:                                               ; preds = %46, %5
  %23 = load i64*, i64** %8, align 8
  %24 = call i32 @kstack_end(i64* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load i64*, i64** %8, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %8, align 8
  %30 = load i64, i64* %28, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @__kernel_text_address(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %36 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %35, i32 0, i32 0
  %37 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %36, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 %37(i8* %38, i64 %39, i32 1)
  %41 = load i64, i64* %13, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %44 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %45 = call i32 @print_ftrace_graph_addr(i64 %41, i8* %42, %struct.stacktrace_ops* %43, %struct.thread_info* %44, i32* %12)
  br label %46

46:                                               ; preds = %34, %27
  br label %22

47:                                               ; preds = %22
  ret void
}

declare dso_local i32 @kstack_end(i64*) #1

declare dso_local i64 @__kernel_text_address(i64) #1

declare dso_local i32 @print_ftrace_graph_addr(i64, i8*, %struct.stacktrace_ops*, %struct.thread_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

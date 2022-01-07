; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack.c_print_context_stack_bp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack.c_print_context_stack_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }
%struct.stacktrace_ops = type { i32 (i8*, i64, i32)* }
%struct.stack_frame = type { i64, %struct.stack_frame* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @print_context_stack_bp(%struct.thread_info* %0, i64* %1, i64 %2, %struct.stacktrace_ops* %3, i8* %4, i64* %5, i32* %6) #0 {
  %8 = alloca %struct.thread_info*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.stacktrace_ops*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.stack_frame*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  store %struct.thread_info* %0, %struct.thread_info** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.stacktrace_ops* %3, %struct.stacktrace_ops** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i64, i64* %10, align 8
  %19 = inttoptr i64 %18 to %struct.stack_frame*
  store %struct.stack_frame* %19, %struct.stack_frame** %15, align 8
  %20 = load %struct.stack_frame*, %struct.stack_frame** %15, align 8
  %21 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %20, i32 0, i32 0
  store i64* %21, i64** %16, align 8
  br label %22

22:                                               ; preds = %35, %7
  %23 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %24 = load i64*, i64** %16, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = call i64 @valid_stack_ptr(%struct.thread_info* %23, i64* %24, i32 8, i64* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load i64*, i64** %16, align 8
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %17, align 8
  %31 = load i64, i64* %17, align 8
  %32 = call i32 @__kernel_text_address(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %53

35:                                               ; preds = %28
  %36 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %11, align 8
  %37 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %36, i32 0, i32 0
  %38 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %37, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i64, i64* %17, align 8
  %41 = call i32 %38(i8* %39, i64 %40, i32 1)
  %42 = load %struct.stack_frame*, %struct.stack_frame** %15, align 8
  %43 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %42, i32 0, i32 1
  %44 = load %struct.stack_frame*, %struct.stack_frame** %43, align 8
  store %struct.stack_frame* %44, %struct.stack_frame** %15, align 8
  %45 = load %struct.stack_frame*, %struct.stack_frame** %15, align 8
  %46 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %45, i32 0, i32 0
  store i64* %46, i64** %16, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %11, align 8
  %50 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @print_ftrace_graph_addr(i64 %47, i8* %48, %struct.stacktrace_ops* %49, %struct.thread_info* %50, i32* %51)
  br label %22

53:                                               ; preds = %34, %22
  %54 = load %struct.stack_frame*, %struct.stack_frame** %15, align 8
  %55 = ptrtoint %struct.stack_frame* %54 to i64
  ret i64 %55
}

declare dso_local i64 @valid_stack_ptr(%struct.thread_info*, i64*, i32, i64*) #1

declare dso_local i32 @__kernel_text_address(i64) #1

declare dso_local i32 @print_ftrace_graph_addr(i64, i8*, %struct.stacktrace_ops*, %struct.thread_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

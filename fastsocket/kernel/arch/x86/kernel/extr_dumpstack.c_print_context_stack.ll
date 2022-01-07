; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack.c_print_context_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack.c_print_context_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }
%struct.stacktrace_ops = type { i32 (i8*, i64, i32)* }
%struct.stack_frame = type { %struct.stack_frame* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @print_context_stack(%struct.thread_info* %0, i64* %1, i64 %2, %struct.stacktrace_ops* %3, i8* %4, i64* %5, i32* %6) #0 {
  %8 = alloca %struct.thread_info*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.stacktrace_ops*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.stack_frame*, align 8
  %16 = alloca i64, align 8
  store %struct.thread_info* %0, %struct.thread_info** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.stacktrace_ops* %3, %struct.stacktrace_ops** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i64, i64* %10, align 8
  %18 = inttoptr i64 %17 to %struct.stack_frame*
  store %struct.stack_frame* %18, %struct.stack_frame** %15, align 8
  br label %19

19:                                               ; preds = %63, %7
  %20 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = load i64*, i64** %13, align 8
  %23 = call i64 @valid_stack_ptr(%struct.thread_info* %20, i64* %21, i32 8, i64* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %19
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %16, align 8
  %28 = load i64, i64* %16, align 8
  %29 = call i64 @__kernel_text_address(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = load i64*, i64** %9, align 8
  %33 = ptrtoint i64* %32 to i64
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 8
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %11, align 8
  %39 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %38, i32 0, i32 0
  %40 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %39, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %16, align 8
  %43 = call i32 %40(i8* %41, i64 %42, i32 1)
  %44 = load %struct.stack_frame*, %struct.stack_frame** %15, align 8
  %45 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %44, i32 0, i32 0
  %46 = load %struct.stack_frame*, %struct.stack_frame** %45, align 8
  store %struct.stack_frame* %46, %struct.stack_frame** %15, align 8
  %47 = load %struct.stack_frame*, %struct.stack_frame** %15, align 8
  %48 = ptrtoint %struct.stack_frame* %47 to i64
  store i64 %48, i64* %10, align 8
  br label %56

49:                                               ; preds = %31
  %50 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %11, align 8
  %51 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %50, i32 0, i32 0
  %52 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %51, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %16, align 8
  %55 = call i32 %52(i8* %53, i64 %54, i32 0)
  br label %56

56:                                               ; preds = %49, %37
  %57 = load i64, i64* %16, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %11, align 8
  %60 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @print_ftrace_graph_addr(i64 %57, i8* %58, %struct.stacktrace_ops* %59, %struct.thread_info* %60, i32* %61)
  br label %63

63:                                               ; preds = %56, %25
  %64 = load i64*, i64** %9, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %9, align 8
  br label %19

66:                                               ; preds = %19
  %67 = load i64, i64* %10, align 8
  ret i64 %67
}

declare dso_local i64 @valid_stack_ptr(%struct.thread_info*, i64*, i32, i64*) #1

declare dso_local i64 @__kernel_text_address(i64) #1

declare dso_local i32 @print_ftrace_graph_addr(i64, i8*, %struct.stacktrace_ops*, %struct.thread_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

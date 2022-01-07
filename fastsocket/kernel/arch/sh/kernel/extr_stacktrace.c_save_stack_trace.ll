; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_stacktrace.c_save_stack_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_stacktrace.c_save_stack_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_trace = type { i64, i64, i32* }

@current_stack_pointer = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@save_stack_ops = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_stack_trace(%struct.stack_trace* %0) #0 {
  %2 = alloca %struct.stack_trace*, align 8
  %3 = alloca i64*, align 8
  store %struct.stack_trace* %0, %struct.stack_trace** %2, align 8
  %4 = load i64, i64* @current_stack_pointer, align 8
  %5 = inttoptr i64 %4 to i64*
  store i64* %5, i64** %3, align 8
  %6 = load i32, i32* @current, align 4
  %7 = load i64*, i64** %3, align 8
  %8 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %9 = call i32 @unwind_stack(i32 %6, i32* null, i64* %7, i32* @save_stack_ops, %struct.stack_trace* %8)
  %10 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %11 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %14 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @ULONG_MAX, align 4
  %19 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %20 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %23 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %18, i32* %26, align 4
  br label %27

27:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @unwind_stack(i32, i32*, i64*, i32*, %struct.stack_trace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_stacktrace.c_save_stack_trace_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_stacktrace.c_save_stack_trace_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.stack_trace = type { i64, i64, i32* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ULONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_stack_trace_user(%struct.stack_trace* %0) #0 {
  %2 = alloca %struct.stack_trace*, align 8
  store %struct.stack_trace* %0, %struct.stack_trace** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %9 = call i32 @__save_stack_trace_user(%struct.stack_trace* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %12 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %15 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load i32, i32* @ULONG_MAX, align 4
  %20 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %21 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %24 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %19, i32* %27, align 4
  br label %28

28:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @__save_stack_trace_user(%struct.stack_trace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

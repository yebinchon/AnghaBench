; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_stacktrace.c_save_context_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_stacktrace.c_save_context_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_trace = type { i64*, i64, i64, i32 }
%struct.task_struct = type { i32 }

@STACK_FRAME_OVERHEAD = common dso_local global i32 0, align 4
@STACK_FRAME_LR_SAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stack_trace*, i64, %struct.task_struct*, i32)* @save_context_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_context_stack(%struct.stack_trace* %0, i64 %1, %struct.task_struct* %2, i32 %3) #0 {
  %5 = alloca %struct.stack_trace*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.stack_trace* %0, %struct.stack_trace** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %12

12:                                               ; preds = %65, %4
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %17 = load i32, i32* @STACK_FRAME_OVERHEAD, align 4
  %18 = call i32 @validate_sp(i64 %15, %struct.task_struct* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %67

21:                                               ; preds = %12
  %22 = load i64*, i64** %9, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* @STACK_FRAME_LR_SAVE, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @in_sched_functions(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %31, %21
  %36 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %37 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %43 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %46 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = getelementptr inbounds i64, i64* %44, i64 %47
  store i64 %41, i64* %49, align 8
  br label %55

50:                                               ; preds = %35
  %51 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %52 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %50, %40
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %58 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %61 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %67

65:                                               ; preds = %56
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %6, align 8
  br label %12

67:                                               ; preds = %64, %20
  ret void
}

declare dso_local i32 @validate_sp(i64, %struct.task_struct*, i32) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

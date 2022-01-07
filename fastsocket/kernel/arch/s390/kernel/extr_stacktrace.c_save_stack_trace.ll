; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_stacktrace.c_save_stack_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_stacktrace.c_save_stack_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.stack_trace = type { i32 }

@PSW_ADDR_INSN = common dso_local global i64 0, align 8
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@ASYNC_SIZE = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_stack_trace(%struct.stack_trace* %0) #0 {
  %2 = alloca %struct.stack_trace*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.stack_trace* %0, %struct.stack_trace** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @PSW_ADDR_INSN, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %4, align 8
  %9 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 2), align 8
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 2), align 8
  %15 = call i64 @save_context_stack(%struct.stack_trace* %9, i64 %10, i64 %13, i64 %14, i32 1)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  %24 = load i64, i64* @ASYNC_SIZE, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  %27 = call i64 @save_context_stack(%struct.stack_trace* %21, i64 %22, i64 %25, i64 %26, i32 1)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %40

32:                                               ; preds = %20
  %33 = load %struct.stack_trace*, %struct.stack_trace** %2, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %37 = load i64, i64* @THREAD_SIZE, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i64 @save_context_stack(%struct.stack_trace* %33, i64 %34, i64 %35, i64 %38, i32 1)
  br label %40

40:                                               ; preds = %32, %31, %19
  ret void
}

declare dso_local i64 @save_context_stack(%struct.stack_trace*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

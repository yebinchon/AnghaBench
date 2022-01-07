; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_event.c_perf_callchain_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_event.c_perf_callchain_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.perf_callchain_entry = type { i32 }
%struct.pt_regs = type { i64* }
%struct.stack_frame = type { i64 }

@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ASYNC_SIZE = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_callchain_kernel(%struct.perf_callchain_entry* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.perf_callchain_entry*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stack_frame*, align 8
  store %struct.perf_callchain_entry* %0, %struct.perf_callchain_entry** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %8 = call i64 @user_mode(%struct.pt_regs* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %45

11:                                               ; preds = %2
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 15
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to %struct.stack_frame*
  store %struct.stack_frame* %18, %struct.stack_frame** %6, align 8
  %19 = load %struct.stack_frame*, %struct.stack_frame** %6, align 8
  %20 = icmp ne %struct.stack_frame* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load %struct.stack_frame*, %struct.stack_frame** %6, align 8
  %23 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %11
  br label %45

27:                                               ; preds = %21
  %28 = load %struct.stack_frame*, %struct.stack_frame** %6, align 8
  %29 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load %struct.perf_callchain_entry*, %struct.perf_callchain_entry** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  %34 = load i64, i64* @ASYNC_SIZE, align 8
  %35 = sub nsw i64 %33, %34
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  %37 = call i64 @__store_trace(%struct.perf_callchain_entry* %31, i64 %32, i64 %35, i64 %36)
  store i64 %37, i64* %5, align 8
  %38 = load %struct.perf_callchain_entry*, %struct.perf_callchain_entry** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %42 = load i64, i64* @THREAD_SIZE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i64 @__store_trace(%struct.perf_callchain_entry* %38, i64 %39, i64 %40, i64 %43)
  br label %45

45:                                               ; preds = %27, %26, %10
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @__store_trace(%struct.perf_callchain_entry*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

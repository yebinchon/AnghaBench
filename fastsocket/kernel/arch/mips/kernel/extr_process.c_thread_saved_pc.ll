; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_process.c_thread_saved_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_process.c_thread_saved_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { i64, i64 }

@ret_from_fork = common dso_local global i64 0, align 8
@schedule_mfi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_saved_pc(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.thread_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 0
  store %struct.thread_struct* %6, %struct.thread_struct** %4, align 8
  %7 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %8 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ret_from_fork, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %14 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %2, align 8
  br label %28

16:                                               ; preds = %1
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @schedule_mfi, i32 0, i32 0), align 8
  %18 = icmp ult i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i64 0, i64* %2, align 8
  br label %28

20:                                               ; preds = %16
  %21 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %22 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @schedule_mfi, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %20, %19, %12
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_process.c_thread_saved_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_process.c_thread_saved_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.cpu_context = type { i64, i64 }
%struct.thread_info = type { %struct.cpu_context }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_saved_pc(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.cpu_context*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.thread_info*
  %9 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %8, i32 0, i32 0
  store %struct.cpu_context* %9, %struct.cpu_context** %4, align 8
  %10 = load %struct.cpu_context*, %struct.cpu_context** %4, align 8
  %11 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @in_sched_functions(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.cpu_context*, %struct.cpu_context** %4, align 8
  %17 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %2, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.cpu_context*, %struct.cpu_context** %4, align 8
  %21 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i64 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

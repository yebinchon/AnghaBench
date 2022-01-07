; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_64.c_thread_saved_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_64.c_thread_saved_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.thread_info = type { i64 }

@STACK_BIAS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_saved_pc(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %7)
  store %struct.thread_info* %8, %struct.thread_info** %3, align 8
  store i64 3735928559, i64* %4, align 8
  %9 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %10 = icmp ne %struct.thread_info* %9, null
  br i1 %10, label %11, label %49

11:                                               ; preds = %1
  %12 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %13 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %11
  %17 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %18 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STACK_BIAS, align 8
  %21 = add nsw i64 %19, %20
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %5, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = ptrtoint i64* %23 to i64
  %25 = and i64 %24, 7
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %16
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 14
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 14
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STACK_BIAS, align 8
  %37 = add i64 %35, %36
  %38 = inttoptr i64 %37 to i64*
  store i64* %38, i64** %6, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = ptrtoint i64* %39 to i64
  %41 = and i64 %40, 7
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i64*, i64** %6, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 15
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %43, %32
  br label %48

48:                                               ; preds = %47, %27, %16
  br label %49

49:                                               ; preds = %48, %11, %1
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

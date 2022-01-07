; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_process.c_show_stack_log_lvl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_process.c_show_stack_log_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.pt_regs = type { i32 }
%struct.thread_info = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Stack: \00", align 1
@THREAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack_log_lvl(%struct.task_struct* %0, i64 %1, %struct.pt_regs* %2, i8* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.thread_info*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  br label %23

21:                                               ; preds = %12
  %22 = ptrtoint %struct.thread_info** %9 to i64
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %21, %15
  br label %24

24:                                               ; preds = %23, %4
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = icmp ne %struct.task_struct* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %28, %struct.task_struct** %5, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %31 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %30)
  store %struct.thread_info* %31, %struct.thread_info** %9, align 8
  %32 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @valid_stack_ptr(%struct.thread_info* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @THREAD_SIZE, align 8
  %40 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %41 = ptrtoint %struct.thread_info* %40 to i64
  %42 = add i64 %39, %41
  %43 = call i32 @dump_mem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %37, i64 %38, i64 %42)
  %44 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = inttoptr i64 %45 to i64*
  %47 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @show_trace_log_lvl(%struct.task_struct* %44, i64* %46, %struct.pt_regs* %47, i8* %48)
  br label %50

50:                                               ; preds = %36, %29
  ret void
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64 @valid_stack_ptr(%struct.thread_info*, i64) #1

declare dso_local i32 @dump_mem(i8*, i8*, i64, i64) #1

declare dso_local i32 @show_trace_log_lvl(%struct.task_struct*, i64*, %struct.pt_regs*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_put_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_put_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.ds_context = type { %struct.task_struct*, i32**, i64 }

@ds_lock = common dso_local global i32 0, align 4
@TIF_DS_AREA_MSR = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_context*)* @ds_put_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_put_context(%struct.ds_context* %0) #0 {
  %2 = alloca %struct.ds_context*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.ds_context* %0, %struct.ds_context** %2, align 8
  %5 = load %struct.ds_context*, %struct.ds_context** %2, align 8
  %6 = icmp ne %struct.ds_context* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %47

8:                                                ; preds = %1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @ds_lock, i64 %9)
  %11 = load %struct.ds_context*, %struct.ds_context** %2, align 8
  %12 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* @ds_lock, i64 %17)
  br label %47

19:                                               ; preds = %8
  %20 = load %struct.ds_context*, %struct.ds_context** %2, align 8
  %21 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  store i32* null, i32** %22, align 8
  %23 = load %struct.ds_context*, %struct.ds_context** %2, align 8
  %24 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %23, i32 0, i32 0
  %25 = load %struct.task_struct*, %struct.task_struct** %24, align 8
  store %struct.task_struct* %25, %struct.task_struct** %3, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = icmp ne %struct.task_struct* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = load i32, i32* @TIF_DS_AREA_MSR, align 4
  %31 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %19
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @ds_lock, i64 %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = icmp ne %struct.task_struct* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %40 = icmp ne %struct.task_struct* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = call i32 @wait_task_context_switch(%struct.task_struct* %42)
  br label %44

44:                                               ; preds = %41, %37, %32
  %45 = load %struct.ds_context*, %struct.ds_context** %2, align 8
  %46 = call i32 @kfree(%struct.ds_context* %45)
  br label %47

47:                                               ; preds = %44, %16, %7
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @wait_task_context_switch(%struct.task_struct*) #1

declare dso_local i32 @kfree(%struct.ds_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

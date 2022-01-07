; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_unwinder.c_unwind_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_unwinder.c_unwind_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.task_struct*, %struct.pt_regs*, i64*, %struct.stacktrace_ops*, i8*)*, i32 }
%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }
%struct.stacktrace_ops = type { i32 }

@unwinder_faulted = common dso_local global i64 0, align 8
@unwinder_lock = common dso_local global i32 0, align 4
@unwinder_list = common dso_local global i32 0, align 4
@curr_unwinder = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unwind_stack(%struct.task_struct* %0, %struct.pt_regs* %1, i64* %2, %struct.stacktrace_ops* %3, i8* %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.stacktrace_ops*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.stacktrace_ops* %3, %struct.stacktrace_ops** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i64, i64* @unwinder_faulted, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %5
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @unwinder_lock, i64 %15)
  %17 = load i64, i64* @unwinder_faulted, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = call i32 @list_is_singular(i32* @unwinder_list)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_unwinder, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @list_del(i32* %24)
  %26 = call %struct.TYPE_3__* (...) @select_unwinder()
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** @curr_unwinder, align 8
  store i64 0, i64* @unwinder_faulted, align 8
  br label %27

27:                                               ; preds = %22, %19, %14
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @unwinder_lock, i64 %28)
  br label %30

30:                                               ; preds = %27, %5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_unwinder, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.task_struct*, %struct.pt_regs*, i64*, %struct.stacktrace_ops*, i8*)*, i32 (%struct.task_struct*, %struct.pt_regs*, i64*, %struct.stacktrace_ops*, i8*)** %32, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 %33(%struct.task_struct* %34, %struct.pt_regs* %35, i64* %36, %struct.stacktrace_ops* %37, i8* %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_is_singular(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.TYPE_3__* @select_unwinder(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

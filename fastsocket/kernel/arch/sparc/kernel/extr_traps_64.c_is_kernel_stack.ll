; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_is_kernel_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_is_kernel_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.reg_window = type { i32 }

@PAGE_OFFSET = common dso_local global i64 0, align 8
@init_task = common dso_local global %struct.task_struct zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.reg_window*)* @is_kernel_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_kernel_stack(%struct.task_struct* %0, %struct.reg_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.reg_window*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.reg_window* %1, %struct.reg_window** %5, align 8
  %9 = load %struct.reg_window*, %struct.reg_window** %5, align 8
  %10 = ptrtoint %struct.reg_window* %9 to i64
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PAGE_OFFSET, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = icmp ne %struct.task_struct* %15, @init_task
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %37

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = call i64 @task_stack_page(%struct.task_struct* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 4
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, 7
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %37

36:                                               ; preds = %31, %27, %19
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_32.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_32.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.reg_window32 = type { i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[%08lx : \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%pS ] \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.reg_window32*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = call i64 @task_stack_page(%struct.task_struct* %13)
  store i64 %14, i64* %7, align 8
  br label %17

15:                                               ; preds = %2
  %16 = call i64 (...) @current_thread_info()
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i64*, i64** %4, align 8
  %19 = ptrtoint i64* %18 to i64
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %52, %17
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 4
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = shl i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = add i64 %27, %30
  %32 = icmp uge i64 %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %20
  br label %56

34:                                               ; preds = %25
  %35 = load i64, i64* %6, align 8
  %36 = inttoptr i64 %35 to %struct.reg_window32*
  store %struct.reg_window32* %36, %struct.reg_window32** %8, align 8
  %37 = load %struct.reg_window32*, %struct.reg_window32** %8, align 8
  %38 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 7
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load %struct.reg_window32*, %struct.reg_window32** %8, align 8
  %48 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 6
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %34
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = icmp slt i32 %54, 16
  br i1 %55, label %20, label %56

56:                                               ; preds = %52, %33
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @current_thread_info(...) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

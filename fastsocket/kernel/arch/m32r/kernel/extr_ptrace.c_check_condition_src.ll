; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_ptrace.c_check_condition_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_ptrace.c_check_condition_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@reg_offset = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, %struct.task_struct*)* @check_condition_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_condition_src(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %13 = load i32*, i32** @reg_offset, align 8
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @get_stack_long(%struct.task_struct* %12, i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %6, align 8
  switch i64 %18, label %69 [
    i64 0, label %19
    i64 1, label %30
    i64 8, label %41
    i64 9, label %45
    i64 10, label %49
    i64 11, label %54
    i64 12, label %59
    i64 13, label %64
  ]

19:                                               ; preds = %4
  %20 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %21 = load i32*, i32** @reg_offset, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @get_stack_long(%struct.task_struct* %20, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %70

30:                                               ; preds = %4
  %31 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %32 = load i32*, i32** @reg_offset, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @get_stack_long(%struct.task_struct* %31, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %70

41:                                               ; preds = %4
  %42 = load i64, i64* %11, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %70

45:                                               ; preds = %4
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %70

49:                                               ; preds = %4
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  %52 = icmp slt i32 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %70

54:                                               ; preds = %4
  %55 = load i64, i64* %11, align 8
  %56 = trunc i64 %55 to i32
  %57 = icmp sge i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %70

59:                                               ; preds = %4
  %60 = load i64, i64* %11, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp sle i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %70

64:                                               ; preds = %4
  %65 = load i64, i64* %11, align 8
  %66 = trunc i64 %65 to i32
  %67 = icmp sgt i32 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %64, %59, %54, %49, %45, %41, %30, %19
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @get_stack_long(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

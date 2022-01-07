; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ptrace_64.c_regwindow64_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ptrace_64.c_regwindow64_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64* }
%struct.reg_window = type { i32*, i32* }
%struct.reg_window32 = type { i32*, i32* }

@UREG_I6 = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@TIF_32BIT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@STACK_BIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.pt_regs*, %struct.reg_window*)* @regwindow64_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regwindow64_get(%struct.task_struct* %0, %struct.pt_regs* %1, %struct.reg_window* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.reg_window*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.reg_window32, align 8
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store %struct.reg_window* %2, %struct.reg_window** %7, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @UREG_I6, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* @current, align 4
  %18 = load i32, i32* @TIF_32BIT, align 4
  %19 = call i64 @test_tsk_thread_flag(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %3
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @get_from_target(%struct.task_struct* %22, i64 %23, %struct.reg_window32* %9, i32 16)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %85

29:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %9, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %41 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %30

49:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 8
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %9, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %61 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %50

69:                                               ; preds = %50
  br label %84

70:                                               ; preds = %3
  %71 = load i64, i64* @STACK_BIAS, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %77 = bitcast %struct.reg_window* %76 to %struct.reg_window32*
  %78 = call i64 @get_from_target(%struct.task_struct* %74, i64 %75, %struct.reg_window32* %77, i32 16)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i32, i32* @EFAULT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %69
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %80, %26
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @test_tsk_thread_flag(i32, i32) #1

declare dso_local i64 @get_from_target(%struct.task_struct*, i64, %struct.reg_window32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

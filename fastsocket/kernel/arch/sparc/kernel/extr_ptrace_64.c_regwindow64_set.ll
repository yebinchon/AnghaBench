; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ptrace_64.c_regwindow64_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ptrace_64.c_regwindow64_set.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.pt_regs*, %struct.reg_window*)* @regwindow64_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regwindow64_set(%struct.task_struct* %0, %struct.pt_regs* %1, %struct.reg_window* %2) #0 {
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
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %27 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %9, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %22

41:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %47 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %9, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %42

61:                                               ; preds = %42
  %62 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @set_to_target(%struct.task_struct* %62, i64 %63, %struct.reg_window32* %9, i32 16)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EFAULT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %85

69:                                               ; preds = %61
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
  %78 = call i64 @set_to_target(%struct.task_struct* %74, i64 %75, %struct.reg_window32* %77, i32 16)
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

85:                                               ; preds = %84, %80, %66
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @test_tsk_thread_flag(i32, i32) #1

declare dso_local i64 @set_to_target(%struct.task_struct*, i64, %struct.reg_window32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

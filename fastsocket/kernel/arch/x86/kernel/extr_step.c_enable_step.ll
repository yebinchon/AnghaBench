; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_step.c_enable_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_step.c_enable_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@DEBUGCTLMSR_BTF = common dso_local global i64 0, align 8
@TIF_BLOCKSTEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @enable_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_step(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = call i64 @enable_single_step(%struct.task_struct* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = call i64 (...) @get_debugctlmsr()
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* @DEBUGCTLMSR_BTF, align 8
  %16 = load i64, i64* %5, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @update_debugctlmsr(i64 %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %22 = call i32 @set_tsk_thread_flag(%struct.task_struct* %20, i32 %21)
  br label %40

23:                                               ; preds = %10, %2
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %26 = call i64 @test_tsk_thread_flag(%struct.task_struct* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = call i64 (...) @get_debugctlmsr()
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* @DEBUGCTLMSR_BTF, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @update_debugctlmsr(i64 %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %38 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %36, i32 %37)
  br label %39

39:                                               ; preds = %28, %23
  br label %40

40:                                               ; preds = %39, %13
  ret void
}

declare dso_local i64 @enable_single_step(%struct.task_struct*) #1

declare dso_local i64 @get_debugctlmsr(...) #1

declare dso_local i32 @update_debugctlmsr(i64) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_step.c_user_disable_single_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_step.c_user_disable_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TIF_BLOCKSTEP = common dso_local global i32 0, align 4
@DEBUGCTLMSR_BTF = common dso_local global i64 0, align 8
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@TIF_FORCED_TF = common dso_local global i32 0, align 4
@X86_EFLAGS_TF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_disable_single_step(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %6 = call i64 @test_tsk_thread_flag(%struct.task_struct* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = call i64 (...) @get_debugctlmsr()
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* @DEBUGCTLMSR_BTF, align 8
  %11 = xor i64 %10, -1
  %12 = load i64, i64* %3, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @update_debugctlmsr(i64 %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %18 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %16, i32 %17)
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = load i32, i32* @TIF_SINGLESTEP, align 4
  %22 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %20, i32 %21)
  %23 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %24 = load i32, i32* @TIF_FORCED_TF, align 4
  %25 = call i64 @test_and_clear_tsk_thread_flag(%struct.task_struct* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i32, i32* @X86_EFLAGS_TF, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %31 = call %struct.TYPE_2__* @task_pt_regs(%struct.task_struct* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %27, %19
  ret void
}

declare dso_local i64 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @get_debugctlmsr(...) #1

declare dso_local i32 @update_debugctlmsr(i64) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @test_and_clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local %struct.TYPE_2__* @task_pt_regs(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_ptrace.c_ptrace_single_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_ptrace.c_ptrace_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"ptrace_single_step: pid=%u, PC=0x%08lx, SR=0x%08lx\0A\00", align 1
@TIF_BREAKPOINT = common dso_local global i32 0, align 4
@TIF_SINGLE_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @ptrace_single_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptrace_single_step(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = call %struct.TYPE_2__* @task_pt_regs(%struct.task_struct* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = call %struct.TYPE_2__* @task_pt_regs(%struct.task_struct* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %9, i32 %13)
  %15 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %16 = load i32, i32* @TIF_BREAKPOINT, align 4
  %17 = call i32 @set_tsk_thread_flag(%struct.task_struct* %15, i32 %16)
  %18 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %19 = load i32, i32* @TIF_SINGLE_STEP, align 4
  %20 = call i32 @set_tsk_thread_flag(%struct.task_struct* %18, i32 %19)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

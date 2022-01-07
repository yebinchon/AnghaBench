; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_asm-offsets.c_foo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_asm-offsets.c_foo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TI_task = common dso_local global i32 0, align 4
@thread_info = common dso_local global i32 0, align 4
@task = common dso_local global i32 0, align 4
@TI_exec_domain = common dso_local global i32 0, align 4
@exec_domain = common dso_local global i32 0, align 4
@TI_flags = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@TI_cpu = common dso_local global i32 0, align 4
@cpu = common dso_local global i32 0, align 4
@TI_preempt_count = common dso_local global i32 0, align 4
@preempt_count = common dso_local global i32 0, align 4
@TI_rar_saved = common dso_local global i32 0, align 4
@rar_saved = common dso_local global i32 0, align 4
@TI_rsr_saved = common dso_local global i32 0, align 4
@rsr_saved = common dso_local global i32 0, align 4
@TI_restart_block = common dso_local global i32 0, align 4
@restart_block = common dso_local global i32 0, align 4
@TSK_active_mm = common dso_local global i32 0, align 4
@task_struct = common dso_local global i32 0, align 4
@active_mm = common dso_local global i32 0, align 4
@MM_pgd = common dso_local global i32 0, align 4
@mm_struct = common dso_local global i32 0, align 4
@pgd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 {
  %1 = load i32, i32* @TI_task, align 4
  %2 = load i32, i32* @thread_info, align 4
  %3 = load i32, i32* @task, align 4
  %4 = call i32 @OFFSET(i32 %1, i32 %2, i32 %3)
  %5 = load i32, i32* @TI_exec_domain, align 4
  %6 = load i32, i32* @thread_info, align 4
  %7 = load i32, i32* @exec_domain, align 4
  %8 = call i32 @OFFSET(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @TI_flags, align 4
  %10 = load i32, i32* @thread_info, align 4
  %11 = load i32, i32* @flags, align 4
  %12 = call i32 @OFFSET(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @TI_cpu, align 4
  %14 = load i32, i32* @thread_info, align 4
  %15 = load i32, i32* @cpu, align 4
  %16 = call i32 @OFFSET(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @TI_preempt_count, align 4
  %18 = load i32, i32* @thread_info, align 4
  %19 = load i32, i32* @preempt_count, align 4
  %20 = call i32 @OFFSET(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @TI_rar_saved, align 4
  %22 = load i32, i32* @thread_info, align 4
  %23 = load i32, i32* @rar_saved, align 4
  %24 = call i32 @OFFSET(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @TI_rsr_saved, align 4
  %26 = load i32, i32* @thread_info, align 4
  %27 = load i32, i32* @rsr_saved, align 4
  %28 = call i32 @OFFSET(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @TI_restart_block, align 4
  %30 = load i32, i32* @thread_info, align 4
  %31 = load i32, i32* @restart_block, align 4
  %32 = call i32 @OFFSET(i32 %29, i32 %30, i32 %31)
  %33 = call i32 (...) @BLANK()
  %34 = load i32, i32* @TSK_active_mm, align 4
  %35 = load i32, i32* @task_struct, align 4
  %36 = load i32, i32* @active_mm, align 4
  %37 = call i32 @OFFSET(i32 %34, i32 %35, i32 %36)
  %38 = call i32 (...) @BLANK()
  %39 = load i32, i32* @MM_pgd, align 4
  %40 = load i32, i32* @mm_struct, align 4
  %41 = load i32, i32* @pgd, align 4
  %42 = call i32 @OFFSET(i32 %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @OFFSET(i32, i32, i32) #1

declare dso_local i32 @BLANK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/score/kernel/extr_asm-offsets.c_output_thread_info_defines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/score/kernel/extr_asm-offsets.c_output_thread_info_defines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"SCORE thread_info offsets.\00", align 1
@TI_TASK = common dso_local global i32 0, align 4
@thread_info = common dso_local global i32 0, align 4
@task = common dso_local global i32 0, align 4
@TI_EXEC_DOMAIN = common dso_local global i32 0, align 4
@exec_domain = common dso_local global i32 0, align 4
@TI_FLAGS = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@TI_TP_VALUE = common dso_local global i32 0, align 4
@tp_value = common dso_local global i32 0, align 4
@TI_CPU = common dso_local global i32 0, align 4
@cpu = common dso_local global i32 0, align 4
@TI_PRE_COUNT = common dso_local global i32 0, align 4
@preempt_count = common dso_local global i32 0, align 4
@TI_ADDR_LIMIT = common dso_local global i32 0, align 4
@addr_limit = common dso_local global i32 0, align 4
@TI_RESTART_BLOCK = common dso_local global i32 0, align 4
@restart_block = common dso_local global i32 0, align 4
@TI_REGS = common dso_local global i32 0, align 4
@regs = common dso_local global i32 0, align 4
@KERNEL_STACK_SIZE = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i32 0, align 4
@KERNEL_STACK_MASK = common dso_local global i32 0, align 4
@THREAD_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_thread_info_defines() #0 {
  %1 = call i32 @COMMENT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @TI_TASK, align 4
  %3 = load i32, i32* @thread_info, align 4
  %4 = load i32, i32* @task, align 4
  %5 = call i32 @OFFSET(i32 %2, i32 %3, i32 %4)
  %6 = load i32, i32* @TI_EXEC_DOMAIN, align 4
  %7 = load i32, i32* @thread_info, align 4
  %8 = load i32, i32* @exec_domain, align 4
  %9 = call i32 @OFFSET(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @TI_FLAGS, align 4
  %11 = load i32, i32* @thread_info, align 4
  %12 = load i32, i32* @flags, align 4
  %13 = call i32 @OFFSET(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @TI_TP_VALUE, align 4
  %15 = load i32, i32* @thread_info, align 4
  %16 = load i32, i32* @tp_value, align 4
  %17 = call i32 @OFFSET(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @TI_CPU, align 4
  %19 = load i32, i32* @thread_info, align 4
  %20 = load i32, i32* @cpu, align 4
  %21 = call i32 @OFFSET(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @TI_PRE_COUNT, align 4
  %23 = load i32, i32* @thread_info, align 4
  %24 = load i32, i32* @preempt_count, align 4
  %25 = call i32 @OFFSET(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @TI_ADDR_LIMIT, align 4
  %27 = load i32, i32* @thread_info, align 4
  %28 = load i32, i32* @addr_limit, align 4
  %29 = call i32 @OFFSET(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @TI_RESTART_BLOCK, align 4
  %31 = load i32, i32* @thread_info, align 4
  %32 = load i32, i32* @restart_block, align 4
  %33 = call i32 @OFFSET(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @TI_REGS, align 4
  %35 = load i32, i32* @thread_info, align 4
  %36 = load i32, i32* @regs, align 4
  %37 = call i32 @OFFSET(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @KERNEL_STACK_SIZE, align 4
  %39 = load i32, i32* @THREAD_SIZE, align 4
  %40 = call i32 @DEFINE(i32 %38, i32 %39)
  %41 = load i32, i32* @KERNEL_STACK_MASK, align 4
  %42 = load i32, i32* @THREAD_MASK, align 4
  %43 = call i32 @DEFINE(i32 %41, i32 %42)
  %44 = call i32 (...) @BLANK()
  ret void
}

declare dso_local i32 @COMMENT(i8*) #1

declare dso_local i32 @OFFSET(i32, i32, i32) #1

declare dso_local i32 @DEFINE(i32, i32) #1

declare dso_local i32 @BLANK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/score/kernel/extr_asm-offsets.c_output_task_defines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/score/kernel/extr_asm-offsets.c_output_task_defines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"SCORE task_struct offsets.\00", align 1
@TASK_STATE = common dso_local global i32 0, align 4
@task_struct = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@TASK_THREAD_INFO = common dso_local global i32 0, align 4
@stack = common dso_local global i32 0, align 4
@TASK_FLAGS = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@TASK_MM = common dso_local global i32 0, align 4
@mm = common dso_local global i32 0, align 4
@TASK_PID = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@TASK_STRUCT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_task_defines() #0 {
  %1 = call i32 @COMMENT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @TASK_STATE, align 4
  %3 = load i32, i32* @task_struct, align 4
  %4 = load i32, i32* @state, align 4
  %5 = call i32 @OFFSET(i32 %2, i32 %3, i32 %4)
  %6 = load i32, i32* @TASK_THREAD_INFO, align 4
  %7 = load i32, i32* @task_struct, align 4
  %8 = load i32, i32* @stack, align 4
  %9 = call i32 @OFFSET(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @TASK_FLAGS, align 4
  %11 = load i32, i32* @task_struct, align 4
  %12 = load i32, i32* @flags, align 4
  %13 = call i32 @OFFSET(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @TASK_MM, align 4
  %15 = load i32, i32* @task_struct, align 4
  %16 = load i32, i32* @mm, align 4
  %17 = call i32 @OFFSET(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @TASK_PID, align 4
  %19 = load i32, i32* @task_struct, align 4
  %20 = load i32, i32* @pid, align 4
  %21 = call i32 @OFFSET(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @TASK_STRUCT_SIZE, align 4
  %23 = call i32 @DEFINE(i32 %22, i32 4)
  %24 = call i32 (...) @BLANK()
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

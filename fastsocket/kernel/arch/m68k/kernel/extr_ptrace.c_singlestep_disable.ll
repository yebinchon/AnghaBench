; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_ptrace.c_singlestep_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_ptrace.c_singlestep_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@PT_SR = common dso_local global i32 0, align 4
@TRACE_BITS = common dso_local global i32 0, align 4
@TIF_DELAYED_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @singlestep_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @singlestep_disable(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = load i32, i32* @PT_SR, align 4
  %6 = call i32 @get_reg(%struct.task_struct* %4, i32 %5)
  %7 = load i32, i32* @TRACE_BITS, align 4
  %8 = shl i32 %7, 16
  %9 = xor i32 %8, -1
  %10 = and i32 %6, %9
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = load i32, i32* @PT_SR, align 4
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @put_reg(%struct.task_struct* %12, i32 %13, i64 %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = load i32, i32* @TIF_DELAYED_TRACE, align 4
  %18 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %16, i32 %17)
  ret void
}

declare dso_local i32 @get_reg(%struct.task_struct*, i32) #1

declare dso_local i32 @put_reg(%struct.task_struct*, i32, i64) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

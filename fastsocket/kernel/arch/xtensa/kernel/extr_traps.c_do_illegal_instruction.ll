; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_traps.c_do_illegal_instruction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_traps.c_do_illegal_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Illegal instruction in kernel\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Illegal Instruction in '%s' (pid = %d, pc = %#010lx)\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@SIGILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_illegal_instruction(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = load i32, i32* @SIGKILL, align 4
  %5 = call i32 @__die_if_kernel(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %3, i32 %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %10 = call i32 @task_pid_nr(%struct.TYPE_4__* %9)
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %10, i32 %13)
  %15 = load i32, i32* @SIGILL, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %17 = call i32 @force_sig(i32 %15, %struct.TYPE_4__* %16)
  ret void
}

declare dso_local i32 @__die_if_kernel(i8*, %struct.pt_regs*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @force_sig(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

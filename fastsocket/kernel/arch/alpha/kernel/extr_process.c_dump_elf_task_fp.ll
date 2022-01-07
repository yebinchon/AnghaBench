; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_process.c_dump_elf_task_fp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_process.c_dump_elf_task_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.switch_stack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_elf_task_fp(i32* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.switch_stack*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %7 = call i64 @task_pt_regs(%struct.task_struct* %6)
  %8 = inttoptr i64 %7 to %struct.switch_stack*
  %9 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %8, i64 -1
  store %struct.switch_stack* %9, %struct.switch_stack** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %12 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memcpy(i32* %10, i32 %13, i32 256)
  ret i32 1
}

declare dso_local i64 @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

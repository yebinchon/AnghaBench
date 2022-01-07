; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_irq.c_do_IRQ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_irq.c_do_IRQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.irq_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pt_regs = type { i32 }

@SOFTIRQ_MASK = common dso_local global i32 0, align 4
@current_stack_pointer = common dso_local global i32 0, align 4
@hardirq_ctx = common dso_local global %union.irq_ctx** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_IRQ(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %7 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %6)
  store %struct.pt_regs* %7, %struct.pt_regs** %5, align 8
  %8 = call i32 (...) @irq_enter()
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @irq_demux(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @generic_handle_irq(i32 %11)
  %13 = call i32 (...) @irq_exit()
  %14 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %15 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %14)
  ret i32 1
}

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @irq_demux(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

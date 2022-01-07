; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_do_IRQ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_do_IRQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (...)* }
%struct.pt_regs = type { i32 }

@ppc_md = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@NO_IRQ = common dso_local global i32 0, align 4
@NO_IRQ_IGNORE = common dso_local global i32 0, align 4
@ppc_spurious_interrupts = common dso_local global i32 0, align 4
@FW_FEATURE_ISERIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_IRQ(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %5)
  store %struct.pt_regs* %6, %struct.pt_regs** %3, align 8
  %7 = call i32 (...) @irq_enter()
  %8 = call i32 (...) @check_stack_overflow()
  %9 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ppc_md, i32 0, i32 0), align 8
  %10 = call i32 (...) %9()
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NO_IRQ, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NO_IRQ_IGNORE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @handle_one_irq(i32 %19)
  br label %29

21:                                               ; preds = %14, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NO_IRQ_IGNORE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @ppc_spurious_interrupts, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @ppc_spurious_interrupts, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28, %18
  %30 = call i32 (...) @irq_exit()
  %31 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %32 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %31)
  ret void
}

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @check_stack_overflow(...) #1

declare dso_local i32 @handle_one_irq(i32) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

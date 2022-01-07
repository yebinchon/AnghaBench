; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/bcm1480/extr_smp.c_bcm1480_mailbox_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/bcm1480/extr_smp.c_bcm1480_mailbox_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K_BCM1480_INT_MBOX_0_0 = common dso_local global i32 0, align 4
@mailbox_0_regs = common dso_local global i32* null, align 8
@mailbox_0_clear_regs = common dso_local global i32* null, align 8
@SMP_CALL_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcm1480_mailbox_interrupt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @smp_processor_id()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @K_BCM1480_INT_MBOX_0_0, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @irq_to_desc(i32 %7)
  %9 = call i32 @kstat_incr_irqs_this_cpu(i32 %6, i32 %8)
  %10 = load i32*, i32** @mailbox_0_regs, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__raw_readq(i32 %14)
  %16 = ashr i32 %15, 48
  %17 = and i32 %16, 65535
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, 48
  %20 = load i32*, i32** @mailbox_0_clear_regs, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__raw_writeq(i32 %19, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SMP_CALL_FUNCTION, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %0
  %31 = call i32 (...) @smp_call_function_interrupt()
  br label %32

32:                                               ; preds = %30, %0
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(i32, i32) #1

declare dso_local i32 @irq_to_desc(i32) #1

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

declare dso_local i32 @smp_call_function_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

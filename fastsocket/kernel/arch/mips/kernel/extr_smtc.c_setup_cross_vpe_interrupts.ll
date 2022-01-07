; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smtc.c_setup_cross_vpe_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smtc.c_setup_cross_vpe_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_vint = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SMTC Kernel requires Vectored Interrupt support\00", align 1
@MIPS_CPU_IPI_IRQ = common dso_local global i32 0, align 4
@ipi_irq_dispatch = common dso_local global i32 0, align 4
@cpu_ipi_irq = common dso_local global i32 0, align 4
@irq_ipi = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setup_cross_vpe_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_cross_vpe_interrupts(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ult i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load i32, i32* @cpu_has_vint, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i32, i32* @MIPS_CPU_IPI_IRQ, align 4
  %13 = load i32, i32* @ipi_irq_dispatch, align 4
  %14 = call i32 @set_vi_handler(i32 %12, i32 %13)
  %15 = load i32, i32* @cpu_ipi_irq, align 4
  %16 = load i32, i32* @MIPS_CPU_IPI_IRQ, align 4
  %17 = shl i32 256, %16
  %18 = call i32 @setup_irq_smtc(i32 %15, i32* @irq_ipi, i32 %17)
  %19 = load i32, i32* @cpu_ipi_irq, align 4
  %20 = load i32, i32* @handle_percpu_irq, align 4
  %21 = call i32 @set_irq_handler(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %11, %5
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @set_vi_handler(i32, i32) #1

declare dso_local i32 @setup_irq_smtc(i32, i32*, i32) #1

declare dso_local i32 @set_irq_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

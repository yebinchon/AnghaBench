; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/nxp/pnx833x/common/extr_interrupts.c_pnx833x_disable_pic_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/nxp/pnx833x/common/extr_interrupts.c_pnx833x_disable_pic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNX833X_PIC_IRQ_BASE = common dso_local global i32 0, align 4
@pnx833x_irq_lock = common dso_local global i32 0, align 4
@IRQFLAG_DISABLED = common dso_local global i32 0, align 4
@irqflags = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pnx833x_disable_pic_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnx833x_disable_pic_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @PNX833X_PIC_IRQ_BASE, align 4
  %7 = sub i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @pnx833x_irq_lock, i64 %8)
  %10 = load i32, i32* @IRQFLAG_DISABLED, align 4
  %11 = load i32*, i32** @irqflags, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %10
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pnx833x_hard_disable_pic_irq(i32 %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @pnx833x_irq_lock, i64 %19)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pnx833x_hard_disable_pic_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

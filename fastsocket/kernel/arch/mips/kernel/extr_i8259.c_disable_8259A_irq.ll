; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_i8259.c_disable_8259A_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_i8259.c_disable_8259A_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I8259A_IRQ_BASE = common dso_local global i64 0, align 8
@i8259A_lock = common dso_local global i32 0, align 4
@cached_irq_mask = common dso_local global i32 0, align 4
@cached_slave_mask = common dso_local global i32 0, align 4
@PIC_SLAVE_IMR = common dso_local global i32 0, align 4
@cached_master_mask = common dso_local global i32 0, align 4
@PIC_MASTER_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @disable_8259A_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_8259A_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @I8259A_IRQ_BASE, align 8
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = sub nsw i64 %7, %5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @i8259A_lock, i64 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @cached_irq_mask, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @cached_irq_mask, align 4
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @cached_slave_mask, align 4
  %22 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %23 = call i32 @outb(i32 %21, i32 %22)
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @cached_master_mask, align 4
  %26 = load i32, i32* @PIC_MASTER_IMR, align 4
  %27 = call i32 @outb(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @i8259A_lock, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

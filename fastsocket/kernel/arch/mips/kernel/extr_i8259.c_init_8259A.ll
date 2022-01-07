; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_i8259.c_init_8259A.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_i8259.c_init_8259A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@i8259A_auto_eoi = common dso_local global i32 0, align 4
@i8259A_lock = common dso_local global i32 0, align 4
@PIC_MASTER_IMR = common dso_local global i32 0, align 4
@PIC_SLAVE_IMR = common dso_local global i32 0, align 4
@PIC_MASTER_CMD = common dso_local global i32 0, align 4
@I8259A_IRQ_BASE = common dso_local global i32 0, align 4
@PIC_CASCADE_IR = common dso_local global i32 0, align 4
@MASTER_ICW4_DEFAULT = common dso_local global i32 0, align 4
@PIC_ICW4_AEOI = common dso_local global i32 0, align 4
@PIC_SLAVE_CMD = common dso_local global i32 0, align 4
@SLAVE_ICW4_DEFAULT = common dso_local global i32 0, align 4
@disable_8259A_irq = common dso_local global i32 0, align 4
@i8259A_chip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@mask_and_ack_8259A = common dso_local global i32 0, align 4
@cached_master_mask = common dso_local global i32 0, align 4
@cached_slave_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_8259A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_8259A(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* @i8259A_auto_eoi, align 4
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @i8259A_lock, i64 %5)
  %7 = load i32, i32* @PIC_MASTER_IMR, align 4
  %8 = call i32 @outb(i32 255, i32 %7)
  %9 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %10 = call i32 @outb(i32 255, i32 %9)
  %11 = load i32, i32* @PIC_MASTER_CMD, align 4
  %12 = call i32 @outb_p(i32 17, i32 %11)
  %13 = load i32, i32* @I8259A_IRQ_BASE, align 4
  %14 = add nsw i32 %13, 0
  %15 = load i32, i32* @PIC_MASTER_IMR, align 4
  %16 = call i32 @outb_p(i32 %14, i32 %15)
  %17 = load i32, i32* @PIC_CASCADE_IR, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* @PIC_MASTER_IMR, align 4
  %20 = call i32 @outb_p(i32 %18, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @MASTER_ICW4_DEFAULT, align 4
  %25 = load i32, i32* @PIC_ICW4_AEOI, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PIC_MASTER_IMR, align 4
  %28 = call i32 @outb_p(i32 %26, i32 %27)
  br label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @MASTER_ICW4_DEFAULT, align 4
  %31 = load i32, i32* @PIC_MASTER_IMR, align 4
  %32 = call i32 @outb_p(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* @PIC_SLAVE_CMD, align 4
  %35 = call i32 @outb_p(i32 17, i32 %34)
  %36 = load i32, i32* @I8259A_IRQ_BASE, align 4
  %37 = add nsw i32 %36, 8
  %38 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %39 = call i32 @outb_p(i32 %37, i32 %38)
  %40 = load i32, i32* @PIC_CASCADE_IR, align 4
  %41 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %42 = call i32 @outb_p(i32 %40, i32 %41)
  %43 = load i32, i32* @SLAVE_ICW4_DEFAULT, align 4
  %44 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %45 = call i32 @outb_p(i32 %43, i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* @disable_8259A_irq, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i8259A_chip, i32 0, i32 0), align 4
  br label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @mask_and_ack_8259A, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i8259A_chip, i32 0, i32 0), align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = call i32 @udelay(i32 100)
  %54 = load i32, i32* @cached_master_mask, align 4
  %55 = load i32, i32* @PIC_MASTER_IMR, align 4
  %56 = call i32 @outb(i32 %54, i32 %55)
  %57 = load i32, i32* @cached_slave_mask, align 4
  %58 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %59 = call i32 @outb(i32 %57, i32 %58)
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* @i8259A_lock, i64 %60)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

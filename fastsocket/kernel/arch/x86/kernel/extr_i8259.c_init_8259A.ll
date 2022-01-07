; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_i8259.c_init_8259A.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_i8259.c_init_8259A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@i8259A_auto_eoi = common dso_local global i32 0, align 4
@i8259A_lock = common dso_local global i32 0, align 4
@PIC_MASTER_IMR = common dso_local global i32 0, align 4
@PIC_SLAVE_IMR = common dso_local global i32 0, align 4
@PIC_MASTER_CMD = common dso_local global i32 0, align 4
@IRQ0_VECTOR = common dso_local global i32 0, align 4
@PIC_CASCADE_IR = common dso_local global i32 0, align 4
@MASTER_ICW4_DEFAULT = common dso_local global i32 0, align 4
@PIC_ICW4_AEOI = common dso_local global i32 0, align 4
@PIC_SLAVE_CMD = common dso_local global i32 0, align 4
@IRQ8_VECTOR = common dso_local global i32 0, align 4
@SLAVE_ICW4_DEFAULT = common dso_local global i32 0, align 4
@disable_8259A_irq = common dso_local global i32 0, align 4
@i8259A_chip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@mask_and_ack_8259A = common dso_local global i32 0, align 4
@cached_master_mask = common dso_local global i32 0, align 4
@cached_slave_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_8259A(i32 %0) #0 {
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
  %12 = call i32 @outb_pic(i32 17, i32 %11)
  %13 = load i32, i32* @IRQ0_VECTOR, align 4
  %14 = load i32, i32* @PIC_MASTER_IMR, align 4
  %15 = call i32 @outb_pic(i32 %13, i32 %14)
  %16 = load i32, i32* @PIC_CASCADE_IR, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @PIC_MASTER_IMR, align 4
  %19 = call i32 @outb_pic(i32 %17, i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @MASTER_ICW4_DEFAULT, align 4
  %24 = load i32, i32* @PIC_ICW4_AEOI, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PIC_MASTER_IMR, align 4
  %27 = call i32 @outb_pic(i32 %25, i32 %26)
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @MASTER_ICW4_DEFAULT, align 4
  %30 = load i32, i32* @PIC_MASTER_IMR, align 4
  %31 = call i32 @outb_pic(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* @PIC_SLAVE_CMD, align 4
  %34 = call i32 @outb_pic(i32 17, i32 %33)
  %35 = load i32, i32* @IRQ8_VECTOR, align 4
  %36 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %37 = call i32 @outb_pic(i32 %35, i32 %36)
  %38 = load i32, i32* @PIC_CASCADE_IR, align 4
  %39 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %40 = call i32 @outb_pic(i32 %38, i32 %39)
  %41 = load i32, i32* @SLAVE_ICW4_DEFAULT, align 4
  %42 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %43 = call i32 @outb_pic(i32 %41, i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @disable_8259A_irq, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i8259A_chip, i32 0, i32 0), align 4
  br label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @mask_and_ack_8259A, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i8259A_chip, i32 0, i32 0), align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = call i32 @udelay(i32 100)
  %52 = load i32, i32* @cached_master_mask, align 4
  %53 = load i32, i32* @PIC_MASTER_IMR, align 4
  %54 = call i32 @outb(i32 %52, i32 %53)
  %55 = load i32, i32* @cached_slave_mask, align 4
  %56 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %57 = call i32 @outb(i32 %55, i32 %56)
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* @i8259A_lock, i64 %58)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outb_pic(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

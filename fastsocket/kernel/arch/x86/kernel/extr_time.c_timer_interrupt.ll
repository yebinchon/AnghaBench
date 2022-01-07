; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_time.c_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_time.c_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }

@irq0_irqs = common dso_local global i32 0, align 4
@timer_ack = common dso_local global i64 0, align 8
@i8259A_lock = common dso_local global i32 0, align 4
@PIC_MASTER_OCW3 = common dso_local global i32 0, align 4
@PIC_MASTER_POLL = common dso_local global i32 0, align 4
@global_clock_event = common dso_local global %struct.TYPE_3__* null, align 8
@MCA_bus = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @irq0_irqs, align 4
  %6 = call i32 @inc_irq_stat(i32 %5)
  %7 = load i64, i64* @timer_ack, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = call i32 @spin_lock(i32* @i8259A_lock)
  %11 = load i32, i32* @PIC_MASTER_OCW3, align 4
  %12 = call i32 @outb(i32 12, i32 %11)
  %13 = load i32, i32* @PIC_MASTER_POLL, align 4
  %14 = call i32 @inb(i32 %13)
  %15 = call i32 @spin_unlock(i32* @i8259A_lock)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @global_clock_event, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @global_clock_event, align 8
  %21 = call i32 %19(%struct.TYPE_3__* %20)
  %22 = load i64, i64* @MCA_bus, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = call i32 @inb_p(i32 97)
  %26 = or i32 %25, 128
  %27 = call i32 @outb_p(i32 %26, i32 97)
  br label %28

28:                                               ; preds = %24, %16
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %29
}

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

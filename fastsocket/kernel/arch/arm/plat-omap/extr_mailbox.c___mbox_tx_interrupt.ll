; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c___mbox_tx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c___mbox_tx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mbox*)* @__mbox_tx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mbox_tx_interrupt(%struct.omap_mbox* %0) #0 {
  %2 = alloca %struct.omap_mbox*, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %2, align 8
  %3 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %4 = load i32, i32* @IRQ_TX, align 4
  %5 = call i32 @disable_mbox_irq(%struct.omap_mbox* %3, i32 %4)
  %6 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %7 = load i32, i32* @IRQ_TX, align 4
  %8 = call i32 @ack_mbox_irq(%struct.omap_mbox* %6, i32 %7)
  %9 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %10 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @schedule_work(i32* %12)
  ret void
}

declare dso_local i32 @disable_mbox_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @ack_mbox_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

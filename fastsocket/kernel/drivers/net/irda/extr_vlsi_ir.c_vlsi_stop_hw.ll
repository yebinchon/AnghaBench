; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.c_vlsi_stop_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.c_vlsi_stop_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@VLSI_PIO_IRENABLE = common dso_local global i32 0, align 4
@VLSI_PIO_IRCFG = common dso_local global i32 0, align 4
@VLSI_PIO_IRINTR = common dso_local global i32 0, align 4
@IRINTR_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @vlsi_stop_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlsi_stop_hw(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @VLSI_PIO_IRENABLE, align 4
  %21 = add i32 %19, %20
  %22 = call i32 @outw(i32 0, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @VLSI_PIO_IRCFG, align 4
  %25 = add i32 %23, %24
  %26 = call i32 @outw(i32 0, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @VLSI_PIO_IRINTR, align 4
  %29 = add i32 %27, %28
  %30 = call i32 @outb(i32 0, i32 %29)
  %31 = call i32 (...) @wmb()
  %32 = load i32, i32* @IRINTR_INT_MASK, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @VLSI_PIO_IRINTR, align 4
  %35 = add i32 %33, %34
  %36 = call i32 @outb(i32 %32, i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = call i32 @vlsi_unarm_tx(%struct.TYPE_5__* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = call i32 @vlsi_unarm_rx(%struct.TYPE_5__* %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @vlsi_clear_regs(i32 %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = call i32 @vlsi_stop_clock(%struct.pci_dev* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = call i32 @pci_disable_device(%struct.pci_dev* %49)
  ret i32 0
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vlsi_unarm_tx(%struct.TYPE_5__*) #1

declare dso_local i32 @vlsi_unarm_rx(%struct.TYPE_5__*) #1

declare dso_local i32 @vlsi_clear_regs(i32) #1

declare dso_local i32 @vlsi_stop_clock(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

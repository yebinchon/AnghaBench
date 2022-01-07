; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_kvaser_pci.c_kvaser_pci_enable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_kvaser_pci.c_kvaser_pci_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sja1000_priv = type { %struct.kvaser_pci* }
%struct.kvaser_pci = type { i64 }

@S5920_INTCSR = common dso_local global i64 0, align 8
@INTCSR_ADDON_INTENABLE_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @kvaser_pci_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pci_enable_irq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca %struct.kvaser_pci*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.sja1000_priv* %7, %struct.sja1000_priv** %3, align 8
  %8 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %8, i32 0, i32 0
  %10 = load %struct.kvaser_pci*, %struct.kvaser_pci** %9, align 8
  store %struct.kvaser_pci* %10, %struct.kvaser_pci** %4, align 8
  %11 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %12 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @S5920_INTCSR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ioread32(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @INTCSR_ADDON_INTENABLE_M, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %22 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @S5920_INTCSR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 %20, i64 %25)
  ret void
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

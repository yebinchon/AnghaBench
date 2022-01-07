; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_disable_hwirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_disable_hwirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_pci = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HFCPCI_IRQ_ENABLE = common dso_local global i64 0, align 8
@HFCPCI_INT_M2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_pci*)* @disable_hwirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_hwirq(%struct.hfc_pci* %0) #0 {
  %2 = alloca %struct.hfc_pci*, align 8
  store %struct.hfc_pci* %0, %struct.hfc_pci** %2, align 8
  %3 = load i64, i64* @HFCPCI_IRQ_ENABLE, align 8
  %4 = trunc i64 %3 to i32
  %5 = xor i32 %4, -1
  %6 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %7 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %5
  store i32 %10, i32* %8, align 4
  %11 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %12 = load i32, i32* @HFCPCI_INT_M2, align 4
  %13 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %14 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @Write_hfc(%struct.hfc_pci* %11, i32 %12, i32 %16)
  ret void
}

declare dso_local i32 @Write_hfc(%struct.hfc_pci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

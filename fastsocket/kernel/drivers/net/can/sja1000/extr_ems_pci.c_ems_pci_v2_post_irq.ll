; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_ems_pci.c_ems_pci_v2_post_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_ems_pci.c_ems_pci_v2_post_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1000_priv = type { i64 }
%struct.ems_pci_card = type { i64 }

@PLX_ICSR_ENA_CLR = common dso_local global i32 0, align 4
@PLX_ICSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sja1000_priv*)* @ems_pci_v2_post_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ems_pci_v2_post_irq(%struct.sja1000_priv* %0) #0 {
  %2 = alloca %struct.sja1000_priv*, align 8
  %3 = alloca %struct.ems_pci_card*, align 8
  store %struct.sja1000_priv* %0, %struct.sja1000_priv** %2, align 8
  %4 = load %struct.sja1000_priv*, %struct.sja1000_priv** %2, align 8
  %5 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ems_pci_card*
  store %struct.ems_pci_card* %7, %struct.ems_pci_card** %3, align 8
  %8 = load i32, i32* @PLX_ICSR_ENA_CLR, align 4
  %9 = load %struct.ems_pci_card*, %struct.ems_pci_card** %3, align 8
  %10 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PLX_ICSR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

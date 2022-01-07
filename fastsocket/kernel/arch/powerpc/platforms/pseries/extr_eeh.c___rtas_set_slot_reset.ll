; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c___rtas_set_slot_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c___rtas_set_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32 }

@EEH_MODE_ISOLATED = common dso_local global i32 0, align 4
@PCI_BUS_RST_HOLD_TIME_MSEC = common dso_local global i32 0, align 4
@PCI_BUS_SETTLE_TIME_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dn*)* @__rtas_set_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rtas_set_slot_reset(%struct.pci_dn* %0) #0 {
  %2 = alloca %struct.pci_dn*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @eeh_set_pe_freset(i32 %6, i32* %3)
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %12 = call i32 @rtas_pci_slot_reset(%struct.pci_dn* %11, i32 3)
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %15 = call i32 @rtas_pci_slot_reset(%struct.pci_dn* %14, i32 1)
  br label %16

16:                                               ; preds = %13, %10
  %17 = call i32 @msleep(i32 250)
  %18 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EEH_MODE_ISOLATED, align 4
  %22 = call i32 @eeh_clear_slot(i32 %20, i32 %21)
  %23 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %24 = call i32 @rtas_pci_slot_reset(%struct.pci_dn* %23, i32 0)
  %25 = call i32 @msleep(i32 1800)
  ret void
}

declare dso_local i32 @eeh_set_pe_freset(i32, i32*) #1

declare dso_local i32 @rtas_pci_slot_reset(%struct.pci_dn*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @eeh_clear_slot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

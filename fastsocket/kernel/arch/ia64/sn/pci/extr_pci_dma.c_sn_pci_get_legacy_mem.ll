; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_pci_dma.c_sn_pci_get_legacy_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_pci_dma.c_sn_pci_get_legacy_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@__IA64_UNCACHED_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sn_pci_get_legacy_mem(%struct.pci_bus* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %4 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %5 = call %struct.TYPE_2__* @SN_PCIBUS_BUSSOFT(%struct.pci_bus* %4)
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i8* @ERR_PTR(i32 %9)
  store i8* %10, i8** %2, align 8
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %13 = call %struct.TYPE_2__* @SN_PCIBUS_BUSSOFT(%struct.pci_bus* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @__IA64_UNCACHED_OFFSET, align 4
  %17 = or i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %11, %7
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

declare dso_local %struct.TYPE_2__* @SN_PCIBUS_BUSSOFT(%struct.pci_bus*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

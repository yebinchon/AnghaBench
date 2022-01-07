; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_call_force_intr_provider.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_call_force_intr_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_pcibus_provider = type { i32 (%struct.sn_irq_info.0*)* }
%struct.sn_irq_info.0 = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.sn_irq_info = type { i64, i64 }

@sn_pci_provider = common dso_local global %struct.sn_pcibus_provider** null, align 8
@irq_desc = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sn_irq_info*)* @sn_call_force_intr_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sn_call_force_intr_provider(%struct.sn_irq_info* %0) #0 {
  %2 = alloca %struct.sn_irq_info*, align 8
  %3 = alloca %struct.sn_pcibus_provider*, align 8
  store %struct.sn_irq_info* %0, %struct.sn_irq_info** %2, align 8
  %4 = load %struct.sn_pcibus_provider**, %struct.sn_pcibus_provider*** @sn_pci_provider, align 8
  %5 = load %struct.sn_irq_info*, %struct.sn_irq_info** %2, align 8
  %6 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %4, i64 %7
  %9 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %8, align 8
  store %struct.sn_pcibus_provider* %9, %struct.sn_pcibus_provider** %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %11 = load %struct.sn_irq_info*, %struct.sn_irq_info** %2, align 8
  %12 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IRQ_DISABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %1
  %21 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %3, align 8
  %22 = icmp ne %struct.sn_pcibus_provider* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %3, align 8
  %25 = getelementptr inbounds %struct.sn_pcibus_provider, %struct.sn_pcibus_provider* %24, i32 0, i32 0
  %26 = load i32 (%struct.sn_irq_info.0*)*, i32 (%struct.sn_irq_info.0*)** %25, align 8
  %27 = icmp ne i32 (%struct.sn_irq_info.0*)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %3, align 8
  %30 = getelementptr inbounds %struct.sn_pcibus_provider, %struct.sn_pcibus_provider* %29, i32 0, i32 0
  %31 = load i32 (%struct.sn_irq_info.0*)*, i32 (%struct.sn_irq_info.0*)** %30, align 8
  %32 = load %struct.sn_irq_info*, %struct.sn_irq_info** %2, align 8
  %33 = bitcast %struct.sn_irq_info* %32 to %struct.sn_irq_info.0*
  %34 = call i32 %31(%struct.sn_irq_info.0* %33)
  br label %35

35:                                               ; preds = %28, %23, %20, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

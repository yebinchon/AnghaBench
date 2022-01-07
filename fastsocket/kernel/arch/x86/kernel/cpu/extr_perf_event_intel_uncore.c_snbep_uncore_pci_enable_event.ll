; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_snbep_uncore_pci_enable_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_snbep_uncore_pci_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }

@SNBEP_PMON_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @snbep_uncore_pci_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snbep_uncore_pci_enable_event(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %7 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %8 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SNBEP_PMON_CTL_EN, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @pci_write_config_dword(%struct.pci_dev* %12, i32 %15, i32 %20)
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

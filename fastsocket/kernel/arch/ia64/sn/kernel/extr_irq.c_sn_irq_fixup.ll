; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_irq_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_irq_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sn_irq_info = type { i32, i32, i64, i32, i32, i32 }

@sn_irq_info_lock = common dso_local global i32 0, align 4
@sn_irq_lh = common dso_local global i32* null, align 8
@IRQ_AFFINITY_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sn_irq_fixup(%struct.pci_dev* %0, %struct.sn_irq_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.sn_irq_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.sn_irq_info* %1, %struct.sn_irq_info** %4, align 8
  %8 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %9 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %12 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @nasid_slice_to_cpuid(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = call i32 @pci_dev_get(%struct.pci_dev* %17)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %21 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = call i32 @SN_PCIDEV_INFO(%struct.pci_dev* %22)
  %24 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %25 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = call i32 @spin_lock(i32* @sn_irq_info_lock)
  %27 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %28 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %27, i32 0, i32 3
  %29 = load i32*, i32** @sn_irq_lh, align 8
  %30 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %31 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @list_add_rcu(i32* %28, i32 %34)
  %36 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %37 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @reserve_irq_vector(i64 %38)
  %40 = call i32 @spin_unlock(i32* @sn_irq_info_lock)
  %41 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %42 = call i32 @register_intr_pda(%struct.sn_irq_info* %41)
  ret void
}

declare dso_local i32 @nasid_slice_to_cpuid(i32, i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @SN_PCIDEV_INFO(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32) #1

declare dso_local i32 @reserve_irq_vector(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @register_intr_pda(%struct.sn_irq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_irq_unfixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_irq_unfixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sn_irq_info = type { i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.sn_irq_info* }

@sn_irq_info_lock = common dso_local global i32 0, align 4
@sn_irq_lh = common dso_local global i32* null, align 8
@sn_irq_info_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sn_irq_unfixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.sn_irq_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i32 @SN_PCIDEV_BUSSOFT(%struct.pci_dev* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %52

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.TYPE_2__* @SN_PCIDEV_INFO(%struct.pci_dev* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  store %struct.sn_irq_info* %12, %struct.sn_irq_info** %3, align 8
  %13 = load %struct.sn_irq_info*, %struct.sn_irq_info** %3, align 8
  %14 = icmp ne %struct.sn_irq_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %52

16:                                               ; preds = %8
  %17 = load %struct.sn_irq_info*, %struct.sn_irq_info** %3, align 8
  %18 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.sn_irq_info*, %struct.sn_irq_info** %3, align 8
  %23 = call i32 @kfree(%struct.sn_irq_info* %22)
  br label %52

24:                                               ; preds = %16
  %25 = load %struct.sn_irq_info*, %struct.sn_irq_info** %3, align 8
  %26 = call i32 @unregister_intr_pda(%struct.sn_irq_info* %25)
  %27 = call i32 @spin_lock(i32* @sn_irq_info_lock)
  %28 = load %struct.sn_irq_info*, %struct.sn_irq_info** %3, align 8
  %29 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %28, i32 0, i32 2
  %30 = call i32 @list_del_rcu(i32* %29)
  %31 = call i32 @spin_unlock(i32* @sn_irq_info_lock)
  %32 = load i32*, i32** @sn_irq_lh, align 8
  %33 = load %struct.sn_irq_info*, %struct.sn_irq_info** %3, align 8
  %34 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @list_empty(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load %struct.sn_irq_info*, %struct.sn_irq_info** %3, align 8
  %42 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @free_irq_vector(i64 %43)
  br label %45

45:                                               ; preds = %40, %24
  %46 = load %struct.sn_irq_info*, %struct.sn_irq_info** %3, align 8
  %47 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %46, i32 0, i32 1
  %48 = load i32, i32* @sn_irq_info_free, align 4
  %49 = call i32 @call_rcu(i32* %47, i32 %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %51 = call i32 @pci_dev_put(%struct.pci_dev* %50)
  br label %52

52:                                               ; preds = %45, %21, %15, %7
  ret void
}

declare dso_local i32 @SN_PCIDEV_BUSSOFT(%struct.pci_dev*) #1

declare dso_local %struct.TYPE_2__* @SN_PCIDEV_INFO(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.sn_irq_info*) #1

declare dso_local i32 @unregister_intr_pda(%struct.sn_irq_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @list_empty(i32) #1

declare dso_local i32 @free_irq_vector(i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

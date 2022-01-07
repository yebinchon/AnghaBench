; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_free_devdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_free_devdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ipath_devdata = type { i32, i32 }

@ipath_devs_lock = common dso_local global i32 0, align 4
@unit_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.ipath_devdata*)* @ipath_free_devdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_free_devdata(%struct.pci_dev* %0, %struct.ipath_devdata* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.ipath_devdata*, align 8
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.ipath_devdata* %1, %struct.ipath_devdata** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call i32 @pci_set_drvdata(%struct.pci_dev* %6, i32* null)
  %8 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %9 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @ipath_devs_lock, i64 %13)
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @idr_remove(i32* @unit_table, i32 %17)
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %20 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %19, i32 0, i32 1
  %21 = call i32 @list_del(i32* %20)
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* @ipath_devs_lock, i64 %22)
  br label %24

24:                                               ; preds = %12, %2
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %26 = call i32 @vfree(%struct.ipath_devdata* %25)
  ret void
}

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vfree(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

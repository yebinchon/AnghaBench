; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-pci.c_flexcop_pci_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-pci.c_flexcop_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.flexcop_pci = type { i32, i32 }

@irq_chk_intv = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @flexcop_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexcop_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.flexcop_pci*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.flexcop_pci* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.flexcop_pci* %5, %struct.flexcop_pci** %3, align 8
  %6 = load i64, i64* @irq_chk_intv, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %10 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %9, i32 0, i32 1
  %11 = call i32 @cancel_delayed_work(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %14 = call i32 @flexcop_pci_dma_exit(%struct.flexcop_pci* %13)
  %15 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %16 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @flexcop_device_exit(i32 %17)
  %19 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %20 = call i32 @flexcop_pci_exit(%struct.flexcop_pci* %19)
  %21 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %22 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @flexcop_device_kfree(i32 %23)
  ret void
}

declare dso_local %struct.flexcop_pci* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flexcop_pci_dma_exit(%struct.flexcop_pci*) #1

declare dso_local i32 @flexcop_device_exit(i32) #1

declare dso_local i32 @flexcop_pci_exit(%struct.flexcop_pci*) #1

declare dso_local i32 @flexcop_device_kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

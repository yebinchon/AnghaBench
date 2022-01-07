; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_free_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_hba*)* @stex_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stex_free_irq(%struct.st_hba* %0) #0 {
  %2 = alloca %struct.st_hba*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.st_hba* %0, %struct.st_hba** %2, align 8
  %4 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %5 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %4, i32 0, i32 1
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.st_hba* %10)
  %12 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %13 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = call i32 @pci_disable_msi(%struct.pci_dev* %17)
  br label %19

19:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.st_hba*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

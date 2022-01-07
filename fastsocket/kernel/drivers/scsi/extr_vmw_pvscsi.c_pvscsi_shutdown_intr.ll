; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_shutdown_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_shutdown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_adapter*)* @pvscsi_shutdown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_shutdown_intr(%struct.pvscsi_adapter* %0) #0 {
  %2 = alloca %struct.pvscsi_adapter*, align 8
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %2, align 8
  %3 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %12 = call i32 @free_irq(i64 %10, %struct.pvscsi_adapter* %11)
  %13 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pci_disable_msi(i32 %23)
  %25 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  br label %40

27:                                               ; preds = %15
  %28 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pci_disable_msix(i32 %35)
  %37 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %20
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.pvscsi_adapter*) #1

declare dso_local i32 @pci_disable_msi(i32) #1

declare dso_local i32 @pci_disable_msix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

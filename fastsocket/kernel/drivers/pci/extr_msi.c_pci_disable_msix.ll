; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_msi.c_pci_disable_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_msi.c_pci_disable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.pci_dev_rh1* }
%struct.pci_dev_rh1 = type { i32* }

@pci_msi_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_disable_msix(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev_rh1*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1
  %6 = load %struct.pci_dev_rh1*, %struct.pci_dev_rh1** %5, align 8
  store %struct.pci_dev_rh1* %6, %struct.pci_dev_rh1** %3, align 8
  %7 = load i32, i32* @pci_msi_enable, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %9, %1
  br label %37

18:                                               ; preds = %12
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @pci_msix_shutdown(%struct.pci_dev* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @free_msi_irqs(%struct.pci_dev* %21)
  %23 = load %struct.pci_dev_rh1*, %struct.pci_dev_rh1** %3, align 8
  %24 = icmp ne %struct.pci_dev_rh1* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.pci_dev_rh1*, %struct.pci_dev_rh1** %3, align 8
  %27 = getelementptr inbounds %struct.pci_dev_rh1, %struct.pci_dev_rh1* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.pci_dev_rh1*, %struct.pci_dev_rh1** %3, align 8
  %32 = getelementptr inbounds %struct.pci_dev_rh1, %struct.pci_dev_rh1* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kset_unregister(i32* %33)
  %35 = load %struct.pci_dev_rh1*, %struct.pci_dev_rh1** %3, align 8
  %36 = getelementptr inbounds %struct.pci_dev_rh1, %struct.pci_dev_rh1* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %17, %30, %25, %18
  ret void
}

declare dso_local i32 @pci_msix_shutdown(%struct.pci_dev*) #1

declare dso_local i32 @free_msi_irqs(%struct.pci_dev*) #1

declare dso_local i32 @kset_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

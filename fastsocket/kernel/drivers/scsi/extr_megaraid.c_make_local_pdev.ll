; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_megaraid.c_make_local_pdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_megaraid.c_make_local_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.pci_dev**)* @make_local_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_local_pdev(%struct.TYPE_3__* %0, %struct.pci_dev** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.pci_dev**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.pci_dev** %1, %struct.pci_dev*** %5, align 8
  %6 = call %struct.pci_dev* (...) @alloc_pci_dev()
  %7 = load %struct.pci_dev**, %struct.pci_dev*** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %7, align 8
  %8 = load %struct.pci_dev**, %struct.pci_dev*** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %10 = icmp eq %struct.pci_dev* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.pci_dev**, %struct.pci_dev*** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(%struct.pci_dev* %14, i32 %17, i32 4)
  %19 = load %struct.pci_dev**, %struct.pci_dev*** %5, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %21 = call i32 @DMA_BIT_MASK(i32 32)
  %22 = call i64 @pci_set_dma_mask(%struct.pci_dev* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %12
  %25 = load %struct.pci_dev**, %struct.pci_dev*** %5, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %25, align 8
  %27 = call i32 @kfree_pci_dev(%struct.pci_dev* %26)
  store i32 -1, i32* %3, align 4
  br label %29

28:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %24, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.pci_dev* @alloc_pci_dev(...) #1

declare dso_local i32 @memcpy(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @kfree_pci_dev(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

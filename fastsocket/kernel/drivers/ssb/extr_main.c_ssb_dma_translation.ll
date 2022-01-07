; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_dma_translation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_dma_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SSB_TMSHIGH = common dso_local global i32 0, align 4
@SSB_TMSHIGH_DMA64 = common dso_local global i32 0, align 4
@SSB_PCIE_DMA_H32 = common dso_local global i32 0, align 4
@SSB_PCI_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_dma_translation(%struct.ssb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_device*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %3, align 8
  %4 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %5 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %35 [
    i32 128, label %9
    i32 129, label %10
  ]

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %12 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_is_pcie(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %20 = load i32, i32* @SSB_TMSHIGH, align 4
  %21 = call i32 @ssb_read32(%struct.ssb_device* %19, i32 %20)
  %22 = load i32, i32* @SSB_TMSHIGH_DMA64, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @SSB_PCIE_DMA_H32, align 4
  store i32 %26, i32* %2, align 4
  br label %39

27:                                               ; preds = %18, %10
  %28 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %29 = call i32 @ssb_dma_translation_special_bit(%struct.ssb_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @SSB_PCIE_DMA_H32, align 4
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @SSB_PCI_DMA, align 4
  store i32 %34, i32* %2, align 4
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %37 = call i32 @__ssb_dma_not_implemented(%struct.ssb_device* %36)
  br label %38

38:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33, %31, %25, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @pci_is_pcie(i32) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_dma_translation_special_bit(%struct.ssb_device*) #1

declare dso_local i32 @__ssb_dma_not_implemented(%struct.ssb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

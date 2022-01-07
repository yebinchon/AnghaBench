; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-gart_64.c_gart_iommu_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-gart_64.c_gart_iommu_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@no_agp = common dso_local global i64 0, align 8
@dma_ops = common dso_local global i32* null, align 8
@gart_dma_ops = common dso_local global i32 0, align 4
@AMD_NB_GART = common dso_local global i32 0, align 4
@AMD64_GARTAPERTURECTL = common dso_local global i32 0, align 4
@GARTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gart_iommu_shutdown() #0 {
  %1 = alloca %struct.pci_dev*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @no_agp, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32*, i32** @dma_ops, align 8
  %8 = icmp ne i32* %7, @gart_dma_ops
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %39

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @AMD_NB_GART, align 4
  %12 = call i32 @amd_nb_has_feature(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %39

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %2, align 4
  %18 = call i32 (...) @amd_nb_num()
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call %struct.TYPE_2__* @node_to_amd_nb(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %1, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %26 = load i32, i32* @AMD64_GARTAPERTURECTL, align 4
  %27 = call i32 @pci_read_config_dword(%struct.pci_dev* %25, i32 %26, i32* %3)
  %28 = load i32, i32* @GARTEN, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %33 = load i32, i32* @AMD64_GARTAPERTURECTL, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pci_write_config_dword(%struct.pci_dev* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %16

39:                                               ; preds = %9, %14, %16
  ret void
}

declare dso_local i32 @amd_nb_has_feature(i32) #1

declare dso_local i32 @amd_nb_num(...) #1

declare dso_local %struct.TYPE_2__* @node_to_amd_nb(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

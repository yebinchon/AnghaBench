; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_init_early_pSeries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_init_early_pSeries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i32, i32 }

@of_chosen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"linux,iommu-off\00", align 1
@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dma_direct_ops = common dso_local global i32 0, align 4
@FW_FEATURE_LPAR = common dso_local global i32 0, align 4
@FW_FEATURE_MULTITCE = common dso_local global i32 0, align 4
@tce_buildmulti_pSeriesLP = common dso_local global i32 0, align 4
@tce_freemulti_pSeriesLP = common dso_local global i32 0, align 4
@tce_build_pSeriesLP = common dso_local global i32 0, align 4
@tce_free_pSeriesLP = common dso_local global i32 0, align 4
@tce_get_pSeriesLP = common dso_local global i32 0, align 4
@pci_dma_bus_setup_pSeriesLP = common dso_local global i32* null, align 8
@pci_dma_dev_setup_pSeriesLP = common dso_local global i32* null, align 8
@dma_set_mask_pSeriesLP = common dso_local global i32 0, align 4
@tce_build_pSeries = common dso_local global i32 0, align 4
@tce_free_pSeries = common dso_local global i32 0, align 4
@tce_get_pseries = common dso_local global i32 0, align 4
@pci_dma_bus_setup_pSeries = common dso_local global i32* null, align 8
@pci_dma_dev_setup_pSeries = common dso_local global i32* null, align 8
@iommu_reconfig_nb = common dso_local global i32 0, align 4
@iommu_mem_nb = common dso_local global i32 0, align 4
@dma_iommu_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_init_early_pSeries() #0 {
  %1 = load i64, i64* @of_chosen, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i64, i64* @of_chosen, align 8
  %5 = call i64 @of_get_property(i64 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 1), align 8
  %8 = call i32 @set_pci_dma_ops(i32* @dma_direct_ops)
  br label %38

9:                                                ; preds = %3, %0
  %10 = load i32, i32* @FW_FEATURE_LPAR, align 4
  %11 = call i64 @firmware_has_feature(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i32, i32* @FW_FEATURE_MULTITCE, align 4
  %15 = call i64 @firmware_has_feature(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @tce_buildmulti_pSeriesLP, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 4), align 8
  %19 = load i32, i32* @tce_freemulti_pSeriesLP, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 3), align 4
  br label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @tce_build_pSeriesLP, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 4), align 8
  %22 = load i32, i32* @tce_free_pSeriesLP, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 3), align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @tce_get_pSeriesLP, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 2), align 8
  %25 = load i32*, i32** @pci_dma_bus_setup_pSeriesLP, align 8
  store i32* %25, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 1), align 8
  %26 = load i32*, i32** @pci_dma_dev_setup_pSeriesLP, align 8
  store i32* %26, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %27 = load i32, i32* @dma_set_mask_pSeriesLP, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 5), align 4
  br label %34

28:                                               ; preds = %9
  %29 = load i32, i32* @tce_build_pSeries, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 4), align 8
  %30 = load i32, i32* @tce_free_pSeries, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 3), align 4
  %31 = load i32, i32* @tce_get_pseries, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 2), align 8
  %32 = load i32*, i32** @pci_dma_bus_setup_pSeries, align 8
  store i32* %32, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 1), align 8
  %33 = load i32*, i32** @pci_dma_dev_setup_pSeries, align 8
  store i32* %33, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = call i32 @pSeries_reconfig_notifier_register(i32* @iommu_reconfig_nb)
  %36 = call i32 @register_memory_notifier(i32* @iommu_mem_nb)
  %37 = call i32 @set_pci_dma_ops(i32* @dma_iommu_ops)
  br label %38

38:                                               ; preds = %34, %7
  ret void
}

declare dso_local i64 @of_get_property(i64, i8*, i32*) #1

declare dso_local i32 @set_pci_dma_ops(i32*) #1

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @pSeries_reconfig_notifier_register(i32*) #1

declare dso_local i32 @register_memory_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

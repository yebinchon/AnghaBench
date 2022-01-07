; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_gtt_setup_scratch_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_gtt_setup_scratch_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.page*, i32, i32, i64 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_gtt_setup_scratch_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gtt_setup_scratch_page() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = load i32, i32* @GFP_DMA32, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @__GFP_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.page* @alloc_page(i32 %8)
  store %struct.page* %9, %struct.page** %2, align 8
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = icmp eq %struct.page* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %42

15:                                               ; preds = %0
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = call i32 @get_page(%struct.page* %16)
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @set_pages_uc(%struct.page* %18, i32 1)
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 3), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 2), align 4
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %27 = call i32 @pci_map_page(i32 %23, %struct.page* %24, i32 0, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 2), align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @pci_dma_mapping_error(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %1, align 4
  br label %42

35:                                               ; preds = %22
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 1), align 8
  br label %40

37:                                               ; preds = %15
  %38 = load %struct.page*, %struct.page** %2, align 8
  %39 = call i32 @page_to_phys(%struct.page* %38)
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 1), align 8
  br label %40

40:                                               ; preds = %37, %35
  %41 = load %struct.page*, %struct.page** %2, align 8
  store %struct.page* %41, %struct.page** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %32, %12
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @set_pages_uc(%struct.page*, i32) #1

declare dso_local i32 @pci_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

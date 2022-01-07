; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-gart_64.c_gart_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-gart_64.c_gart_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }
%struct.dma_attrs = type { i32 }

@x86_dma_fallback_dev = common dso_local global %struct.device zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)* @gart_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gart_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_attrs*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %13, align 8
  %16 = load %struct.page*, %struct.page** %9, align 8
  %17 = call i64 @page_to_phys(%struct.page* %16)
  %18 = load i64, i64* %10, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %15, align 8
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = icmp ne %struct.device* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store %struct.device* @x86_dma_fallback_dev, %struct.device** %8, align 8
  br label %23

23:                                               ; preds = %22, %6
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @need_iommu(%struct.device* %24, i64 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %15, align 8
  store i64 %30, i64* %7, align 8
  br label %39

31:                                               ; preds = %23
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @dma_map_area(%struct.device* %32, i64 %33, i64 %34, i32 %35, i32 0)
  store i64 %36, i64* %14, align 8
  %37 = call i32 (...) @flush_gart()
  %38 = load i64, i64* %14, align 8
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %31, %29
  %40 = load i64, i64* %7, align 8
  ret i64 %40
}

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @need_iommu(%struct.device*, i64, i64) #1

declare dso_local i64 @dma_map_area(%struct.device*, i64, i64, i32, i32) #1

declare dso_local i32 @flush_gart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

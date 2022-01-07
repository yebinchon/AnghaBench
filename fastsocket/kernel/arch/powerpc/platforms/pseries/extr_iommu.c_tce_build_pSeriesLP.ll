; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_iommu.c_tce_build_pSeriesLP.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_iommu.c_tce_build_pSeriesLP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64 }
%struct.dma_attrs = type { i32 }

@TCE_SHIFT = common dso_local global i32 0, align 4
@TCE_PCI_READ = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TCE_PCI_WRITE = common dso_local global i32 0, align 4
@TCE_RPN_MASK = common dso_local global i32 0, align 4
@TCE_RPN_SHIFT = common dso_local global i32 0, align 4
@H_NOT_ENOUGH_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"tce_build_pSeriesLP: plpar_tce_put failed. rc=%lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\09index   = 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\09tcenum  = 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\09tce val = 0x%llx\0A\00", align 1
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_table*, i64, i64, i64, i32, %struct.dma_attrs*)* @tce_build_pSeriesLP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tce_build_pSeriesLP(%struct.iommu_table* %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca %struct.iommu_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_attrs*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.iommu_table* %0, %struct.iommu_table** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %18, align 8
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %19, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @virt_to_abs(i64 %22)
  %24 = load i32, i32* @TCE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* @TCE_PCI_READ, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load i32, i32* @TCE_PCI_WRITE, align 4
  %32 = load i32, i32* %14, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %30, %6
  br label %35

35:                                               ; preds = %94, %34
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %9, align 8
  %38 = icmp ne i64 %36, 0
  br i1 %38, label %39, label %99

39:                                               ; preds = %35
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @TCE_RPN_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @TCE_RPN_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %40, %45
  store i32 %46, i32* %15, align 4
  %47 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %48 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* %8, align 8
  %52 = trunc i64 %51 to i32
  %53 = shl i32 %52, 12
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @plpar_tce_put(i32 %50, i32 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @H_NOT_ENOUGH_RESOURCES, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %39
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %17, align 4
  %64 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add nsw i64 %67, 1
  %69 = sub nsw i64 %66, %68
  %70 = call i32 @tce_free_pSeriesLP(%struct.iommu_table* %64, i64 %65, i64 %69)
  br label %99

71:                                               ; preds = %39
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = call i64 (...) @printk_ratelimit()
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %81 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i64, i64* %8, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @current, align 4
  %91 = call i64 (...) @__get_SP()
  %92 = inttoptr i64 %91 to i64*
  %93 = call i32 @show_stack(i32 %90, i64* %92)
  br label %94

94:                                               ; preds = %77, %74, %71
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %8, align 8
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %35

99:                                               ; preds = %62, %35
  %100 = load i32, i32* %17, align 4
  ret i32 %100
}

declare dso_local i32 @virt_to_abs(i64) #1

declare dso_local i32 @plpar_tce_put(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tce_free_pSeriesLP(%struct.iommu_table*, i64, i64) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @show_stack(i32, i64*) #1

declare dso_local i64 @__get_SP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

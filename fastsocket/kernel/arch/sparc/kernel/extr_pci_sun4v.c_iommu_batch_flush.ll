; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_iommu_batch_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_iommu_batch_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_batch = type { i64, i64, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_pbm_info* }
%struct.pci_pbm_info = type { i64 }

@.str = private unnamed_addr constant [83 x i8] c"iommu_batch_flush: IOMMU map of [%08lx:%08llx:%lx:%lx:%lx] failed with status %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_batch*)* @iommu_batch_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_batch_flush(%struct.iommu_batch* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iommu_batch*, align 8
  %4 = alloca %struct.pci_pbm_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.iommu_batch* %0, %struct.iommu_batch** %3, align 8
  %11 = load %struct.iommu_batch*, %struct.iommu_batch** %3, align 8
  %12 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %15, align 8
  store %struct.pci_pbm_info* %16, %struct.pci_pbm_info** %4, align 8
  %17 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %18 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.iommu_batch*, %struct.iommu_batch** %3, align 8
  %21 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.iommu_batch*, %struct.iommu_batch** %3, align 8
  %24 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.iommu_batch*, %struct.iommu_batch** %3, align 8
  %27 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load %struct.iommu_batch*, %struct.iommu_batch** %3, align 8
  %30 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %63, %1
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %32
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @HV_PCI_TSBID(i32 0, i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @__pa(i32* %41)
  %43 = call i64 @pci_sun4v_iommu_map(i64 %36, i32 %38, i64 %39, i64 %40, i32 %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp slt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %35
  %50 = call i64 (...) @printk_ratelimit()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @HV_PCI_TSBID(i32 0, i64 %54)
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @__pa(i32* %58)
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %55, i64 %56, i64 %57, i32 %59, i64 %60)
  br label %62

62:                                               ; preds = %52, %49
  store i64 -1, i64* %2, align 8
  br label %79

63:                                               ; preds = %35
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 %70
  store i32* %72, i32** %8, align 8
  br label %32

73:                                               ; preds = %32
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.iommu_batch*, %struct.iommu_batch** %3, align 8
  %76 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.iommu_batch*, %struct.iommu_batch** %3, align 8
  %78 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  store i64 0, i64* %2, align 8
  br label %79

79:                                               ; preds = %73, %62
  %80 = load i64, i64* %2, align 8
  ret i64 %80
}

declare dso_local i64 @pci_sun4v_iommu_map(i64, i32, i64, i64, i32) #1

declare dso_local i32 @HV_PCI_TSBID(i32, i64) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @printk(i8*, i64, i32, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

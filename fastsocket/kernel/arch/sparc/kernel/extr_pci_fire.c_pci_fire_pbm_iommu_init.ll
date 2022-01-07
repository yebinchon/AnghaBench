; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_fire.c_pci_fire_pbm_iommu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_fire.c_pci_fire_pbm_iommu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32, i64, i64, %struct.iommu* }
%struct.iommu = type { i64, i64, i32, i64, i64, i64 }

@FIRE_IOMMU_CONTROL = common dso_local global i64 0, align 8
@FIRE_IOMMU_TSBBASE = common dso_local global i64 0, align 8
@FIRE_IOMMU_FLUSH = common dso_local global i64 0, align 8
@FIRE_IOMMU_FLUSHINV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_pbm_info*)* @pci_fire_pbm_iommu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_fire_pbm_iommu_init(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_pbm_info*, align 8
  %4 = alloca %struct.iommu*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %3, align 8
  %10 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %11 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %10, i32 0, i32 3
  %12 = load %struct.iommu*, %struct.iommu** %11, align 8
  store %struct.iommu* %12, %struct.iommu** %4, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -1073741824, i32* %13, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 1073741824, i32* %14, align 4
  store i32 -1, i32* %6, align 4
  store i32 128, i32* %8, align 4
  %15 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %16 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FIRE_IOMMU_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.iommu*, %struct.iommu** %4, align 8
  %21 = getelementptr inbounds %struct.iommu, %struct.iommu* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %23 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FIRE_IOMMU_TSBBASE, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.iommu*, %struct.iommu** %4, align 8
  %28 = getelementptr inbounds %struct.iommu, %struct.iommu* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %30 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FIRE_IOMMU_FLUSH, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.iommu*, %struct.iommu** %4, align 8
  %35 = getelementptr inbounds %struct.iommu, %struct.iommu* %34, i32 0, i32 5
  store i64 %33, i64* %35, align 8
  %36 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %37 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FIRE_IOMMU_FLUSHINV, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.iommu*, %struct.iommu** %4, align 8
  %42 = getelementptr inbounds %struct.iommu, %struct.iommu* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %44 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 4259840
  %47 = load %struct.iommu*, %struct.iommu** %4, align 8
  %48 = getelementptr inbounds %struct.iommu, %struct.iommu* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load %struct.iommu*, %struct.iommu** %4, align 8
  %50 = getelementptr inbounds %struct.iommu, %struct.iommu* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @upa_writeq(i32 -1, i64 %51)
  %53 = load %struct.iommu*, %struct.iommu** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %54, 8
  %56 = mul nsw i32 %55, 1024
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %61 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @iommu_table_init(%struct.iommu* %53, i32 %56, i32 %58, i32 %59, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %1
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %91

68:                                               ; preds = %1
  %69 = load %struct.iommu*, %struct.iommu** %4, align 8
  %70 = getelementptr inbounds %struct.iommu, %struct.iommu* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @__pa(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = or i64 %73, 7
  %75 = trunc i64 %74 to i32
  %76 = load %struct.iommu*, %struct.iommu** %4, align 8
  %77 = getelementptr inbounds %struct.iommu, %struct.iommu* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @upa_writeq(i32 %75, i64 %78)
  %80 = load %struct.iommu*, %struct.iommu** %4, align 8
  %81 = getelementptr inbounds %struct.iommu, %struct.iommu* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @upa_readq(i64 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, 1795
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.iommu*, %struct.iommu** %4, align 8
  %88 = getelementptr inbounds %struct.iommu, %struct.iommu* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @upa_writeq(i32 %86, i64 %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %68, %66
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @upa_writeq(i32, i64) #1

declare dso_local i32 @iommu_table_init(%struct.iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @upa_readq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

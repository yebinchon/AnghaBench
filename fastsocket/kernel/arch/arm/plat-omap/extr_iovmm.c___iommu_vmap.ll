; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c___iommu_vmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c___iommu_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }
%struct.sg_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu*, i32, %struct.sg_table*, i8*, i64, i32)* @__iommu_vmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iommu_vmap(%struct.iommu* %0, i32 %1, %struct.sg_table* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.iommu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iommu* %0, %struct.iommu** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sg_table* %2, %struct.sg_table** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.iommu*, %struct.iommu** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @map_iommu_region(%struct.iommu* %13, i32 %14, %struct.sg_table* %15, i8* %16, i64 %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @map_iommu_region(%struct.iommu*, i32, %struct.sg_table*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

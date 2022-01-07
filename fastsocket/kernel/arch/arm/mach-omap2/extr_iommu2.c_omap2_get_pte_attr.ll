; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_iommu2.c_omap2_get_pte_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_iommu2.c_omap2_get_pte_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iotlb_entry = type { i32, i32, i32, i32 }

@MMU_CAM_PGSZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iotlb_entry*)* @omap2_get_pte_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_get_pte_attr(%struct.iotlb_entry* %0) #0 {
  %2 = alloca %struct.iotlb_entry*, align 8
  %3 = alloca i32, align 4
  store %struct.iotlb_entry* %0, %struct.iotlb_entry** %2, align 8
  %4 = load %struct.iotlb_entry*, %struct.iotlb_entry** %2, align 8
  %5 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 5
  store i32 %7, i32* %3, align 4
  %8 = load %struct.iotlb_entry*, %struct.iotlb_entry** %2, align 8
  %9 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.iotlb_entry*, %struct.iotlb_entry** %2, align 8
  %14 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 3
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.iotlb_entry*, %struct.iotlb_entry** %2, align 8
  %20 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MMU_CAM_PGSZ_4K, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 6
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

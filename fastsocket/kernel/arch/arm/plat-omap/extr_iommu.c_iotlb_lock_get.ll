; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu.c_iotlb_lock_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu.c_iotlb_lock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }
%struct.iotlb_lock = type { i32, i32 }

@MMU_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu*, %struct.iotlb_lock*)* @iotlb_lock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iotlb_lock_get(%struct.iommu* %0, %struct.iotlb_lock* %1) #0 {
  %3 = alloca %struct.iommu*, align 8
  %4 = alloca %struct.iotlb_lock*, align 8
  %5 = alloca i32, align 4
  store %struct.iommu* %0, %struct.iommu** %3, align 8
  store %struct.iotlb_lock* %1, %struct.iotlb_lock** %4, align 8
  %6 = load %struct.iommu*, %struct.iommu** %3, align 8
  %7 = load i32, i32* @MMU_LOCK, align 4
  %8 = call i32 @iommu_read_reg(%struct.iommu* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @MMU_LOCK_BASE(i32 %9)
  %11 = load %struct.iotlb_lock*, %struct.iotlb_lock** %4, align 8
  %12 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @MMU_LOCK_VICT(i32 %13)
  %15 = load %struct.iotlb_lock*, %struct.iotlb_lock** %4, align 8
  %16 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.iotlb_lock*, %struct.iotlb_lock** %4, align 8
  %18 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  ret void
}

declare dso_local i32 @iommu_read_reg(%struct.iommu*, i32) #1

declare dso_local i32 @MMU_LOCK_BASE(i32) #1

declare dso_local i32 @MMU_LOCK_VICT(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

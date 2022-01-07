; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_get_iommu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_get_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32 }
%struct.dmar_domain = type { i32, i32 }

@DOMAIN_FLAG_VIRTUAL_MACHINE = common dso_local global i32 0, align 4
@DOMAIN_FLAG_STATIC_IDENTITY = common dso_local global i32 0, align 4
@g_num_of_iommus = common dso_local global i32 0, align 4
@g_iommus = common dso_local global %struct.intel_iommu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_iommu* (%struct.dmar_domain*)* @domain_get_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_iommu* @domain_get_iommu(%struct.dmar_domain* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  %5 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %6 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DOMAIN_FLAG_VIRTUAL_MACHINE, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %12 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DOMAIN_FLAG_STATIC_IDENTITY, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %18 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @g_num_of_iommus, align 4
  %21 = call i32 @find_first_bit(i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @g_num_of_iommus, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %1
  store %struct.intel_iommu* null, %struct.intel_iommu** %2, align 8
  br label %35

29:                                               ; preds = %24
  %30 = load %struct.intel_iommu**, %struct.intel_iommu*** @g_iommus, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.intel_iommu*, %struct.intel_iommu** %30, i64 %32
  %34 = load %struct.intel_iommu*, %struct.intel_iommu** %33, align 8
  store %struct.intel_iommu* %34, %struct.intel_iommu** %2, align 8
  br label %35

35:                                               ; preds = %29, %28
  %36 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  ret %struct.intel_iommu* %36
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

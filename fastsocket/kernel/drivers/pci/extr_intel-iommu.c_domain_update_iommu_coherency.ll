; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_update_iommu_coherency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_update_iommu_coherency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dmar_domain = type { i32, i32 }

@g_num_of_iommus = common dso_local global i32 0, align 4
@g_iommus = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*)* @domain_update_iommu_coherency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_update_iommu_coherency(%struct.dmar_domain* %0) #0 {
  %2 = alloca %struct.dmar_domain*, align 8
  %3 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %2, align 8
  %4 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %5 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @g_num_of_iommus, align 4
  %8 = call i32 @find_first_bit(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @g_num_of_iommus, align 4
  %11 = icmp slt i32 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  %14 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %15 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %33, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @g_num_of_iommus, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_iommus, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ecap_coherent(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %32 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %41

33:                                               ; preds = %20
  %34 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %35 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @g_num_of_iommus, align 4
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @find_next_bit(i32 %36, i32 %37, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %16

41:                                               ; preds = %30, %16
  ret void
}

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @ecap_coherent(i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

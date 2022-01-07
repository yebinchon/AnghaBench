; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_update_iommu_snooping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_update_iommu_snooping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dmar_domain = type { i32, i32 }

@g_num_of_iommus = common dso_local global i32 0, align 4
@g_iommus = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*)* @domain_update_iommu_snooping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_update_iommu_snooping(%struct.dmar_domain* %0) #0 {
  %2 = alloca %struct.dmar_domain*, align 8
  %3 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %2, align 8
  %4 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %5 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %7 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @g_num_of_iommus, align 4
  %10 = call i32 @find_first_bit(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @g_num_of_iommus, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_iommus, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ecap_sc_support(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %27 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %36

28:                                               ; preds = %15
  %29 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %30 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @g_num_of_iommus, align 4
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @find_next_bit(i32 %31, i32 %32, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %11

36:                                               ; preds = %25, %11
  ret void
}

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @ecap_sc_support(i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

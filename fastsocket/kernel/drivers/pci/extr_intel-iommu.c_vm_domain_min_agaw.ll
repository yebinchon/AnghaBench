; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_vm_domain_min_agaw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_vm_domain_min_agaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dmar_domain = type { i32, i32 }

@g_num_of_iommus = common dso_local global i32 0, align 4
@g_iommus = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*)* @vm_domain_min_agaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_domain_min_agaw(%struct.dmar_domain* %0) #0 {
  %2 = alloca %struct.dmar_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %2, align 8
  %5 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %6 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %9 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @g_num_of_iommus, align 4
  %12 = call i32 @find_first_bit(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %35, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @g_num_of_iommus, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_iommus, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %18, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_iommus, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %27, %17
  %36 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %37 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @g_num_of_iommus, align 4
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @find_next_bit(i32 %38, i32 %39, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

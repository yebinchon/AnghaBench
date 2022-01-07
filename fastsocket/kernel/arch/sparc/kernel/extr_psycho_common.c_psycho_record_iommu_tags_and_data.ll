; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_psycho_common.c_psycho_record_iommu_tags_and_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_psycho_common.c_psycho_record_iommu_tags_and_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64 }

@PSYCHO_IOMMU_TAG = common dso_local global i64 0, align 8
@PSYCHO_IOMMU_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*, i32*, i32*)* @psycho_record_iommu_tags_and_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psycho_record_iommu_tags_and_data(%struct.pci_pbm_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.pci_pbm_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %52, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  %14 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %15 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @PSYCHO_IOMMU_TAG, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %22, %23
  %25 = call i32 @upa_readq(i64 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @PSYCHO_IOMMU_DATA, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  %35 = call i32 @upa_readq(i64 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @PSYCHO_IOMMU_TAG, align 8
  %42 = add i64 %40, %41
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %42, %43
  %45 = call i32 @upa_writeq(i32 0, i64 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @PSYCHO_IOMMU_DATA, align 8
  %48 = add i64 %46, %47
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %48, %49
  %51 = call i32 @upa_writeq(i32 0, i64 %50)
  br label %52

52:                                               ; preds = %13
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %10

55:                                               ; preds = %10
  ret void
}

declare dso_local i32 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

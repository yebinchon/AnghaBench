; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_domain_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_ops_domain = type { %struct.dma_ops_domain**, i64, i32 }

@APERTURE_MAX_RANGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_ops_domain*)* @dma_ops_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_ops_domain_free(%struct.dma_ops_domain* %0) #0 {
  %2 = alloca %struct.dma_ops_domain*, align 8
  %3 = alloca i32, align 4
  store %struct.dma_ops_domain* %0, %struct.dma_ops_domain** %2, align 8
  %4 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %5 = icmp ne %struct.dma_ops_domain* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %50

7:                                                ; preds = %1
  %8 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %9 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %8, i32 0, i32 2
  %10 = call i32 @free_pagetable(i32* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %44, %7
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @APERTURE_MAX_RANGES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %17 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %16, i32 0, i32 0
  %18 = load %struct.dma_ops_domain**, %struct.dma_ops_domain*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dma_ops_domain*, %struct.dma_ops_domain** %18, i64 %20
  %22 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %21, align 8
  %23 = icmp ne %struct.dma_ops_domain* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %44

25:                                               ; preds = %15
  %26 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %27 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %26, i32 0, i32 0
  %28 = load %struct.dma_ops_domain**, %struct.dma_ops_domain*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dma_ops_domain*, %struct.dma_ops_domain** %28, i64 %30
  %32 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %31, align 8
  %33 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @free_page(i64 %34)
  %36 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %37 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %36, i32 0, i32 0
  %38 = load %struct.dma_ops_domain**, %struct.dma_ops_domain*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dma_ops_domain*, %struct.dma_ops_domain** %38, i64 %40
  %42 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %41, align 8
  %43 = call i32 @kfree(%struct.dma_ops_domain* %42)
  br label %44

44:                                               ; preds = %25, %24
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %49 = call i32 @kfree(%struct.dma_ops_domain* %48)
  br label %50

50:                                               ; preds = %47, %6
  ret void
}

declare dso_local i32 @free_pagetable(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.dma_ops_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

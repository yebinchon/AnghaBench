; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_alloc_addresses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_alloc_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_ops_domain = type { i32, i64, i64 }

@bad_dma_address = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.dma_ops_domain*, i32, i64, i32)* @dma_ops_alloc_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_ops_alloc_addresses(%struct.device* %0, %struct.dma_ops_domain* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dma_ops_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.dma_ops_domain* %1, %struct.dma_ops_domain** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %18 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @dma_ops_area_alloc(%struct.device* %12, %struct.dma_ops_domain* %13, i32 %14, i64 %15, i32 %16, i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %25 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @dma_ops_area_alloc(%struct.device* %26, %struct.dma_ops_domain* %27, i32 %28, i64 %29, i32 %30, i64 0)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %33 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %23, %5
  %35 = load i64, i64* %11, align 8
  %36 = icmp eq i64 %35, -1
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @bad_dma_address, align 8
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = add i64 %43, %47
  %49 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %50 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ugt i64 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load i64, i64* %11, align 8
  ret i64 %55
}

declare dso_local i64 @dma_ops_area_alloc(%struct.device*, %struct.dma_ops_domain*, i32, i64, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

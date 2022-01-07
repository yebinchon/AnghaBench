; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_tt_unpopulate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_tt_unpopulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i32, i32 }
%struct.radeon_device = type { i32, i32, i32 }
%struct.radeon_ttm_tt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@TTM_PAGE_FLAG_SG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_tt*)* @radeon_ttm_tt_unpopulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_ttm_tt_unpopulate(%struct.ttm_tt* %0) #0 {
  %2 = alloca %struct.ttm_tt*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ttm_tt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %2, align 8
  %7 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %8 = bitcast %struct.ttm_tt* %7 to i8*
  %9 = bitcast i8* %8 to %struct.radeon_ttm_tt*
  store %struct.radeon_ttm_tt* %9, %struct.radeon_ttm_tt** %4, align 8
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %11 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %65

22:                                               ; preds = %1
  %23 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %24 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.radeon_device* @radeon_get_rdev(i32 %25)
  store %struct.radeon_device* %26, %struct.radeon_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %59, %22
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %30 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %27
  %34 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %33
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %4, align 8
  %48 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %57 = call i32 @pci_unmap_page(i32 %46, i64 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %43, %33
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %27

62:                                               ; preds = %27
  %63 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %64 = call i32 @ttm_pool_unpopulate(%struct.ttm_tt* %63)
  br label %65

65:                                               ; preds = %62, %21
  ret void
}

declare dso_local %struct.radeon_device* @radeon_get_rdev(i32) #1

declare dso_local i32 @pci_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @ttm_pool_unpopulate(%struct.ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

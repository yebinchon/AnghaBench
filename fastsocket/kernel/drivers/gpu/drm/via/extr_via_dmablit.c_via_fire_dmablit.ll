; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dmablit.c_via_fire_dmablit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dmablit.c_via_fire_dmablit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_3__ = type { i32 }

@VIA_PCI_DMA_MAR0 = common dso_local global i64 0, align 8
@VIA_PCI_DMA_DAR0 = common dso_local global i64 0, align 8
@VIA_PCI_DMA_CSR0 = common dso_local global i64 0, align 8
@VIA_DMA_CSR_DD = common dso_local global i32 0, align 4
@VIA_DMA_CSR_TD = common dso_local global i32 0, align 4
@VIA_DMA_CSR_DE = common dso_local global i32 0, align 4
@VIA_PCI_DMA_MR0 = common dso_local global i64 0, align 8
@VIA_DMA_MR_CM = common dso_local global i32 0, align 4
@VIA_DMA_MR_TDIE = common dso_local global i32 0, align 4
@VIA_PCI_DMA_BCR0 = common dso_local global i64 0, align 8
@VIA_PCI_DMA_DPR0 = common dso_local global i64 0, align 8
@VIA_DMA_CSR_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.TYPE_3__*, i32)* @via_fire_dmablit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_fire_dmablit(%struct.drm_device* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load i64, i64* @VIA_PCI_DMA_MAR0, align 8
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 16
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @VIA_WRITE(i64 %16, i32 0)
  %18 = load i64, i64* @VIA_PCI_DMA_DAR0, align 8
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 16
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i32 @VIA_WRITE(i64 %22, i32 0)
  %24 = load i64, i64* @VIA_PCI_DMA_CSR0, align 8
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* @VIA_DMA_CSR_DD, align 4
  %30 = load i32, i32* @VIA_DMA_CSR_TD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VIA_DMA_CSR_DE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @VIA_WRITE(i64 %28, i32 %33)
  %35 = load i64, i64* @VIA_PCI_DMA_MR0, align 8
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load i32, i32* @VIA_DMA_MR_CM, align 4
  %41 = load i32, i32* @VIA_DMA_MR_TDIE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @VIA_WRITE(i64 %39, i32 %42)
  %44 = load i64, i64* @VIA_PCI_DMA_BCR0, align 8
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 16
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i32 @VIA_WRITE(i64 %48, i32 0)
  %50 = load i64, i64* @VIA_PCI_DMA_DPR0, align 8
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, 16
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %50, %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @VIA_WRITE(i64 %54, i32 %57)
  %59 = call i32 (...) @DRM_WRITEMEMORYBARRIER()
  %60 = load i64, i64* @VIA_PCI_DMA_CSR0, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load i32, i32* @VIA_DMA_CSR_DE, align 4
  %66 = load i32, i32* @VIA_DMA_CSR_TS, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @VIA_WRITE(i64 %64, i32 %67)
  %69 = load i64, i64* @VIA_PCI_DMA_CSR0, align 8
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = call i32 @VIA_READ(i64 %73)
  ret void
}

declare dso_local i32 @VIA_WRITE(i64, i32) #1

declare dso_local i32 @DRM_WRITEMEMORYBARRIER(...) #1

declare dso_local i32 @VIA_READ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

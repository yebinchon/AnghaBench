; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dmablit.c_via_dmablit_engine_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dmablit.c_via_dmablit_engine_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }

@VIA_PCI_DMA_CSR0 = common dso_local global i64 0, align 8
@VIA_DMA_CSR_TD = common dso_local global i32 0, align 4
@VIA_DMA_CSR_DD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @via_dmablit_engine_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_dmablit_engine_off(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i64, i64* @VIA_PCI_DMA_CSR0, align 8
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = load i32, i32* @VIA_DMA_CSR_TD, align 4
  %16 = load i32, i32* @VIA_DMA_CSR_DD, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @VIA_WRITE(i64 %14, i32 %17)
  ret void
}

declare dso_local i32 @VIA_WRITE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

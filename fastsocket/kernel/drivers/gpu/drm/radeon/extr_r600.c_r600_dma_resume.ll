; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_dma_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_dma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, %struct.radeon_ring* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.radeon_ring = type { i32, i32, i32, i32, i32 }

@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@CHIP_RV770 = common dso_local global i64 0, align 8
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@RV770_SOFT_RESET_DMA = common dso_local global i32 0, align 4
@SOFT_RESET_DMA = common dso_local global i32 0, align 4
@DMA_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i32 0, align 4
@DMA_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i32 0, align 4
@DMA_RB_CNTL = common dso_local global i32 0, align 4
@DMA_RB_RPTR = common dso_local global i32 0, align 4
@DMA_RB_WPTR = common dso_local global i32 0, align 4
@DMA_RB_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_RB_RPTR_ADDR_LO = common dso_local global i32 0, align 4
@DMA_RPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_BASE = common dso_local global i32 0, align 4
@DMA_IB_ENABLE = common dso_local global i32 0, align 4
@DMA_IB_CNTL = common dso_local global i32 0, align 4
@DMA_CNTL = common dso_local global i32 0, align 4
@CTXEMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@DMA_MODE = common dso_local global i32 0, align 4
@DMA_RB_ENABLE = common dso_local global i32 0, align 4
@DMA_IB_SWAP_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_SWAP_ENABLE = common dso_local global i32 0, align 4
@DMA_RPTR_WRITEBACK_SWAP_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_dma_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 3
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %13 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %14 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %12, i64 %13
  store %struct.radeon_ring* %14, %struct.radeon_ring** %4, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_RV770, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %22 = load i32, i32* @RV770_SOFT_RESET_DMA, align 4
  %23 = call i32 @WREG32(i32 %21, i32 %22)
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %26 = load i32, i32* @SOFT_RESET_DMA, align 4
  %27 = call i32 @WREG32(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %30 = call i32 @RREG32(i32 %29)
  %31 = call i32 @udelay(i32 50)
  %32 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %33 = call i32 @WREG32(i32 %32, i32 0)
  %34 = load i32, i32* @DMA_SEM_INCOMPLETE_TIMER_CNTL, align 4
  %35 = call i32 @WREG32(i32 %34, i32 0)
  %36 = load i32, i32* @DMA_SEM_WAIT_FAIL_TIMER_CNTL, align 4
  %37 = call i32 @WREG32(i32 %36, i32 0)
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %39 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 4
  %42 = call i32 @drm_order(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @DMA_RB_CNTL, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  %48 = load i32, i32* @DMA_RB_RPTR, align 4
  %49 = call i32 @WREG32(i32 %48, i32 0)
  %50 = load i32, i32* @DMA_RB_WPTR, align 4
  %51 = call i32 @WREG32(i32 %50, i32 0)
  %52 = load i32, i32* @DMA_RB_RPTR_ADDR_HI, align 4
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @upper_32_bits(i32 %58)
  %60 = and i32 %59, 255
  %61 = call i32 @WREG32(i32 %52, i32 %60)
  %62 = load i32, i32* @DMA_RB_RPTR_ADDR_LO, align 4
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %68 = add nsw i32 %66, %67
  %69 = and i32 %68, -4
  %70 = call i32 @WREG32(i32 %62, i32 %69)
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %28
  %77 = load i32, i32* @DMA_RPTR_WRITEBACK_ENABLE, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %28
  %81 = load i32, i32* @DMA_RB_BASE, align 4
  %82 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %83 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 8
  %86 = call i32 @WREG32(i32 %81, i32 %85)
  %87 = load i32, i32* @DMA_IB_ENABLE, align 4
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @DMA_IB_CNTL, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @WREG32(i32 %88, i32 %89)
  %91 = load i32, i32* @DMA_CNTL, align 4
  %92 = call i32 @RREG32(i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @CTXEMPTY_INT_ENABLE, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* @DMA_CNTL, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @WREG32(i32 %97, i32 %98)
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CHIP_RV770, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %80
  %106 = load i32, i32* @DMA_MODE, align 4
  %107 = call i32 @WREG32(i32 %106, i32 1)
  br label %108

108:                                              ; preds = %105, %80
  %109 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %110 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %109, i32 0, i32 2
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* @DMA_RB_WPTR, align 4
  %112 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %113 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 2
  %116 = call i32 @WREG32(i32 %111, i32 %115)
  %117 = load i32, i32* @DMA_RB_RPTR, align 4
  %118 = call i32 @RREG32(i32 %117)
  %119 = ashr i32 %118, 2
  %120 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %121 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @DMA_RB_CNTL, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @DMA_RB_ENABLE, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @WREG32(i32 %122, i32 %125)
  %127 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %128 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %127, i32 0, i32 4
  store i32 1, i32* %128, align 4
  %129 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %130 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %131 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %132 = call i32 @radeon_ring_test(%struct.radeon_device* %129, i64 %130, %struct.radeon_ring* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %108
  %136 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %137 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %136, i32 0, i32 4
  store i32 0, i32* %137, align 4
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %2, align 4
  br label %146

139:                                              ; preds = %108
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %140, i32 %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %139, %135
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @drm_order(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

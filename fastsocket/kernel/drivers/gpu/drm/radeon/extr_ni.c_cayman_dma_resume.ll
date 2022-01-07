; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_dma_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_dma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.radeon_ring* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.radeon_ring = type { i32, i32, i32, i32, i32, i32 }

@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_DMA = common dso_local global i32 0, align 4
@SOFT_RESET_DMA1 = common dso_local global i32 0, align 4
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@DMA1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i32 0, align 4
@DMA_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i32 0, align 4
@DMA_RB_CNTL = common dso_local global i32 0, align 4
@DMA_RB_RPTR = common dso_local global i32 0, align 4
@DMA_RB_WPTR = common dso_local global i32 0, align 4
@DMA_RB_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@DMA_RB_RPTR_ADDR_LO = common dso_local global i32 0, align 4
@DMA_RPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_BASE = common dso_local global i32 0, align 4
@DMA_IB_ENABLE = common dso_local global i32 0, align 4
@CMD_VMID_FORCE = common dso_local global i32 0, align 4
@DMA_IB_CNTL = common dso_local global i32 0, align 4
@DMA_CNTL = common dso_local global i32 0, align 4
@CTXEMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_ENABLE = common dso_local global i32 0, align 4
@DMA_IB_SWAP_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_SWAP_ENABLE = common dso_local global i32 0, align 4
@DMA_RPTR_WRITEBACK_SWAP_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cayman_dma_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %13 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %14 = load i32, i32* @SOFT_RESET_DMA, align 4
  %15 = load i32, i32* @SOFT_RESET_DMA1, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @WREG32(i32 %13, i32 %16)
  %18 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %19 = call i32 @RREG32(i32 %18)
  %20 = call i32 @udelay(i32 50)
  %21 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %22 = call i32 @WREG32(i32 %21, i32 0)
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %175, %1
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %178

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 2
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %31, align 8
  %33 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %34 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %32, i64 %33
  store %struct.radeon_ring* %34, %struct.radeon_ring** %4, align 8
  %35 = load i32, i32* @DMA0_REGISTER_OFFSET, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  store i32 %36, i32* %10, align 4
  br label %45

37:                                               ; preds = %26
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 2
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %39, align 8
  %41 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %42 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %40, i64 %41
  store %struct.radeon_ring* %42, %struct.radeon_ring** %4, align 8
  %43 = load i32, i32* @DMA1_REGISTER_OFFSET, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @CAYMAN_WB_DMA1_RPTR_OFFSET, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %37, %29
  %46 = load i32, i32* @DMA_SEM_INCOMPLETE_TIMER_CNTL, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @WREG32(i32 %48, i32 0)
  %50 = load i32, i32* @DMA_SEM_WAIT_FAIL_TIMER_CNTL, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @WREG32(i32 %52, i32 0)
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 4
  %58 = call i32 @drm_order(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @DMA_RB_CNTL, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @WREG32(i32 %63, i32 %64)
  %66 = load i32, i32* @DMA_RB_RPTR, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @WREG32(i32 %68, i32 0)
  %70 = load i32, i32* @DMA_RB_WPTR, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @WREG32(i32 %72, i32 0)
  %74 = load i32, i32* @DMA_RB_RPTR_ADDR_HI, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %74, %75
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @upper_32_bits(i32 %82)
  %84 = and i32 %83, 255
  %85 = call i32 @WREG32(i32 %76, i32 %84)
  %86 = load i32, i32* @DMA_RB_RPTR_ADDR_LO, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %92, %93
  %95 = and i32 %94, -4
  %96 = call i32 @WREG32(i32 %88, i32 %95)
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %45
  %103 = load i32, i32* @DMA_RPTR_WRITEBACK_ENABLE, align 4
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %45
  %107 = load i32, i32* @DMA_RB_BASE, align 4
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %107, %108
  %110 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %111 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 8
  %114 = call i32 @WREG32(i32 %109, i32 %113)
  %115 = load i32, i32* @DMA_IB_ENABLE, align 4
  %116 = load i32, i32* @CMD_VMID_FORCE, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* @DMA_IB_CNTL, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @WREG32(i32 %120, i32 %121)
  %123 = load i32, i32* @DMA_CNTL, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %123, %124
  %126 = call i32 @RREG32(i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* @CTXEMPTY_INT_ENABLE, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %6, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* @DMA_CNTL, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @WREG32(i32 %133, i32 %134)
  %136 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %137 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %136, i32 0, i32 2
  store i32 0, i32* %137, align 4
  %138 = load i32, i32* @DMA_RB_WPTR, align 4
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %138, %139
  %141 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %142 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 2
  %145 = call i32 @WREG32(i32 %140, i32 %144)
  %146 = load i32, i32* @DMA_RB_RPTR, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %146, %147
  %149 = call i32 @RREG32(i32 %148)
  %150 = ashr i32 %149, 2
  %151 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %152 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @DMA_RB_CNTL, align 4
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @DMA_RB_ENABLE, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @WREG32(i32 %155, i32 %158)
  %160 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %161 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %160, i32 0, i32 4
  store i32 1, i32* %161, align 4
  %162 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %163 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %164 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %167 = call i32 @radeon_ring_test(%struct.radeon_device* %162, i32 %165, %struct.radeon_ring* %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %106
  %171 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %172 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %171, i32 0, i32 4
  store i32 0, i32* %172, align 4
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %2, align 4
  br label %185

174:                                              ; preds = %106
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  br label %23

178:                                              ; preds = %23
  %179 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %180 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %181 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %179, i32 %183)
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %178, %170
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @drm_order(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i32, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_disable_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_disable_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CP_INT_CNTL_RING0 = common dso_local global i64 0, align 8
@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING1 = common dso_local global i64 0, align 8
@CP_INT_CNTL_RING2 = common dso_local global i64 0, align 8
@DMA_CNTL = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@INT_MASK = common dso_local global i64 0, align 8
@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i64 0, align 8
@GRPH_INT_CONTROL = common dso_local global i64 0, align 8
@DACA_AUTODETECT_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD1_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPDx_INT_POLARITY = common dso_local global i32 0, align 4
@DC_HPD2_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD3_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD4_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD5_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD6_INT_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_disable_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_disable_interrupt_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i64, i64* @CP_INT_CNTL_RING0, align 8
  %5 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %6 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @WREG32(i64 %4, i32 %7)
  %9 = load i64, i64* @CP_INT_CNTL_RING1, align 8
  %10 = call i32 @WREG32(i64 %9, i32 0)
  %11 = load i64, i64* @CP_INT_CNTL_RING2, align 8
  %12 = call i32 @WREG32(i64 %11, i32 0)
  %13 = load i64, i64* @DMA_CNTL, align 8
  %14 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @RREG32(i64 %15)
  %17 = load i32, i32* @TRAP_ENABLE, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %3, align 4
  %20 = load i64, i64* @DMA_CNTL, align 8
  %21 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @WREG32(i64 %22, i32 %23)
  %25 = load i64, i64* @DMA_CNTL, align 8
  %26 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @RREG32(i64 %27)
  %29 = load i32, i32* @TRAP_ENABLE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %3, align 4
  %32 = load i64, i64* @DMA_CNTL, align 8
  %33 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @WREG32(i64 %34, i32 %35)
  %37 = load i64, i64* @GRBM_INT_CNTL, align 8
  %38 = call i32 @WREG32(i64 %37, i32 0)
  %39 = load i64, i64* @INT_MASK, align 8
  %40 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @WREG32(i64 %41, i32 0)
  %43 = load i64, i64* @INT_MASK, align 8
  %44 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @WREG32(i64 %45, i32 0)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 4
  br i1 %50, label %51, label %60

51:                                               ; preds = %1
  %52 = load i64, i64* @INT_MASK, align 8
  %53 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @WREG32(i64 %54, i32 0)
  %56 = load i64, i64* @INT_MASK, align 8
  %57 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @WREG32(i64 %58, i32 0)
  br label %60

60:                                               ; preds = %51, %1
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 6
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i64, i64* @INT_MASK, align 8
  %67 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @WREG32(i64 %68, i32 0)
  %70 = load i64, i64* @INT_MASK, align 8
  %71 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @WREG32(i64 %72, i32 0)
  br label %74

74:                                               ; preds = %65, %60
  %75 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %76 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @WREG32(i64 %77, i32 0)
  %79 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %80 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @WREG32(i64 %81, i32 0)
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 4
  br i1 %86, label %87, label %96

87:                                               ; preds = %74
  %88 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %89 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @WREG32(i64 %90, i32 0)
  %92 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %93 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @WREG32(i64 %94, i32 0)
  br label %96

96:                                               ; preds = %87, %74
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 6
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %103 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @WREG32(i64 %104, i32 0)
  %106 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %107 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @WREG32(i64 %108, i32 0)
  br label %110

110:                                              ; preds = %101, %96
  %111 = load i64, i64* @DACA_AUTODETECT_INT_CONTROL, align 8
  %112 = call i32 @WREG32(i64 %111, i32 0)
  %113 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %114 = call i32 @RREG32(i64 %113)
  %115 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %116 = and i32 %114, %115
  store i32 %116, i32* %3, align 4
  %117 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @WREG32(i64 %117, i32 %118)
  %120 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %121 = call i32 @RREG32(i64 %120)
  %122 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %3, align 4
  %124 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @WREG32(i64 %124, i32 %125)
  %127 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %128 = call i32 @RREG32(i64 %127)
  %129 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %130 = and i32 %128, %129
  store i32 %130, i32* %3, align 4
  %131 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @WREG32(i64 %131, i32 %132)
  %134 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %135 = call i32 @RREG32(i64 %134)
  %136 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %137 = and i32 %135, %136
  store i32 %137, i32* %3, align 4
  %138 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @WREG32(i64 %138, i32 %139)
  %141 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %142 = call i32 @RREG32(i64 %141)
  %143 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %144 = and i32 %142, %143
  store i32 %144, i32* %3, align 4
  %145 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @WREG32(i64 %145, i32 %146)
  %148 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %149 = call i32 @RREG32(i64 %148)
  %150 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %151 = and i32 %149, %150
  store i32 %151, i32* %3, align 4
  %152 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @WREG32(i64 %152, i32 %153)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @RREG32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

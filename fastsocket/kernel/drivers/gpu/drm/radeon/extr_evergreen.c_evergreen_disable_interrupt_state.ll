; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_disable_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_disable_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32 }

@CHIP_CAYMAN = common dso_local global i64 0, align 8
@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@CAYMAN_DMA1_CNTL = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@CP_INT_CNTL = common dso_local global i64 0, align 8
@DMA_CNTL = common dso_local global i64 0, align 8
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
@DACB_AUTODETECT_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD1_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPDx_INT_POLARITY = common dso_local global i32 0, align 4
@DC_HPD2_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD3_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD4_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD5_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD6_INT_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_disable_interrupt_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CHIP_CAYMAN, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %12 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %10, i32 0, i32 %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %15, i32 1, i32 0)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %17, i32 2, i32 0)
  %19 = load i64, i64* @CAYMAN_DMA1_CNTL, align 8
  %20 = call i32 @RREG32(i64 %19)
  %21 = load i32, i32* @TRAP_ENABLE, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %3, align 4
  %24 = load i64, i64* @CAYMAN_DMA1_CNTL, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @WREG32(i64 %24, i32 %25)
  br label %33

27:                                               ; preds = %1
  %28 = load i64, i64* @CP_INT_CNTL, align 8
  %29 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %30 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @WREG32(i64 %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %9
  %34 = load i64, i64* @DMA_CNTL, align 8
  %35 = call i32 @RREG32(i64 %34)
  %36 = load i32, i32* @TRAP_ENABLE, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %3, align 4
  %39 = load i64, i64* @DMA_CNTL, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @WREG32(i64 %39, i32 %40)
  %42 = load i64, i64* @GRBM_INT_CNTL, align 8
  %43 = call i32 @WREG32(i64 %42, i32 0)
  %44 = load i64, i64* @INT_MASK, align 8
  %45 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @WREG32(i64 %46, i32 0)
  %48 = load i64, i64* @INT_MASK, align 8
  %49 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @WREG32(i64 %50, i32 0)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 4
  br i1 %55, label %56, label %65

56:                                               ; preds = %33
  %57 = load i64, i64* @INT_MASK, align 8
  %58 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @WREG32(i64 %59, i32 0)
  %61 = load i64, i64* @INT_MASK, align 8
  %62 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @WREG32(i64 %63, i32 0)
  br label %65

65:                                               ; preds = %56, %33
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, 6
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i64, i64* @INT_MASK, align 8
  %72 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @WREG32(i64 %73, i32 0)
  %75 = load i64, i64* @INT_MASK, align 8
  %76 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @WREG32(i64 %77, i32 0)
  br label %79

79:                                               ; preds = %70, %65
  %80 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %81 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @WREG32(i64 %82, i32 0)
  %84 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %85 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @WREG32(i64 %86, i32 0)
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %90, 4
  br i1 %91, label %92, label %101

92:                                               ; preds = %79
  %93 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %94 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @WREG32(i64 %95, i32 0)
  %97 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %98 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @WREG32(i64 %99, i32 0)
  br label %101

101:                                              ; preds = %92, %79
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp sge i32 %104, 6
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %108 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @WREG32(i64 %109, i32 0)
  %111 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %112 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @WREG32(i64 %113, i32 0)
  br label %115

115:                                              ; preds = %106, %101
  %116 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %117 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* @DACA_AUTODETECT_INT_CONTROL, align 8
  %121 = call i32 @WREG32(i64 %120, i32 0)
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i64, i64* @DACB_AUTODETECT_INT_CONTROL, align 8
  %124 = call i32 @WREG32(i64 %123, i32 0)
  %125 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %126 = call i32 @RREG32(i64 %125)
  %127 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %128 = and i32 %126, %127
  store i32 %128, i32* %3, align 4
  %129 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @WREG32(i64 %129, i32 %130)
  %132 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %133 = call i32 @RREG32(i64 %132)
  %134 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %135 = and i32 %133, %134
  store i32 %135, i32* %3, align 4
  %136 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @WREG32(i64 %136, i32 %137)
  %139 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %140 = call i32 @RREG32(i64 %139)
  %141 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %142 = and i32 %140, %141
  store i32 %142, i32* %3, align 4
  %143 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @WREG32(i64 %143, i32 %144)
  %146 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %147 = call i32 @RREG32(i64 %146)
  %148 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %149 = and i32 %147, %148
  store i32 %149, i32* %3, align 4
  %150 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @WREG32(i64 %150, i32 %151)
  %153 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %154 = call i32 @RREG32(i64 %153)
  %155 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %3, align 4
  %157 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @WREG32(i64 %157, i32 %158)
  %160 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %161 = call i32 @RREG32(i64 %160)
  %162 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %163 = and i32 %161, %162
  store i32 %163, i32* %3, align 4
  %164 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @WREG32(i64 %164, i32 %165)
  ret void
}

declare dso_local i32 @cayman_cp_int_cntl_setup(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @ASIC_IS_DCE6(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

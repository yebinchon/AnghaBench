; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_disable_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_disable_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CP_INT_CNTL = common dso_local global i64 0, align 8
@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@DMA_CNTL = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@DxMODE_INT_MASK = common dso_local global i64 0, align 8
@D1GRPH_INTERRUPT_CONTROL = common dso_local global i64 0, align 8
@D2GRPH_INTERRUPT_CONTROL = common dso_local global i64 0, align 8
@DCE3_DACA_AUTODETECT_INT_CONTROL = common dso_local global i64 0, align 8
@DCE3_DACB_AUTODETECT_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD1_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPDx_INT_POLARITY = common dso_local global i32 0, align 4
@DC_HPD2_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD3_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD4_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD5_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD6_INT_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@DCE3_HDMI_OFFSET0 = common dso_local global i64 0, align 8
@HDMI0_AZ_FORMAT_WTRIG_MASK = common dso_local global i32 0, align 4
@DCE3_HDMI_OFFSET1 = common dso_local global i64 0, align 8
@HDMI0_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@DCE3_HDMI1_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@DACA_AUTODETECT_INT_CONTROL = common dso_local global i64 0, align 8
@DACB_AUTODETECT_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HOT_PLUG_DETECT1_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HOT_PLUG_DETECTx_INT_POLARITY = common dso_local global i32 0, align 4
@DC_HOT_PLUG_DETECT2_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HOT_PLUG_DETECT3_INT_CONTROL = common dso_local global i64 0, align 8
@HDMI1_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r600_disable_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_disable_interrupt_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i64, i64* @CP_INT_CNTL, align 8
  %5 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %6 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @WREG32(i64 %4, i32 %7)
  %9 = load i64, i64* @DMA_CNTL, align 8
  %10 = call i32 @RREG32(i64 %9)
  %11 = load i32, i32* @TRAP_ENABLE, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* @DMA_CNTL, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @WREG32(i64 %14, i32 %15)
  %17 = load i64, i64* @GRBM_INT_CNTL, align 8
  %18 = call i32 @WREG32(i64 %17, i32 0)
  %19 = load i64, i64* @DxMODE_INT_MASK, align 8
  %20 = call i32 @WREG32(i64 %19, i32 0)
  %21 = load i64, i64* @D1GRPH_INTERRUPT_CONTROL, align 8
  %22 = call i32 @WREG32(i64 %21, i32 0)
  %23 = load i64, i64* @D2GRPH_INTERRUPT_CONTROL, align 8
  %24 = call i32 @WREG32(i64 %23, i32 0)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %121

28:                                               ; preds = %1
  %29 = load i64, i64* @DCE3_DACA_AUTODETECT_INT_CONTROL, align 8
  %30 = call i32 @WREG32(i64 %29, i32 0)
  %31 = load i64, i64* @DCE3_DACB_AUTODETECT_INT_CONTROL, align 8
  %32 = call i32 @WREG32(i64 %31, i32 0)
  %33 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %34 = call i32 @RREG32(i64 %33)
  %35 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %3, align 4
  %37 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @WREG32(i64 %37, i32 %38)
  %40 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %41 = call i32 @RREG32(i64 %40)
  %42 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %3, align 4
  %44 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @WREG32(i64 %44, i32 %45)
  %47 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %48 = call i32 @RREG32(i64 %47)
  %49 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %3, align 4
  %51 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @WREG32(i64 %51, i32 %52)
  %54 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %55 = call i32 @RREG32(i64 %54)
  %56 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %3, align 4
  %58 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @WREG32(i64 %58, i32 %59)
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = call i64 @ASIC_IS_DCE32(%struct.radeon_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %28
  %65 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %66 = call i32 @RREG32(i64 %65)
  %67 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %3, align 4
  %69 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @WREG32(i64 %69, i32 %70)
  %72 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %73 = call i32 @RREG32(i64 %72)
  %74 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %3, align 4
  %76 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @WREG32(i64 %76, i32 %77)
  %79 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %80 = load i64, i64* @DCE3_HDMI_OFFSET0, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @RREG32(i64 %81)
  %83 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  store i32 %85, i32* %3, align 4
  %86 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %87 = load i64, i64* @DCE3_HDMI_OFFSET0, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @WREG32(i64 %88, i32 %89)
  %91 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %92 = load i64, i64* @DCE3_HDMI_OFFSET1, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @RREG32(i64 %93)
  %95 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  store i32 %97, i32* %3, align 4
  %98 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %99 = load i64, i64* @DCE3_HDMI_OFFSET1, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @WREG32(i64 %100, i32 %101)
  br label %120

103:                                              ; preds = %28
  %104 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %105 = call i32 @RREG32(i64 %104)
  %106 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  store i32 %108, i32* %3, align 4
  %109 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @WREG32(i64 %109, i32 %110)
  %112 = load i64, i64* @DCE3_HDMI1_AUDIO_PACKET_CONTROL, align 8
  %113 = call i32 @RREG32(i64 %112)
  %114 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  store i32 %116, i32* %3, align 4
  %117 = load i64, i64* @DCE3_HDMI1_AUDIO_PACKET_CONTROL, align 8
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @WREG32(i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %103, %64
  br label %163

121:                                              ; preds = %1
  %122 = load i64, i64* @DACA_AUTODETECT_INT_CONTROL, align 8
  %123 = call i32 @WREG32(i64 %122, i32 0)
  %124 = load i64, i64* @DACB_AUTODETECT_INT_CONTROL, align 8
  %125 = call i32 @WREG32(i64 %124, i32 0)
  %126 = load i64, i64* @DC_HOT_PLUG_DETECT1_INT_CONTROL, align 8
  %127 = call i32 @RREG32(i64 %126)
  %128 = load i32, i32* @DC_HOT_PLUG_DETECTx_INT_POLARITY, align 4
  %129 = and i32 %127, %128
  store i32 %129, i32* %3, align 4
  %130 = load i64, i64* @DC_HOT_PLUG_DETECT1_INT_CONTROL, align 8
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @WREG32(i64 %130, i32 %131)
  %133 = load i64, i64* @DC_HOT_PLUG_DETECT2_INT_CONTROL, align 8
  %134 = call i32 @RREG32(i64 %133)
  %135 = load i32, i32* @DC_HOT_PLUG_DETECTx_INT_POLARITY, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %3, align 4
  %137 = load i64, i64* @DC_HOT_PLUG_DETECT2_INT_CONTROL, align 8
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @WREG32(i64 %137, i32 %138)
  %140 = load i64, i64* @DC_HOT_PLUG_DETECT3_INT_CONTROL, align 8
  %141 = call i32 @RREG32(i64 %140)
  %142 = load i32, i32* @DC_HOT_PLUG_DETECTx_INT_POLARITY, align 4
  %143 = and i32 %141, %142
  store i32 %143, i32* %3, align 4
  %144 = load i64, i64* @DC_HOT_PLUG_DETECT3_INT_CONTROL, align 8
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @WREG32(i64 %144, i32 %145)
  %147 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %148 = call i32 @RREG32(i64 %147)
  %149 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %150 = xor i32 %149, -1
  %151 = and i32 %148, %150
  store i32 %151, i32* %3, align 4
  %152 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @WREG32(i64 %152, i32 %153)
  %155 = load i64, i64* @HDMI1_AUDIO_PACKET_CONTROL, align 8
  %156 = call i32 @RREG32(i64 %155)
  %157 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  store i32 %159, i32* %3, align 4
  %160 = load i64, i64* @HDMI1_AUDIO_PACKET_CONTROL, align 8
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @WREG32(i64 %160, i32 %161)
  br label %163

163:                                              ; preds = %121, %120
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE32(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

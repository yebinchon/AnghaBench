; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_bios.c_legacy_read_disabled_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_bios.c_legacy_read_disabled_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RADEON_SEPROM_CNTL1 = common dso_local global i32 0, align 4
@RADEON_VIPH_CONTROL = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RV370_BUS_CNTL = common dso_local global i32 0, align 4
@RADEON_BUS_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_EXT_CNTL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_ATI_RADEON_QY = common dso_local global i64 0, align 8
@RADEON_FP2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_SINGLE_CRTC = common dso_local global i32 0, align 4
@RADEON_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_SCK_PRESCALE_MASK = common dso_local global i32 0, align 4
@RADEON_SCK_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@RADEON_VIPH_EN = common dso_local global i32 0, align 4
@RV370_BUS_BIOS_DIS_ROM = common dso_local global i32 0, align 4
@RADEON_BUS_BIOS_DIS_ROM = common dso_local global i32 0, align 4
@RADEON_CRTC_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_DISP_REQ_EN_B = common dso_local global i32 0, align 4
@RADEON_CRTC_EXT_DISP_EN = common dso_local global i32 0, align 4
@RADEON_CRTC2_EN = common dso_local global i32 0, align 4
@RADEON_CRTC2_DISP_REQ_EN_B = common dso_local global i32 0, align 4
@RADEON_CRTC_CRT_ON = common dso_local global i32 0, align 4
@RADEON_CRTC_SYNC_TRISTAT = common dso_local global i32 0, align 4
@RADEON_CRTC_DISPLAY_DIS = common dso_local global i32 0, align 4
@RADEON_FP2_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @legacy_read_disabled_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_read_disabled_bios(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %11 = load i32, i32* @RADEON_SEPROM_CNTL1, align 4
  %12 = call i32 @RREG32(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %14 = call i32 @RREG32(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RADEON_IS_PCIE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @RV370_BUS_CNTL, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %29 = call i32 @RREG32(i32 %28)
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCI_DEVICE_ID_ATI_RADEON_QY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %41 = call i32 @RREG32(i32 %40)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %27
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %51 = call i32 @RREG32(i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32, i32* @RADEON_SEPROM_CNTL1, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @RADEON_SCK_PRESCALE_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* @RADEON_SCK_PRESCALE_SHIFT, align 4
  %59 = shl i32 12, %58
  %60 = or i32 %57, %59
  %61 = call i32 @WREG32(i32 %53, i32 %60)
  %62 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @RADEON_VIPH_EN, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @WREG32(i32 %62, i32 %66)
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @RADEON_IS_PCIE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %52
  %75 = load i32, i32* @RV370_BUS_CNTL, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @RV370_BUS_BIOS_DIS_ROM, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = call i32 @WREG32(i32 %75, i32 %79)
  br label %88

81:                                               ; preds = %52
  %82 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @RADEON_BUS_BIOS_DIS_ROM, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @WREG32(i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %81, %74
  %89 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @RADEON_CRTC_EN, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = load i32, i32* @RADEON_CRTC_DISP_REQ_EN_B, align 4
  %95 = load i32, i32* @RADEON_CRTC_EXT_DISP_EN, align 4
  %96 = or i32 %94, %95
  %97 = or i32 %93, %96
  %98 = call i32 @WREG32(i32 %89, i32 %97)
  %99 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %88
  %106 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @RADEON_CRTC2_EN, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = load i32, i32* @RADEON_CRTC2_DISP_REQ_EN_B, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @WREG32(i32 %106, i32 %112)
  br label %114

114:                                              ; preds = %105, %88
  %115 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @RADEON_CRTC_CRT_ON, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = load i32, i32* @RADEON_CRTC_SYNC_TRISTAT, align 4
  %121 = load i32, i32* @RADEON_CRTC_DISPLAY_DIS, align 4
  %122 = or i32 %120, %121
  %123 = or i32 %119, %122
  %124 = call i32 @WREG32(i32 %115, i32 %123)
  %125 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PCI_DEVICE_ID_ATI_RADEON_QY, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %114
  %133 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @RADEON_FP2_ON, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  %138 = call i32 @WREG32(i32 %133, i32 %137)
  br label %139

139:                                              ; preds = %132, %114
  %140 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %141 = call i32 @radeon_read_bios(%struct.radeon_device* %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* @RADEON_SEPROM_CNTL1, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @WREG32(i32 %142, i32 %143)
  %145 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @WREG32(i32 %145, i32 %146)
  %148 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @RADEON_IS_PCIE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %139
  %155 = load i32, i32* @RV370_BUS_CNTL, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @WREG32(i32 %155, i32 %156)
  br label %162

158:                                              ; preds = %139
  %159 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @WREG32(i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %154
  %163 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @WREG32(i32 %163, i32 %164)
  %166 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %162
  %173 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @WREG32(i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %162
  %177 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @WREG32(i32 %177, i32 %178)
  %180 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %181 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %180, i32 0, i32 1
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @PCI_DEVICE_ID_ATI_RADEON_QY, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %176
  %188 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @WREG32(i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %187, %176
  %192 = load i32, i32* %10, align 4
  ret i32 %192
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_read_bios(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

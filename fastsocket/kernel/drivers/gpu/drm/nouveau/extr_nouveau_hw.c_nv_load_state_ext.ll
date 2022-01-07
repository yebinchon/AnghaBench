; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.c_nv_load_state_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.c_nv_load_state_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_mode_state = type { %struct.nv04_crtc_reg* }
%struct.nv04_crtc_reg = type { i64, i64, i64, i64, i64, i64, i64, i64, i32* }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_device = type { i64 }
%struct.nouveau_timer = type { i32 }

@NV_10 = common dso_local global i64 0, align 8
@NV_PCRTC_ENGINE_CTRL = common dso_local global i32 0, align 4
@NV_PVIDEO_STOP = common dso_local global i32 0, align 4
@NV_PVIDEO_INTR_EN = common dso_local global i32 0, align 4
@NV_PBUS_POWERCTRL_2 = common dso_local global i32 0, align 4
@NV_PCRTC_CURSOR_CONFIG = common dso_local global i32 0, align 4
@NV_PCRTC_830 = common dso_local global i32 0, align 4
@NV_PCRTC_834 = common dso_local global i32 0, align 4
@NV_30 = common dso_local global i64 0, align 8
@NV_PCRTC_GPIO_EXT = common dso_local global i32 0, align 4
@NV_40 = common dso_local global i64 0, align 8
@NV_PCRTC_850 = common dso_local global i32 0, align 4
@NV_PRAMDAC_900 = common dso_local global i32 0, align 4
@NV10_PCRTC_CONFIG_START_ADDRESS_HSYNC = common dso_local global i64 0, align 8
@NV_PCRTC_CONFIG = common dso_local global i32 0, align 4
@NV_CIO_CRE_RPC0_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_RPC1_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_LSR_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_PIXEL_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_LCD__INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_HEB__INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_ENH_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_FF_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_FFLWM__INDEX = common dso_local global i32 0, align 4
@NV_20 = common dso_local global i64 0, align 8
@NV_CIO_CRE_47 = common dso_local global i32 0, align 4
@NV_CIO_CRE_49 = common dso_local global i32 0, align 4
@NV_CIO_CRE_HCUR_ADDR0_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_HCUR_ADDR1_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_HCUR_ADDR2_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_ILACE__INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_SCRATCH3__INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_SCRATCH4__INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_EBR_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_CSB = common dso_local global i32 0, align 4
@NV_CIO_CRE_4B = common dso_local global i32 0, align 4
@NV_CIO_CRE_TVOUT_LATENCY = common dso_local global i32 0, align 4
@NV_PRMCIO_INP0__COLOR = common dso_local global i32 0, align 4
@NV_CIO_CRE_42 = common dso_local global i32 0, align 4
@NV_CIO_CRE_53 = common dso_local global i32 0, align 4
@NV_CIO_CRE_54 = common dso_local global i32 0, align 4
@NV_CIO_CRE_59 = common dso_local global i32 0, align 4
@NV_CIO_CRE_5B = common dso_local global i32 0, align 4
@NV_CIO_CRE_85 = common dso_local global i32 0, align 4
@NV_CIO_CRE_86 = common dso_local global i32 0, align 4
@NV_PCRTC_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.nv04_mode_state*)* @nv_load_state_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_load_state_ext(%struct.drm_device* %0, i32 %1, %struct.nv04_mode_state* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv04_mode_state*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_device*, align 8
  %9 = alloca %struct.nouveau_timer*, align 8
  %10 = alloca %struct.nv04_crtc_reg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nv04_mode_state* %2, %struct.nv04_mode_state** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %13)
  store %struct.nouveau_drm* %14, %struct.nouveau_drm** %7, align 8
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nouveau_device* @nv_device(i32 %17)
  store %struct.nouveau_device* %18, %struct.nouveau_device** %8, align 8
  %19 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %20 = call %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_device* %19)
  store %struct.nouveau_timer* %20, %struct.nouveau_timer** %9, align 8
  %21 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %22 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %21, i32 0, i32 0
  %23 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %23, i64 %25
  store %struct.nv04_crtc_reg* %26, %struct.nv04_crtc_reg** %10, align 8
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %28 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.nouveau_device* @nv_device(i32 %29)
  %31 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NV_10, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %154

35:                                               ; preds = %3
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = call i64 @nv_two_heads(%struct.drm_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NV_PCRTC_ENGINE_CTRL, align 4
  %43 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %44 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @NVWriteCRTC(%struct.drm_device* %40, i32 %41, i32 %42, i64 %45)
  br label %47

47:                                               ; preds = %39, %35
  %48 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %49 = load i32, i32* @NV_PVIDEO_STOP, align 4
  %50 = call i32 @nv_wr32(%struct.nouveau_device* %48, i32 %49, i32 1)
  %51 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %52 = load i32, i32* @NV_PVIDEO_INTR_EN, align 4
  %53 = call i32 @nv_wr32(%struct.nouveau_device* %51, i32 %52, i32 0)
  %54 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %55 = call i32 @NV_PVIDEO_OFFSET_BUFF(i32 0)
  %56 = call i32 @nv_wr32(%struct.nouveau_device* %54, i32 %55, i32 0)
  %57 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %58 = call i32 @NV_PVIDEO_OFFSET_BUFF(i32 1)
  %59 = call i32 @nv_wr32(%struct.nouveau_device* %57, i32 %58, i32 0)
  %60 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %61 = call i32 @NV_PVIDEO_LIMIT(i32 0)
  %62 = call i32 @nv_wr32(%struct.nouveau_device* %60, i32 %61, i32 0)
  %63 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %64 = call i32 @NV_PVIDEO_LIMIT(i32 1)
  %65 = call i32 @nv_wr32(%struct.nouveau_device* %63, i32 %64, i32 0)
  %66 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %67 = call i32 @NV_PVIDEO_UVPLANE_LIMIT(i32 0)
  %68 = call i32 @nv_wr32(%struct.nouveau_device* %66, i32 %67, i32 0)
  %69 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %70 = call i32 @NV_PVIDEO_UVPLANE_LIMIT(i32 1)
  %71 = call i32 @nv_wr32(%struct.nouveau_device* %69, i32 %70, i32 0)
  %72 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %73 = load i32, i32* @NV_PBUS_POWERCTRL_2, align 4
  %74 = call i32 @nv_wr32(%struct.nouveau_device* %72, i32 %73, i32 0)
  %75 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @NV_PCRTC_CURSOR_CONFIG, align 4
  %78 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %79 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @NVWriteCRTC(%struct.drm_device* %75, i32 %76, i32 %77, i64 %80)
  %82 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @NV_PCRTC_830, align 4
  %85 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %86 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @NVWriteCRTC(%struct.drm_device* %82, i32 %83, i32 %84, i64 %87)
  %89 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @NV_PCRTC_834, align 4
  %92 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %93 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @NVWriteCRTC(%struct.drm_device* %89, i32 %90, i32 %91, i64 %94)
  %96 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %97 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.nouveau_device* @nv_device(i32 %98)
  %100 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @NV_30, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %47
  %105 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @NV_PCRTC_GPIO_EXT, align 4
  %108 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %109 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @NVWriteCRTC(%struct.drm_device* %105, i32 %106, i32 %107, i64 %110)
  br label %112

112:                                              ; preds = %104, %47
  %113 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %114 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.nouveau_device* @nv_device(i32 %115)
  %117 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @NV_40, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %112
  %122 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @NV_PCRTC_850, align 4
  %125 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %126 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @NVWriteCRTC(%struct.drm_device* %122, i32 %123, i32 %124, i64 %127)
  %129 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @NV_PRAMDAC_900, align 4
  %132 = call i32 @NVReadRAMDAC(%struct.drm_device* %129, i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %134 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @NV10_PCRTC_CONFIG_START_ADDRESS_HSYNC, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %121
  %139 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @NV_PRAMDAC_900, align 4
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, 65536
  %144 = call i32 @NVWriteRAMDAC(%struct.drm_device* %139, i32 %140, i32 %141, i32 %143)
  br label %152

145:                                              ; preds = %121
  %146 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @NV_PRAMDAC_900, align 4
  %149 = load i32, i32* %11, align 4
  %150 = and i32 %149, -65537
  %151 = call i32 @NVWriteRAMDAC(%struct.drm_device* %146, i32 %147, i32 %148, i32 %150)
  br label %152

152:                                              ; preds = %145, %138
  br label %153

153:                                              ; preds = %152, %112
  br label %154

154:                                              ; preds = %153, %3
  %155 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @NV_PCRTC_CONFIG, align 4
  %158 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %159 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @NVWriteCRTC(%struct.drm_device* %155, i32 %156, i32 %157, i64 %160)
  %162 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %165 = load i32, i32* @NV_CIO_CRE_RPC0_INDEX, align 4
  %166 = call i32 @wr_cio_state(%struct.drm_device* %162, i32 %163, %struct.nv04_crtc_reg* %164, i32 %165)
  %167 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %170 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %171 = call i32 @wr_cio_state(%struct.drm_device* %167, i32 %168, %struct.nv04_crtc_reg* %169, i32 %170)
  %172 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %175 = load i32, i32* @NV_CIO_CRE_LSR_INDEX, align 4
  %176 = call i32 @wr_cio_state(%struct.drm_device* %172, i32 %173, %struct.nv04_crtc_reg* %174, i32 %175)
  %177 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %180 = load i32, i32* @NV_CIO_CRE_PIXEL_INDEX, align 4
  %181 = call i32 @wr_cio_state(%struct.drm_device* %177, i32 %178, %struct.nv04_crtc_reg* %179, i32 %180)
  %182 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %185 = load i32, i32* @NV_CIO_CRE_LCD__INDEX, align 4
  %186 = call i32 @wr_cio_state(%struct.drm_device* %182, i32 %183, %struct.nv04_crtc_reg* %184, i32 %185)
  %187 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %190 = load i32, i32* @NV_CIO_CRE_HEB__INDEX, align 4
  %191 = call i32 @wr_cio_state(%struct.drm_device* %187, i32 %188, %struct.nv04_crtc_reg* %189, i32 %190)
  %192 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %195 = load i32, i32* @NV_CIO_CRE_ENH_INDEX, align 4
  %196 = call i32 @wr_cio_state(%struct.drm_device* %192, i32 %193, %struct.nv04_crtc_reg* %194, i32 %195)
  %197 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %198 = load i32, i32* %5, align 4
  %199 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %200 = load i32, i32* @NV_CIO_CRE_FF_INDEX, align 4
  %201 = call i32 @wr_cio_state(%struct.drm_device* %197, i32 %198, %struct.nv04_crtc_reg* %199, i32 %200)
  %202 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %205 = load i32, i32* @NV_CIO_CRE_FFLWM__INDEX, align 4
  %206 = call i32 @wr_cio_state(%struct.drm_device* %202, i32 %203, %struct.nv04_crtc_reg* %204, i32 %205)
  %207 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %208 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call %struct.nouveau_device* @nv_device(i32 %209)
  %211 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @NV_20, align 8
  %214 = icmp sge i64 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %154
  %216 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %219 = load i32, i32* @NV_CIO_CRE_47, align 4
  %220 = call i32 @wr_cio_state(%struct.drm_device* %216, i32 %217, %struct.nv04_crtc_reg* %218, i32 %219)
  br label %221

221:                                              ; preds = %215, %154
  %222 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %223 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call %struct.nouveau_device* @nv_device(i32 %224)
  %226 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @NV_30, align 8
  %229 = icmp sge i64 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %221
  %231 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %232 = load i32, i32* %5, align 4
  %233 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %234 = call i32 @wr_cio_state(%struct.drm_device* %231, i32 %232, %struct.nv04_crtc_reg* %233, i32 159)
  br label %235

235:                                              ; preds = %230, %221
  %236 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %237 = load i32, i32* %5, align 4
  %238 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %239 = load i32, i32* @NV_CIO_CRE_49, align 4
  %240 = call i32 @wr_cio_state(%struct.drm_device* %236, i32 %237, %struct.nv04_crtc_reg* %238, i32 %239)
  %241 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %242 = load i32, i32* %5, align 4
  %243 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %244 = load i32, i32* @NV_CIO_CRE_HCUR_ADDR0_INDEX, align 4
  %245 = call i32 @wr_cio_state(%struct.drm_device* %241, i32 %242, %struct.nv04_crtc_reg* %243, i32 %244)
  %246 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %247 = load i32, i32* %5, align 4
  %248 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %249 = load i32, i32* @NV_CIO_CRE_HCUR_ADDR1_INDEX, align 4
  %250 = call i32 @wr_cio_state(%struct.drm_device* %246, i32 %247, %struct.nv04_crtc_reg* %248, i32 %249)
  %251 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %252 = load i32, i32* %5, align 4
  %253 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %254 = load i32, i32* @NV_CIO_CRE_HCUR_ADDR2_INDEX, align 4
  %255 = call i32 @wr_cio_state(%struct.drm_device* %251, i32 %252, %struct.nv04_crtc_reg* %253, i32 %254)
  %256 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %257 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call %struct.nouveau_device* @nv_device(i32 %258)
  %260 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @NV_40, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %235
  %265 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %266 = load i32, i32* %5, align 4
  %267 = call i32 @nv_fix_nv40_hw_cursor(%struct.drm_device* %265, i32 %266)
  br label %268

268:                                              ; preds = %264, %235
  %269 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %270 = load i32, i32* %5, align 4
  %271 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %272 = load i32, i32* @NV_CIO_CRE_ILACE__INDEX, align 4
  %273 = call i32 @wr_cio_state(%struct.drm_device* %269, i32 %270, %struct.nv04_crtc_reg* %271, i32 %272)
  %274 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %275 = load i32, i32* %5, align 4
  %276 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %277 = load i32, i32* @NV_CIO_CRE_SCRATCH3__INDEX, align 4
  %278 = call i32 @wr_cio_state(%struct.drm_device* %274, i32 %275, %struct.nv04_crtc_reg* %276, i32 %277)
  %279 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %280 = load i32, i32* %5, align 4
  %281 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %282 = load i32, i32* @NV_CIO_CRE_SCRATCH4__INDEX, align 4
  %283 = call i32 @wr_cio_state(%struct.drm_device* %279, i32 %280, %struct.nv04_crtc_reg* %281, i32 %282)
  %284 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %285 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call %struct.nouveau_device* @nv_device(i32 %286)
  %288 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @NV_10, align 8
  %291 = icmp sge i64 %289, %290
  br i1 %291, label %292, label %313

292:                                              ; preds = %268
  %293 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %294 = load i32, i32* %5, align 4
  %295 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %296 = load i32, i32* @NV_CIO_CRE_EBR_INDEX, align 4
  %297 = call i32 @wr_cio_state(%struct.drm_device* %293, i32 %294, %struct.nv04_crtc_reg* %295, i32 %296)
  %298 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %299 = load i32, i32* %5, align 4
  %300 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %301 = load i32, i32* @NV_CIO_CRE_CSB, align 4
  %302 = call i32 @wr_cio_state(%struct.drm_device* %298, i32 %299, %struct.nv04_crtc_reg* %300, i32 %301)
  %303 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %304 = load i32, i32* %5, align 4
  %305 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %306 = load i32, i32* @NV_CIO_CRE_4B, align 4
  %307 = call i32 @wr_cio_state(%struct.drm_device* %303, i32 %304, %struct.nv04_crtc_reg* %305, i32 %306)
  %308 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %309 = load i32, i32* %5, align 4
  %310 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %311 = load i32, i32* @NV_CIO_CRE_TVOUT_LATENCY, align 4
  %312 = call i32 @wr_cio_state(%struct.drm_device* %308, i32 %309, %struct.nv04_crtc_reg* %310, i32 %311)
  br label %313

313:                                              ; preds = %292, %268
  %314 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %315 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %388

317:                                              ; preds = %313
  %318 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %319 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call %struct.nouveau_device* @nv_device(i32 %320)
  %322 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @NV_10, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %333

326:                                              ; preds = %317
  %327 = load %struct.nouveau_timer*, %struct.nouveau_timer** %9, align 8
  %328 = load i32, i32* @NV_PRMCIO_INP0__COLOR, align 4
  %329 = call i32 @nouveau_timer_wait_eq(%struct.nouveau_timer* %327, i32 650000000, i32 %328, i32 8, i32 8)
  %330 = load %struct.nouveau_timer*, %struct.nouveau_timer** %9, align 8
  %331 = load i32, i32* @NV_PRMCIO_INP0__COLOR, align 4
  %332 = call i32 @nouveau_timer_wait_eq(%struct.nouveau_timer* %330, i32 650000000, i32 %331, i32 8, i32 0)
  br label %333

333:                                              ; preds = %326, %317
  %334 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %335 = load i32, i32* %5, align 4
  %336 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %337 = load i32, i32* @NV_CIO_CRE_42, align 4
  %338 = call i32 @wr_cio_state(%struct.drm_device* %334, i32 %335, %struct.nv04_crtc_reg* %336, i32 %337)
  %339 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %340 = load i32, i32* %5, align 4
  %341 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %342 = load i32, i32* @NV_CIO_CRE_53, align 4
  %343 = call i32 @wr_cio_state(%struct.drm_device* %339, i32 %340, %struct.nv04_crtc_reg* %341, i32 %342)
  %344 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %345 = load i32, i32* %5, align 4
  %346 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %347 = load i32, i32* @NV_CIO_CRE_54, align 4
  %348 = call i32 @wr_cio_state(%struct.drm_device* %344, i32 %345, %struct.nv04_crtc_reg* %346, i32 %347)
  store i32 0, i32* %12, align 4
  br label %349

349:                                              ; preds = %364, %333
  %350 = load i32, i32* %12, align 4
  %351 = icmp slt i32 %350, 16
  br i1 %351, label %352, label %367

352:                                              ; preds = %349
  %353 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %354 = load i32, i32* %5, align 4
  %355 = load i32, i32* %12, align 4
  %356 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %357 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %356, i32 0, i32 8
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %12, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @NVWriteVgaCrtc5758(%struct.drm_device* %353, i32 %354, i32 %355, i32 %362)
  br label %364

364:                                              ; preds = %352
  %365 = load i32, i32* %12, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %12, align 4
  br label %349

367:                                              ; preds = %349
  %368 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %369 = load i32, i32* %5, align 4
  %370 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %371 = load i32, i32* @NV_CIO_CRE_59, align 4
  %372 = call i32 @wr_cio_state(%struct.drm_device* %368, i32 %369, %struct.nv04_crtc_reg* %370, i32 %371)
  %373 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %374 = load i32, i32* %5, align 4
  %375 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %376 = load i32, i32* @NV_CIO_CRE_5B, align 4
  %377 = call i32 @wr_cio_state(%struct.drm_device* %373, i32 %374, %struct.nv04_crtc_reg* %375, i32 %376)
  %378 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %379 = load i32, i32* %5, align 4
  %380 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %381 = load i32, i32* @NV_CIO_CRE_85, align 4
  %382 = call i32 @wr_cio_state(%struct.drm_device* %378, i32 %379, %struct.nv04_crtc_reg* %380, i32 %381)
  %383 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %384 = load i32, i32* %5, align 4
  %385 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %386 = load i32, i32* @NV_CIO_CRE_86, align 4
  %387 = call i32 @wr_cio_state(%struct.drm_device* %383, i32 %384, %struct.nv04_crtc_reg* %385, i32 %386)
  br label %388

388:                                              ; preds = %367, %313
  %389 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %390 = load i32, i32* %5, align 4
  %391 = load i32, i32* @NV_PCRTC_START, align 4
  %392 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %393 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %392, i32 0, i32 7
  %394 = load i64, i64* %393, align 8
  %395 = call i32 @NVWriteCRTC(%struct.drm_device* %389, i32 %390, i32 %391, i64 %394)
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nv_device(i32) #1

declare dso_local %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_device*) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @NVWriteCRTC(%struct.drm_device*, i32, i32, i64) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @NV_PVIDEO_OFFSET_BUFF(i32) #1

declare dso_local i32 @NV_PVIDEO_LIMIT(i32) #1

declare dso_local i32 @NV_PVIDEO_UVPLANE_LIMIT(i32) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @wr_cio_state(%struct.drm_device*, i32, %struct.nv04_crtc_reg*, i32) #1

declare dso_local i32 @nv_fix_nv40_hw_cursor(%struct.drm_device*, i32) #1

declare dso_local i64 @nv_gf4_disp_arch(%struct.drm_device*) #1

declare dso_local i32 @nouveau_timer_wait_eq(%struct.nouveau_timer*, i32, i32, i32, i32) #1

declare dso_local i32 @NVWriteVgaCrtc5758(%struct.drm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

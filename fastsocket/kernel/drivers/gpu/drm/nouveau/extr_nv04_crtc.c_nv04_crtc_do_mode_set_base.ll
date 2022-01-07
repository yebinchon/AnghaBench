; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv04_crtc_do_mode_set_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv04_crtc_do_mode_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_14__, %struct.drm_framebuffer*, %struct.drm_device* }
%struct.TYPE_14__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_framebuffer = type { i64, i32*, i32 }
%struct.nouveau_crtc = type { i64, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.nouveau_drm = type { i32 }
%struct.nv04_crtc_reg = type { i32*, i32, i32 }
%struct.nouveau_framebuffer = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.nv04_crtc_reg* }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@NV_CIO_CRE_PIXEL_INDEX = common dso_local global i64 0, align 8
@NV_PRAMDAC_GENERAL_CONTROL_ALT_MODE_SEL = common dso_local global i32 0, align 4
@NV_PRAMDAC_GENERAL_CONTROL = common dso_local global i32 0, align 4
@NV_CIO_CR_OFFSET_INDEX = common dso_local global i64 0, align 8
@NV_CIO_CRE_RPC0_OFFSET_10_8 = common dso_local global i32 0, align 4
@NV_CIO_CRE_RPC0_INDEX = common dso_local global i64 0, align 8
@NV_CIO_CRE_42_OFFSET_11 = common dso_local global i32 0, align 4
@NV_CIO_CRE_42 = common dso_local global i64 0, align 8
@NV_CIO_CRE_FF_INDEX = common dso_local global i64 0, align 8
@NV_CIO_CRE_FFLWM__INDEX = common dso_local global i64 0, align 8
@NV_20 = common dso_local global i64 0, align 8
@NV_CIO_CRE_47 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @nv04_crtc_do_mode_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_crtc_do_mode_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_crtc*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.nouveau_drm*, align 8
  %15 = alloca %struct.nv04_crtc_reg*, align 8
  %16 = alloca %struct.drm_framebuffer*, align 8
  %17 = alloca %struct.nouveau_framebuffer*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.nouveau_framebuffer*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %23 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %22)
  store %struct.nouveau_crtc* %23, %struct.nouveau_crtc** %12, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 2
  %26 = load %struct.drm_device*, %struct.drm_device** %25, align 8
  store %struct.drm_device* %26, %struct.drm_device** %13, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %28 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %27)
  store %struct.nouveau_drm* %28, %struct.nouveau_drm** %14, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %30 = call %struct.TYPE_16__* @nv04_display(%struct.drm_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %32, align 8
  %34 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %35 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %33, i64 %36
  store %struct.nv04_crtc_reg* %37, %struct.nv04_crtc_reg** %15, align 8
  %38 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %39 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %40 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_DEBUG(%struct.nouveau_drm* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %5
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 1
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %47, align 8
  %49 = icmp ne %struct.drm_framebuffer* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %52 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_DEBUG(%struct.nouveau_drm* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %306

53:                                               ; preds = %45, %5
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %57, %struct.drm_framebuffer** %16, align 8
  %58 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %59 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer* %58)
  store %struct.nouveau_framebuffer* %59, %struct.nouveau_framebuffer** %17, align 8
  br label %88

60:                                               ; preds = %53
  %61 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %62 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %61, i32 0, i32 1
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %62, align 8
  store %struct.drm_framebuffer* %63, %struct.drm_framebuffer** %16, align 8
  %64 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %65 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %64, i32 0, i32 1
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %65, align 8
  %67 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer* %66)
  store %struct.nouveau_framebuffer* %67, %struct.nouveau_framebuffer** %17, align 8
  %68 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %17, align 8
  %69 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %72 = call i32 @nouveau_bo_pin(%struct.TYPE_17__* %70, i32 %71)
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %20, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %60
  %76 = load i32, i32* %20, align 4
  store i32 %76, i32* %6, align 4
  br label %306

77:                                               ; preds = %60
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %79 = icmp ne %struct.drm_framebuffer* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %82 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer* %81)
  store %struct.nouveau_framebuffer* %82, %struct.nouveau_framebuffer** %21, align 8
  %83 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %21, align 8
  %84 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %83, i32 0, i32 0
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = call i32 @nouveau_bo_unpin(%struct.TYPE_17__* %85)
  br label %87

87:                                               ; preds = %80, %77
  br label %88

88:                                               ; preds = %87, %56
  %89 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %17, align 8
  %90 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %89, i32 0, i32 0
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %96 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %99 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %103 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %88
  %107 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %108 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %111 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %114 = call i32 @nv_crtc_gamma_load(%struct.drm_crtc* %113)
  br label %115

115:                                              ; preds = %106, %88
  %116 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %117 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @NV_CIO_CRE_PIXEL_INDEX, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, -4
  store i32 %122, i32* %120, align 4
  %123 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %124 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %123, i32 0, i32 1
  %125 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %124, align 8
  %126 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  %129 = sdiv i64 %128, 8
  %130 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %131 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @NV_CIO_CRE_PIXEL_INDEX, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = or i64 %136, %129
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  %139 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL_ALT_MODE_SEL, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %142 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %146 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %145, i32 0, i32 1
  %147 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %146, align 8
  %148 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 16
  br i1 %150, label %151, label %157

151:                                              ; preds = %115
  %152 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL_ALT_MODE_SEL, align 4
  %153 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %154 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %115
  %158 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %159 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %160 = load i64, i64* @NV_CIO_CRE_PIXEL_INDEX, align 8
  %161 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %158, %struct.nv04_crtc_reg* %159, i64 %160)
  %162 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %163 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %164 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL, align 4
  %167 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %168 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @NVWriteRAMDAC(%struct.drm_device* %162, i64 %165, i32 %166, i32 %169)
  %171 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %172 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 3
  %177 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %178 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @NV_CIO_CR_OFFSET_INDEX, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 %176, i32* %181, align 4
  %182 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %183 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 3
  %188 = load i32, i32* @NV_CIO_CRE_RPC0_OFFSET_10_8, align 4
  %189 = call i8* @XLATE(i32 %187, i32 8, i32 %188)
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %192 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @NV_CIO_CRE_RPC0_INDEX, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 %190, i32* %195, align 4
  %196 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %197 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = sdiv i32 %200, 8
  %202 = load i32, i32* @NV_CIO_CRE_42_OFFSET_11, align 4
  %203 = call i8* @XLATE(i32 %201, i32 11, i32 %202)
  %204 = ptrtoint i8* %203 to i32
  %205 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %206 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @NV_CIO_CRE_42, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32 %204, i32* %209, align 4
  %210 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %211 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %212 = load i64, i64* @NV_CIO_CRE_RPC0_INDEX, align 8
  %213 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %210, %struct.nv04_crtc_reg* %211, i64 %212)
  %214 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %215 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %216 = load i64, i64* @NV_CIO_CR_OFFSET_INDEX, align 8
  %217 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %214, %struct.nv04_crtc_reg* %215, i64 %216)
  %218 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %219 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %220 = load i64, i64* @NV_CIO_CRE_42, align 8
  %221 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %218, %struct.nv04_crtc_reg* %219, i64 %220)
  %222 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %223 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, -4
  %227 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %228 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %231 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 %229, %234
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %238 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = mul nsw i32 %236, %239
  %241 = sdiv i32 %240, 8
  %242 = add nsw i32 %235, %241
  %243 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %244 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %248 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %249 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %252 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @nv_set_crtc_base(%struct.drm_device* %247, i64 %250, i32 %253)
  %255 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %256 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %257 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %261 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @nouveau_calc_arb(%struct.drm_device* %255, i32 %259, i32 %262, i32* %18, i32* %19)
  %264 = load i32, i32* %18, align 4
  %265 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %266 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = load i64, i64* @NV_CIO_CRE_FF_INDEX, align 8
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32 %264, i32* %269, align 4
  %270 = load i32, i32* %19, align 4
  %271 = and i32 %270, 255
  %272 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %273 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = load i64, i64* @NV_CIO_CRE_FFLWM__INDEX, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32 %271, i32* %276, align 4
  %277 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %278 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %279 = load i64, i64* @NV_CIO_CRE_FF_INDEX, align 8
  %280 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %277, %struct.nv04_crtc_reg* %278, i64 %279)
  %281 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %282 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %283 = load i64, i64* @NV_CIO_CRE_FFLWM__INDEX, align 8
  %284 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %281, %struct.nv04_crtc_reg* %282, i64 %283)
  %285 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %286 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call %struct.TYPE_15__* @nv_device(i32 %287)
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @NV_20, align 8
  %292 = icmp sge i64 %290, %291
  br i1 %292, label %293, label %305

293:                                              ; preds = %157
  %294 = load i32, i32* %19, align 4
  %295 = ashr i32 %294, 8
  %296 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %297 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* @NV_CIO_CRE_47, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32 %295, i32* %300, align 4
  %301 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %302 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %303 = load i64, i64* @NV_CIO_CRE_47, align 8
  %304 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %301, %struct.nv04_crtc_reg* %302, i64 %303)
  br label %305

305:                                              ; preds = %293, %157
  store i32 0, i32* %6, align 4
  br label %306

306:                                              ; preds = %305, %75, %50
  %307 = load i32, i32* %6, align 4
  ret i32 %307
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.TYPE_16__* @nv04_display(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, ...) #1

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @nouveau_bo_pin(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @nouveau_bo_unpin(%struct.TYPE_17__*) #1

declare dso_local i32 @nv_crtc_gamma_load(%struct.drm_crtc*) #1

declare dso_local i32 @crtc_wr_cio_state(%struct.drm_crtc*, %struct.nv04_crtc_reg*, i64) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i64, i32, i32) #1

declare dso_local i8* @XLATE(i32, i32, i32) #1

declare dso_local i32 @nv_set_crtc_base(%struct.drm_device*, i64, i32) #1

declare dso_local i32 @nouveau_calc_arb(%struct.drm_device*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @nv_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

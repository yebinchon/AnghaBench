; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_ums.c_i915_save_display_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_ums.c_i915_save_display_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@_CURACNTR = common dso_local global i32 0, align 4
@_CURAPOS = common dso_local global i32 0, align 4
@_CURABASE = common dso_local global i32 0, align 4
@_CURBCNTR = common dso_local global i32 0, align 4
@_CURBPOS = common dso_local global i32 0, align 4
@_CURBBASE = common dso_local global i32 0, align 4
@CURSIZE = common dso_local global i32 0, align 4
@PCH_DREF_CONTROL = common dso_local global i32 0, align 4
@DISP_ARB_CTL = common dso_local global i32 0, align 4
@_PIPEACONF = common dso_local global i32 0, align 4
@_PIPEASRC = common dso_local global i32 0, align 4
@_PCH_FPA0 = common dso_local global i32 0, align 4
@_PCH_FPA1 = common dso_local global i32 0, align 4
@_PCH_DPLL_A = common dso_local global i32 0, align 4
@_FPA0 = common dso_local global i32 0, align 4
@_FPA1 = common dso_local global i32 0, align 4
@_DPLL_A = common dso_local global i32 0, align 4
@_DPLL_A_MD = common dso_local global i32 0, align 4
@_HTOTAL_A = common dso_local global i32 0, align 4
@_HBLANK_A = common dso_local global i32 0, align 4
@_HSYNC_A = common dso_local global i32 0, align 4
@_VTOTAL_A = common dso_local global i32 0, align 4
@_VBLANK_A = common dso_local global i32 0, align 4
@_VSYNC_A = common dso_local global i32 0, align 4
@_BCLRPAT_A = common dso_local global i32 0, align 4
@_PIPEA_DATA_M1 = common dso_local global i32 0, align 4
@_PIPEA_DATA_N1 = common dso_local global i32 0, align 4
@_PIPEA_LINK_M1 = common dso_local global i32 0, align 4
@_PIPEA_LINK_N1 = common dso_local global i32 0, align 4
@_FDI_TXA_CTL = common dso_local global i32 0, align 4
@_FDI_RXA_CTL = common dso_local global i32 0, align 4
@_PFA_CTL_1 = common dso_local global i32 0, align 4
@_PFA_WIN_SZ = common dso_local global i32 0, align 4
@_PFA_WIN_POS = common dso_local global i32 0, align 4
@_TRANSACONF = common dso_local global i32 0, align 4
@_TRANS_HTOTAL_A = common dso_local global i32 0, align 4
@_TRANS_HBLANK_A = common dso_local global i32 0, align 4
@_TRANS_HSYNC_A = common dso_local global i32 0, align 4
@_TRANS_VTOTAL_A = common dso_local global i32 0, align 4
@_TRANS_VBLANK_A = common dso_local global i32 0, align 4
@_TRANS_VSYNC_A = common dso_local global i32 0, align 4
@_DSPACNTR = common dso_local global i32 0, align 4
@_DSPASTRIDE = common dso_local global i32 0, align 4
@_DSPASIZE = common dso_local global i32 0, align 4
@_DSPAPOS = common dso_local global i32 0, align 4
@_DSPAADDR = common dso_local global i32 0, align 4
@_DSPASURF = common dso_local global i32 0, align 4
@_DSPATILEOFF = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@_PIPEASTAT = common dso_local global i32 0, align 4
@_PIPEBCONF = common dso_local global i32 0, align 4
@_PIPEBSRC = common dso_local global i32 0, align 4
@_PCH_FPB0 = common dso_local global i32 0, align 4
@_PCH_FPB1 = common dso_local global i32 0, align 4
@_PCH_DPLL_B = common dso_local global i32 0, align 4
@_FPB0 = common dso_local global i32 0, align 4
@_FPB1 = common dso_local global i32 0, align 4
@_DPLL_B = common dso_local global i32 0, align 4
@_DPLL_B_MD = common dso_local global i32 0, align 4
@_HTOTAL_B = common dso_local global i32 0, align 4
@_HBLANK_B = common dso_local global i32 0, align 4
@_HSYNC_B = common dso_local global i32 0, align 4
@_VTOTAL_B = common dso_local global i32 0, align 4
@_VBLANK_B = common dso_local global i32 0, align 4
@_VSYNC_B = common dso_local global i32 0, align 4
@_BCLRPAT_B = common dso_local global i32 0, align 4
@_PIPEB_DATA_M1 = common dso_local global i32 0, align 4
@_PIPEB_DATA_N1 = common dso_local global i32 0, align 4
@_PIPEB_LINK_M1 = common dso_local global i32 0, align 4
@_PIPEB_LINK_N1 = common dso_local global i32 0, align 4
@_FDI_TXB_CTL = common dso_local global i32 0, align 4
@_FDI_RXB_CTL = common dso_local global i32 0, align 4
@_PFB_CTL_1 = common dso_local global i32 0, align 4
@_PFB_WIN_SZ = common dso_local global i32 0, align 4
@_PFB_WIN_POS = common dso_local global i32 0, align 4
@_TRANSBCONF = common dso_local global i32 0, align 4
@_TRANS_HTOTAL_B = common dso_local global i32 0, align 4
@_TRANS_HBLANK_B = common dso_local global i32 0, align 4
@_TRANS_HSYNC_B = common dso_local global i32 0, align 4
@_TRANS_VTOTAL_B = common dso_local global i32 0, align 4
@_TRANS_VBLANK_B = common dso_local global i32 0, align 4
@_TRANS_VSYNC_B = common dso_local global i32 0, align 4
@_DSPBCNTR = common dso_local global i32 0, align 4
@_DSPBSTRIDE = common dso_local global i32 0, align 4
@_DSPBSIZE = common dso_local global i32 0, align 4
@_DSPBPOS = common dso_local global i32 0, align 4
@_DSPBADDR = common dso_local global i32 0, align 4
@_DSPBSURF = common dso_local global i32 0, align 4
@_DSPBTILEOFF = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@_PIPEBSTAT = common dso_local global i32 0, align 4
@FENCE_REG_SANDYBRIDGE_0 = common dso_local global i32 0, align 4
@FENCE_REG_965_0 = common dso_local global i32 0, align 4
@FENCE_REG_945_8 = common dso_local global i32 0, align 4
@FENCE_REG_830_0 = common dso_local global i32 0, align 4
@PCH_ADPA = common dso_local global i32 0, align 4
@ADPA = common dso_local global i32 0, align 4
@DP_B = common dso_local global i32 0, align 4
@DP_C = common dso_local global i32 0, align 4
@DP_D = common dso_local global i32 0, align 4
@_PIPEA_GMCH_DATA_M = common dso_local global i32 0, align 4
@_PIPEB_GMCH_DATA_M = common dso_local global i32 0, align 4
@_PIPEA_GMCH_DATA_N = common dso_local global i32 0, align 4
@_PIPEB_GMCH_DATA_N = common dso_local global i32 0, align 4
@_PIPEA_DP_LINK_M = common dso_local global i32 0, align 4
@_PIPEB_DP_LINK_M = common dso_local global i32 0, align 4
@_PIPEA_DP_LINK_N = common dso_local global i32 0, align 4
@_PIPEB_DP_LINK_N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_save_display_reg(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load i32, i32* @_CURACNTR, align 4
  %9 = call i8* @I915_READ(i32 %8)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 95
  store i8* %9, i8** %12, align 8
  %13 = load i32, i32* @_CURAPOS, align 4
  %14 = call i8* @I915_READ(i32 %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 94
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* @_CURABASE, align 4
  %19 = call i8* @I915_READ(i32 %18)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 93
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @_CURBCNTR, align 4
  %24 = call i8* @I915_READ(i32 %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 92
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* @_CURBPOS, align 4
  %29 = call i8* @I915_READ(i32 %28)
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 91
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @_CURBBASE, align 4
  %34 = call i8* @I915_READ(i32 %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 90
  store i8* %34, i8** %37, align 8
  %38 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %39 = call i64 @IS_GEN2(%struct.drm_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %1
  %42 = load i32, i32* @CURSIZE, align 4
  %43 = call i8* @I915_READ(i32 %42)
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 89
  store i8* %43, i8** %46, align 8
  br label %47

47:                                               ; preds = %41, %1
  %48 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %49 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* @PCH_DREF_CONTROL, align 4
  %53 = call i8* @I915_READ(i32 %52)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 88
  store i8* %53, i8** %56, align 8
  %57 = load i32, i32* @DISP_ARB_CTL, align 4
  %58 = call i8* @I915_READ(i32 %57)
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %60 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 87
  store i8* %58, i8** %61, align 8
  br label %62

62:                                               ; preds = %51, %47
  %63 = load i32, i32* @_PIPEACONF, align 4
  %64 = call i8* @I915_READ(i32 %63)
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 86
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* @_PIPEASRC, align 4
  %69 = call i8* @I915_READ(i32 %68)
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 85
  store i8* %69, i8** %72, align 8
  %73 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %74 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %62
  %77 = load i32, i32* @_PCH_FPA0, align 4
  %78 = call i8* @I915_READ(i32 %77)
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %80 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 84
  store i8* %78, i8** %81, align 8
  %82 = load i32, i32* @_PCH_FPA1, align 4
  %83 = call i8* @I915_READ(i32 %82)
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 83
  store i8* %83, i8** %86, align 8
  %87 = load i32, i32* @_PCH_DPLL_A, align 4
  %88 = call i8* @I915_READ(i32 %87)
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %90 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 82
  store i8* %88, i8** %91, align 8
  br label %108

92:                                               ; preds = %62
  %93 = load i32, i32* @_FPA0, align 4
  %94 = call i8* @I915_READ(i32 %93)
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %96 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 84
  store i8* %94, i8** %97, align 8
  %98 = load i32, i32* @_FPA1, align 4
  %99 = call i8* @I915_READ(i32 %98)
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %101 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 83
  store i8* %99, i8** %102, align 8
  %103 = load i32, i32* @_DPLL_A, align 4
  %104 = call i8* @I915_READ(i32 %103)
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 82
  store i8* %104, i8** %107, align 8
  br label %108

108:                                              ; preds = %92, %76
  %109 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %110 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %109)
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %112, 4
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %116 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @_DPLL_A_MD, align 4
  %120 = call i8* @I915_READ(i32 %119)
  %121 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %122 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 81
  store i8* %120, i8** %123, align 8
  br label %124

124:                                              ; preds = %118, %114, %108
  %125 = load i32, i32* @_HTOTAL_A, align 4
  %126 = call i8* @I915_READ(i32 %125)
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %128 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 80
  store i8* %126, i8** %129, align 8
  %130 = load i32, i32* @_HBLANK_A, align 4
  %131 = call i8* @I915_READ(i32 %130)
  %132 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %133 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 79
  store i8* %131, i8** %134, align 8
  %135 = load i32, i32* @_HSYNC_A, align 4
  %136 = call i8* @I915_READ(i32 %135)
  %137 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %138 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 78
  store i8* %136, i8** %139, align 8
  %140 = load i32, i32* @_VTOTAL_A, align 4
  %141 = call i8* @I915_READ(i32 %140)
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %143 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 77
  store i8* %141, i8** %144, align 8
  %145 = load i32, i32* @_VBLANK_A, align 4
  %146 = call i8* @I915_READ(i32 %145)
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %148 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 76
  store i8* %146, i8** %149, align 8
  %150 = load i32, i32* @_VSYNC_A, align 4
  %151 = call i8* @I915_READ(i32 %150)
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %153 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 75
  store i8* %151, i8** %154, align 8
  %155 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %156 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %124
  %159 = load i32, i32* @_BCLRPAT_A, align 4
  %160 = call i8* @I915_READ(i32 %159)
  %161 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %162 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 74
  store i8* %160, i8** %163, align 8
  br label %164

164:                                              ; preds = %158, %124
  %165 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %166 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %249

168:                                              ; preds = %164
  %169 = load i32, i32* @_PIPEA_DATA_M1, align 4
  %170 = call i8* @I915_READ(i32 %169)
  %171 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %172 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 73
  store i8* %170, i8** %173, align 8
  %174 = load i32, i32* @_PIPEA_DATA_N1, align 4
  %175 = call i8* @I915_READ(i32 %174)
  %176 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %177 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 72
  store i8* %175, i8** %178, align 8
  %179 = load i32, i32* @_PIPEA_LINK_M1, align 4
  %180 = call i8* @I915_READ(i32 %179)
  %181 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %182 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 71
  store i8* %180, i8** %183, align 8
  %184 = load i32, i32* @_PIPEA_LINK_N1, align 4
  %185 = call i8* @I915_READ(i32 %184)
  %186 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %187 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 70
  store i8* %185, i8** %188, align 8
  %189 = load i32, i32* @_FDI_TXA_CTL, align 4
  %190 = call i8* @I915_READ(i32 %189)
  %191 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %192 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 69
  store i8* %190, i8** %193, align 8
  %194 = load i32, i32* @_FDI_RXA_CTL, align 4
  %195 = call i8* @I915_READ(i32 %194)
  %196 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %197 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 68
  store i8* %195, i8** %198, align 8
  %199 = load i32, i32* @_PFA_CTL_1, align 4
  %200 = call i8* @I915_READ(i32 %199)
  %201 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %202 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 67
  store i8* %200, i8** %203, align 8
  %204 = load i32, i32* @_PFA_WIN_SZ, align 4
  %205 = call i8* @I915_READ(i32 %204)
  %206 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %207 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 66
  store i8* %205, i8** %208, align 8
  %209 = load i32, i32* @_PFA_WIN_POS, align 4
  %210 = call i8* @I915_READ(i32 %209)
  %211 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %212 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 65
  store i8* %210, i8** %213, align 8
  %214 = load i32, i32* @_TRANSACONF, align 4
  %215 = call i8* @I915_READ(i32 %214)
  %216 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %217 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 64
  store i8* %215, i8** %218, align 8
  %219 = load i32, i32* @_TRANS_HTOTAL_A, align 4
  %220 = call i8* @I915_READ(i32 %219)
  %221 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %222 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 63
  store i8* %220, i8** %223, align 8
  %224 = load i32, i32* @_TRANS_HBLANK_A, align 4
  %225 = call i8* @I915_READ(i32 %224)
  %226 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %227 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 62
  store i8* %225, i8** %228, align 8
  %229 = load i32, i32* @_TRANS_HSYNC_A, align 4
  %230 = call i8* @I915_READ(i32 %229)
  %231 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %232 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 61
  store i8* %230, i8** %233, align 8
  %234 = load i32, i32* @_TRANS_VTOTAL_A, align 4
  %235 = call i8* @I915_READ(i32 %234)
  %236 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %237 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 60
  store i8* %235, i8** %238, align 8
  %239 = load i32, i32* @_TRANS_VBLANK_A, align 4
  %240 = call i8* @I915_READ(i32 %239)
  %241 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %242 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 59
  store i8* %240, i8** %243, align 8
  %244 = load i32, i32* @_TRANS_VSYNC_A, align 4
  %245 = call i8* @I915_READ(i32 %244)
  %246 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %247 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 58
  store i8* %245, i8** %248, align 8
  br label %249

249:                                              ; preds = %168, %164
  %250 = load i32, i32* @_DSPACNTR, align 4
  %251 = call i8* @I915_READ(i32 %250)
  %252 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %253 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 57
  store i8* %251, i8** %254, align 8
  %255 = load i32, i32* @_DSPASTRIDE, align 4
  %256 = call i8* @I915_READ(i32 %255)
  %257 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %258 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 56
  store i8* %256, i8** %259, align 8
  %260 = load i32, i32* @_DSPASIZE, align 4
  %261 = call i8* @I915_READ(i32 %260)
  %262 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %263 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 55
  store i8* %261, i8** %264, align 8
  %265 = load i32, i32* @_DSPAPOS, align 4
  %266 = call i8* @I915_READ(i32 %265)
  %267 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %268 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 54
  store i8* %266, i8** %269, align 8
  %270 = load i32, i32* @_DSPAADDR, align 4
  %271 = call i8* @I915_READ(i32 %270)
  %272 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %273 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 53
  store i8* %271, i8** %274, align 8
  %275 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %276 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %275)
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp sge i32 %278, 4
  br i1 %279, label %280, label %291

280:                                              ; preds = %249
  %281 = load i32, i32* @_DSPASURF, align 4
  %282 = call i8* @I915_READ(i32 %281)
  %283 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %284 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 52
  store i8* %282, i8** %285, align 8
  %286 = load i32, i32* @_DSPATILEOFF, align 4
  %287 = call i8* @I915_READ(i32 %286)
  %288 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %289 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 51
  store i8* %287, i8** %290, align 8
  br label %291

291:                                              ; preds = %280, %249
  %292 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %293 = load i32, i32* @PIPE_A, align 4
  %294 = call i32 @i915_save_palette(%struct.drm_device* %292, i32 %293)
  %295 = load i32, i32* @_PIPEASTAT, align 4
  %296 = call i8* @I915_READ(i32 %295)
  %297 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %298 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 50
  store i8* %296, i8** %299, align 8
  %300 = load i32, i32* @_PIPEBCONF, align 4
  %301 = call i8* @I915_READ(i32 %300)
  %302 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %303 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 49
  store i8* %301, i8** %304, align 8
  %305 = load i32, i32* @_PIPEBSRC, align 4
  %306 = call i8* @I915_READ(i32 %305)
  %307 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %308 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 48
  store i8* %306, i8** %309, align 8
  %310 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %311 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %329

313:                                              ; preds = %291
  %314 = load i32, i32* @_PCH_FPB0, align 4
  %315 = call i8* @I915_READ(i32 %314)
  %316 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %317 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 47
  store i8* %315, i8** %318, align 8
  %319 = load i32, i32* @_PCH_FPB1, align 4
  %320 = call i8* @I915_READ(i32 %319)
  %321 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %322 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 46
  store i8* %320, i8** %323, align 8
  %324 = load i32, i32* @_PCH_DPLL_B, align 4
  %325 = call i8* @I915_READ(i32 %324)
  %326 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %327 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 45
  store i8* %325, i8** %328, align 8
  br label %345

329:                                              ; preds = %291
  %330 = load i32, i32* @_FPB0, align 4
  %331 = call i8* @I915_READ(i32 %330)
  %332 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %333 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 47
  store i8* %331, i8** %334, align 8
  %335 = load i32, i32* @_FPB1, align 4
  %336 = call i8* @I915_READ(i32 %335)
  %337 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %338 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 46
  store i8* %336, i8** %339, align 8
  %340 = load i32, i32* @_DPLL_B, align 4
  %341 = call i8* @I915_READ(i32 %340)
  %342 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %343 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 45
  store i8* %341, i8** %344, align 8
  br label %345

345:                                              ; preds = %329, %313
  %346 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %347 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %346)
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp sge i32 %349, 4
  br i1 %350, label %351, label %361

351:                                              ; preds = %345
  %352 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %353 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %351
  %356 = load i32, i32* @_DPLL_B_MD, align 4
  %357 = call i8* @I915_READ(i32 %356)
  %358 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %359 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 44
  store i8* %357, i8** %360, align 8
  br label %361

361:                                              ; preds = %355, %351, %345
  %362 = load i32, i32* @_HTOTAL_B, align 4
  %363 = call i8* @I915_READ(i32 %362)
  %364 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %365 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 43
  store i8* %363, i8** %366, align 8
  %367 = load i32, i32* @_HBLANK_B, align 4
  %368 = call i8* @I915_READ(i32 %367)
  %369 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %370 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 42
  store i8* %368, i8** %371, align 8
  %372 = load i32, i32* @_HSYNC_B, align 4
  %373 = call i8* @I915_READ(i32 %372)
  %374 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %375 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %375, i32 0, i32 41
  store i8* %373, i8** %376, align 8
  %377 = load i32, i32* @_VTOTAL_B, align 4
  %378 = call i8* @I915_READ(i32 %377)
  %379 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %380 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 40
  store i8* %378, i8** %381, align 8
  %382 = load i32, i32* @_VBLANK_B, align 4
  %383 = call i8* @I915_READ(i32 %382)
  %384 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %385 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 39
  store i8* %383, i8** %386, align 8
  %387 = load i32, i32* @_VSYNC_B, align 4
  %388 = call i8* @I915_READ(i32 %387)
  %389 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %390 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 38
  store i8* %388, i8** %391, align 8
  %392 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %393 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %401, label %395

395:                                              ; preds = %361
  %396 = load i32, i32* @_BCLRPAT_B, align 4
  %397 = call i8* @I915_READ(i32 %396)
  %398 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %399 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 37
  store i8* %397, i8** %400, align 8
  br label %401

401:                                              ; preds = %395, %361
  %402 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %403 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %486

405:                                              ; preds = %401
  %406 = load i32, i32* @_PIPEB_DATA_M1, align 4
  %407 = call i8* @I915_READ(i32 %406)
  %408 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %409 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 36
  store i8* %407, i8** %410, align 8
  %411 = load i32, i32* @_PIPEB_DATA_N1, align 4
  %412 = call i8* @I915_READ(i32 %411)
  %413 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %414 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 35
  store i8* %412, i8** %415, align 8
  %416 = load i32, i32* @_PIPEB_LINK_M1, align 4
  %417 = call i8* @I915_READ(i32 %416)
  %418 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %419 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 34
  store i8* %417, i8** %420, align 8
  %421 = load i32, i32* @_PIPEB_LINK_N1, align 4
  %422 = call i8* @I915_READ(i32 %421)
  %423 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %424 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 33
  store i8* %422, i8** %425, align 8
  %426 = load i32, i32* @_FDI_TXB_CTL, align 4
  %427 = call i8* @I915_READ(i32 %426)
  %428 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %429 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 32
  store i8* %427, i8** %430, align 8
  %431 = load i32, i32* @_FDI_RXB_CTL, align 4
  %432 = call i8* @I915_READ(i32 %431)
  %433 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %434 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 31
  store i8* %432, i8** %435, align 8
  %436 = load i32, i32* @_PFB_CTL_1, align 4
  %437 = call i8* @I915_READ(i32 %436)
  %438 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %439 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 30
  store i8* %437, i8** %440, align 8
  %441 = load i32, i32* @_PFB_WIN_SZ, align 4
  %442 = call i8* @I915_READ(i32 %441)
  %443 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %444 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %444, i32 0, i32 29
  store i8* %442, i8** %445, align 8
  %446 = load i32, i32* @_PFB_WIN_POS, align 4
  %447 = call i8* @I915_READ(i32 %446)
  %448 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %449 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 28
  store i8* %447, i8** %450, align 8
  %451 = load i32, i32* @_TRANSBCONF, align 4
  %452 = call i8* @I915_READ(i32 %451)
  %453 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %454 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %454, i32 0, i32 27
  store i8* %452, i8** %455, align 8
  %456 = load i32, i32* @_TRANS_HTOTAL_B, align 4
  %457 = call i8* @I915_READ(i32 %456)
  %458 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %459 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %459, i32 0, i32 26
  store i8* %457, i8** %460, align 8
  %461 = load i32, i32* @_TRANS_HBLANK_B, align 4
  %462 = call i8* @I915_READ(i32 %461)
  %463 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %464 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i32 0, i32 25
  store i8* %462, i8** %465, align 8
  %466 = load i32, i32* @_TRANS_HSYNC_B, align 4
  %467 = call i8* @I915_READ(i32 %466)
  %468 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %469 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 24
  store i8* %467, i8** %470, align 8
  %471 = load i32, i32* @_TRANS_VTOTAL_B, align 4
  %472 = call i8* @I915_READ(i32 %471)
  %473 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %474 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 23
  store i8* %472, i8** %475, align 8
  %476 = load i32, i32* @_TRANS_VBLANK_B, align 4
  %477 = call i8* @I915_READ(i32 %476)
  %478 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %479 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %479, i32 0, i32 22
  store i8* %477, i8** %480, align 8
  %481 = load i32, i32* @_TRANS_VSYNC_B, align 4
  %482 = call i8* @I915_READ(i32 %481)
  %483 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %484 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %484, i32 0, i32 21
  store i8* %482, i8** %485, align 8
  br label %486

486:                                              ; preds = %405, %401
  %487 = load i32, i32* @_DSPBCNTR, align 4
  %488 = call i8* @I915_READ(i32 %487)
  %489 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %490 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %490, i32 0, i32 20
  store i8* %488, i8** %491, align 8
  %492 = load i32, i32* @_DSPBSTRIDE, align 4
  %493 = call i8* @I915_READ(i32 %492)
  %494 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %495 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %495, i32 0, i32 19
  store i8* %493, i8** %496, align 8
  %497 = load i32, i32* @_DSPBSIZE, align 4
  %498 = call i8* @I915_READ(i32 %497)
  %499 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %500 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %500, i32 0, i32 18
  store i8* %498, i8** %501, align 8
  %502 = load i32, i32* @_DSPBPOS, align 4
  %503 = call i8* @I915_READ(i32 %502)
  %504 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %505 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %505, i32 0, i32 17
  store i8* %503, i8** %506, align 8
  %507 = load i32, i32* @_DSPBADDR, align 4
  %508 = call i8* @I915_READ(i32 %507)
  %509 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %510 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %510, i32 0, i32 16
  store i8* %508, i8** %511, align 8
  %512 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %513 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %512)
  %514 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  %516 = icmp sge i32 %515, 4
  br i1 %516, label %517, label %528

517:                                              ; preds = %486
  %518 = load i32, i32* @_DSPBSURF, align 4
  %519 = call i8* @I915_READ(i32 %518)
  %520 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %521 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i32 0, i32 15
  store i8* %519, i8** %522, align 8
  %523 = load i32, i32* @_DSPBTILEOFF, align 4
  %524 = call i8* @I915_READ(i32 %523)
  %525 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %526 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %526, i32 0, i32 14
  store i8* %524, i8** %527, align 8
  br label %528

528:                                              ; preds = %517, %486
  %529 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %530 = load i32, i32* @PIPE_B, align 4
  %531 = call i32 @i915_save_palette(%struct.drm_device* %529, i32 %530)
  %532 = load i32, i32* @_PIPEBSTAT, align 4
  %533 = call i8* @I915_READ(i32 %532)
  %534 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %535 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %535, i32 0, i32 13
  store i8* %533, i8** %536, align 8
  %537 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %538 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %537)
  %539 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  switch i32 %540, label %639 [
    i32 7, label %541
    i32 6, label %541
    i32 5, label %562
    i32 4, label %562
    i32 3, label %583
    i32 2, label %618
  ]

541:                                              ; preds = %528, %528
  store i32 0, i32* %4, align 4
  br label %542

542:                                              ; preds = %558, %541
  %543 = load i32, i32* %4, align 4
  %544 = icmp slt i32 %543, 16
  br i1 %544, label %545, label %561

545:                                              ; preds = %542
  %546 = load i32, i32* @FENCE_REG_SANDYBRIDGE_0, align 4
  %547 = load i32, i32* %4, align 4
  %548 = mul nsw i32 %547, 8
  %549 = add nsw i32 %546, %548
  %550 = call i8* @I915_READ64(i32 %549)
  %551 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %552 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %552, i32 0, i32 12
  %554 = load i8**, i8*** %553, align 8
  %555 = load i32, i32* %4, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i8*, i8** %554, i64 %556
  store i8* %550, i8** %557, align 8
  br label %558

558:                                              ; preds = %545
  %559 = load i32, i32* %4, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %4, align 4
  br label %542

561:                                              ; preds = %542
  br label %639

562:                                              ; preds = %528, %528
  store i32 0, i32* %4, align 4
  br label %563

563:                                              ; preds = %579, %562
  %564 = load i32, i32* %4, align 4
  %565 = icmp slt i32 %564, 16
  br i1 %565, label %566, label %582

566:                                              ; preds = %563
  %567 = load i32, i32* @FENCE_REG_965_0, align 4
  %568 = load i32, i32* %4, align 4
  %569 = mul nsw i32 %568, 8
  %570 = add nsw i32 %567, %569
  %571 = call i8* @I915_READ64(i32 %570)
  %572 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %573 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %573, i32 0, i32 12
  %575 = load i8**, i8*** %574, align 8
  %576 = load i32, i32* %4, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i8*, i8** %575, i64 %577
  store i8* %571, i8** %578, align 8
  br label %579

579:                                              ; preds = %566
  %580 = load i32, i32* %4, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %4, align 4
  br label %563

582:                                              ; preds = %563
  br label %639

583:                                              ; preds = %528
  %584 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %585 = call i32 @IS_I945G(%struct.drm_device* %584)
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %595, label %587

587:                                              ; preds = %583
  %588 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %589 = call i32 @IS_I945GM(%struct.drm_device* %588)
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %595, label %591

591:                                              ; preds = %587
  %592 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %593 = call i32 @IS_G33(%struct.drm_device* %592)
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %617

595:                                              ; preds = %591, %587, %583
  store i32 0, i32* %4, align 4
  br label %596

596:                                              ; preds = %613, %595
  %597 = load i32, i32* %4, align 4
  %598 = icmp slt i32 %597, 8
  br i1 %598, label %599, label %616

599:                                              ; preds = %596
  %600 = load i32, i32* @FENCE_REG_945_8, align 4
  %601 = load i32, i32* %4, align 4
  %602 = mul nsw i32 %601, 4
  %603 = add nsw i32 %600, %602
  %604 = call i8* @I915_READ(i32 %603)
  %605 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %606 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %606, i32 0, i32 12
  %608 = load i8**, i8*** %607, align 8
  %609 = load i32, i32* %4, align 4
  %610 = add nsw i32 %609, 8
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i8*, i8** %608, i64 %611
  store i8* %604, i8** %612, align 8
  br label %613

613:                                              ; preds = %599
  %614 = load i32, i32* %4, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %4, align 4
  br label %596

616:                                              ; preds = %596
  br label %617

617:                                              ; preds = %616, %591
  br label %618

618:                                              ; preds = %528, %617
  store i32 0, i32* %4, align 4
  br label %619

619:                                              ; preds = %635, %618
  %620 = load i32, i32* %4, align 4
  %621 = icmp slt i32 %620, 8
  br i1 %621, label %622, label %638

622:                                              ; preds = %619
  %623 = load i32, i32* @FENCE_REG_830_0, align 4
  %624 = load i32, i32* %4, align 4
  %625 = mul nsw i32 %624, 4
  %626 = add nsw i32 %623, %625
  %627 = call i8* @I915_READ(i32 %626)
  %628 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %629 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %628, i32 0, i32 0
  %630 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %629, i32 0, i32 12
  %631 = load i8**, i8*** %630, align 8
  %632 = load i32, i32* %4, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i8*, i8** %631, i64 %633
  store i8* %627, i8** %634, align 8
  br label %635

635:                                              ; preds = %622
  %636 = load i32, i32* %4, align 4
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %4, align 4
  br label %619

638:                                              ; preds = %619
  br label %639

639:                                              ; preds = %528, %638, %582, %561
  %640 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %641 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %640)
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %649

643:                                              ; preds = %639
  %644 = load i32, i32* @PCH_ADPA, align 4
  %645 = call i8* @I915_READ(i32 %644)
  %646 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %647 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %647, i32 0, i32 11
  store i8* %645, i8** %648, align 8
  br label %655

649:                                              ; preds = %639
  %650 = load i32, i32* @ADPA, align 4
  %651 = call i8* @I915_READ(i32 %650)
  %652 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %653 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %652, i32 0, i32 0
  %654 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %653, i32 0, i32 11
  store i8* %651, i8** %654, align 8
  br label %655

655:                                              ; preds = %649, %643
  %656 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %657 = call i64 @SUPPORTS_INTEGRATED_DP(%struct.drm_device* %656)
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %715

659:                                              ; preds = %655
  %660 = load i32, i32* @DP_B, align 4
  %661 = call i8* @I915_READ(i32 %660)
  %662 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %663 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %662, i32 0, i32 0
  %664 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %663, i32 0, i32 10
  store i8* %661, i8** %664, align 8
  %665 = load i32, i32* @DP_C, align 4
  %666 = call i8* @I915_READ(i32 %665)
  %667 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %668 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %667, i32 0, i32 0
  %669 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %668, i32 0, i32 9
  store i8* %666, i8** %669, align 8
  %670 = load i32, i32* @DP_D, align 4
  %671 = call i8* @I915_READ(i32 %670)
  %672 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %673 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %672, i32 0, i32 0
  %674 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %673, i32 0, i32 8
  store i8* %671, i8** %674, align 8
  %675 = load i32, i32* @_PIPEA_GMCH_DATA_M, align 4
  %676 = call i8* @I915_READ(i32 %675)
  %677 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %678 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %677, i32 0, i32 0
  %679 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %678, i32 0, i32 7
  store i8* %676, i8** %679, align 8
  %680 = load i32, i32* @_PIPEB_GMCH_DATA_M, align 4
  %681 = call i8* @I915_READ(i32 %680)
  %682 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %683 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %682, i32 0, i32 0
  %684 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %683, i32 0, i32 6
  store i8* %681, i8** %684, align 8
  %685 = load i32, i32* @_PIPEA_GMCH_DATA_N, align 4
  %686 = call i8* @I915_READ(i32 %685)
  %687 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %688 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %687, i32 0, i32 0
  %689 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %688, i32 0, i32 5
  store i8* %686, i8** %689, align 8
  %690 = load i32, i32* @_PIPEB_GMCH_DATA_N, align 4
  %691 = call i8* @I915_READ(i32 %690)
  %692 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %693 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %693, i32 0, i32 4
  store i8* %691, i8** %694, align 8
  %695 = load i32, i32* @_PIPEA_DP_LINK_M, align 4
  %696 = call i8* @I915_READ(i32 %695)
  %697 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %698 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %697, i32 0, i32 0
  %699 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %698, i32 0, i32 3
  store i8* %696, i8** %699, align 8
  %700 = load i32, i32* @_PIPEB_DP_LINK_M, align 4
  %701 = call i8* @I915_READ(i32 %700)
  %702 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %703 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %702, i32 0, i32 0
  %704 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %703, i32 0, i32 2
  store i8* %701, i8** %704, align 8
  %705 = load i32, i32* @_PIPEA_DP_LINK_N, align 4
  %706 = call i8* @I915_READ(i32 %705)
  %707 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %708 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %707, i32 0, i32 0
  %709 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %708, i32 0, i32 1
  store i8* %706, i8** %709, align 8
  %710 = load i32, i32* @_PIPEB_DP_LINK_N, align 4
  %711 = call i8* @I915_READ(i32 %710)
  %712 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %713 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %712, i32 0, i32 0
  %714 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %713, i32 0, i32 0
  store i8* %711, i8** %714, align 8
  br label %715

715:                                              ; preds = %659, %655
  ret void
}

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @i915_save_palette(%struct.drm_device*, i32) #1

declare dso_local i8* @I915_READ64(i32) #1

declare dso_local i32 @IS_I945G(%struct.drm_device*) #1

declare dso_local i32 @IS_I945GM(%struct.drm_device*) #1

declare dso_local i32 @IS_G33(%struct.drm_device*) #1

declare dso_local i64 @SUPPORTS_INTEGRATED_DP(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

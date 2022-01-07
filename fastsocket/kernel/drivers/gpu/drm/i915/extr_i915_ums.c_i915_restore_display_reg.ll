; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_ums.c_i915_restore_display_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_ums.c_i915_restore_display_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@_PIPEA_GMCH_DATA_M = common dso_local global i32 0, align 4
@_PIPEB_GMCH_DATA_M = common dso_local global i32 0, align 4
@_PIPEA_GMCH_DATA_N = common dso_local global i32 0, align 4
@_PIPEB_GMCH_DATA_N = common dso_local global i32 0, align 4
@_PIPEA_DP_LINK_M = common dso_local global i32 0, align 4
@_PIPEB_DP_LINK_M = common dso_local global i32 0, align 4
@_PIPEA_DP_LINK_N = common dso_local global i32 0, align 4
@_PIPEB_DP_LINK_N = common dso_local global i32 0, align 4
@FENCE_REG_SANDYBRIDGE_0 = common dso_local global i32 0, align 4
@FENCE_REG_965_0 = common dso_local global i32 0, align 4
@FENCE_REG_945_8 = common dso_local global i32 0, align 4
@FENCE_REG_830_0 = common dso_local global i32 0, align 4
@_PCH_DPLL_A = common dso_local global i32 0, align 4
@_PCH_DPLL_B = common dso_local global i32 0, align 4
@_PCH_FPA0 = common dso_local global i32 0, align 4
@_PCH_FPB0 = common dso_local global i32 0, align 4
@_PCH_FPA1 = common dso_local global i32 0, align 4
@_PCH_FPB1 = common dso_local global i32 0, align 4
@_DPLL_A = common dso_local global i32 0, align 4
@_DPLL_B = common dso_local global i32 0, align 4
@_FPA0 = common dso_local global i32 0, align 4
@_FPB0 = common dso_local global i32 0, align 4
@_FPA1 = common dso_local global i32 0, align 4
@_FPB1 = common dso_local global i32 0, align 4
@PCH_DREF_CONTROL = common dso_local global i32 0, align 4
@DISP_ARB_CTL = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
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
@_FDI_RXA_CTL = common dso_local global i32 0, align 4
@_FDI_TXA_CTL = common dso_local global i32 0, align 4
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
@_DSPASIZE = common dso_local global i32 0, align 4
@_DSPAPOS = common dso_local global i32 0, align 4
@_PIPEASRC = common dso_local global i32 0, align 4
@_DSPAADDR = common dso_local global i32 0, align 4
@_DSPASTRIDE = common dso_local global i32 0, align 4
@_DSPASURF = common dso_local global i32 0, align 4
@_DSPATILEOFF = common dso_local global i32 0, align 4
@_PIPEACONF = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@_DSPACNTR = common dso_local global i32 0, align 4
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
@_FDI_RXB_CTL = common dso_local global i32 0, align 4
@_FDI_TXB_CTL = common dso_local global i32 0, align 4
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
@_DSPBSIZE = common dso_local global i32 0, align 4
@_DSPBPOS = common dso_local global i32 0, align 4
@_PIPEBSRC = common dso_local global i32 0, align 4
@_DSPBADDR = common dso_local global i32 0, align 4
@_DSPBSTRIDE = common dso_local global i32 0, align 4
@_DSPBSURF = common dso_local global i32 0, align 4
@_DSPBTILEOFF = common dso_local global i32 0, align 4
@_PIPEBCONF = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@_DSPBCNTR = common dso_local global i32 0, align 4
@_CURAPOS = common dso_local global i32 0, align 4
@_CURACNTR = common dso_local global i32 0, align 4
@_CURABASE = common dso_local global i32 0, align 4
@_CURBPOS = common dso_local global i32 0, align 4
@_CURBCNTR = common dso_local global i32 0, align 4
@_CURBBASE = common dso_local global i32 0, align 4
@CURSIZE = common dso_local global i32 0, align 4
@PCH_ADPA = common dso_local global i32 0, align 4
@ADPA = common dso_local global i32 0, align 4
@DP_B = common dso_local global i32 0, align 4
@DP_C = common dso_local global i32 0, align 4
@DP_D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_restore_display_reg(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = call i64 @SUPPORTS_INTEGRATED_DP(%struct.drm_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %1
  %18 = load i32, i32* @_PIPEA_GMCH_DATA_M, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @I915_WRITE(i32 %18, i32 %22)
  %24 = load i32, i32* @_PIPEB_GMCH_DATA_M, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @I915_WRITE(i32 %24, i32 %28)
  %30 = load i32, i32* @_PIPEA_GMCH_DATA_N, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @I915_WRITE(i32 %30, i32 %34)
  %36 = load i32, i32* @_PIPEB_GMCH_DATA_N, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @I915_WRITE(i32 %36, i32 %40)
  %42 = load i32, i32* @_PIPEA_DP_LINK_M, align 4
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @I915_WRITE(i32 %42, i32 %46)
  %48 = load i32, i32* @_PIPEB_DP_LINK_M, align 4
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @I915_WRITE(i32 %48, i32 %52)
  %54 = load i32, i32* @_PIPEA_DP_LINK_N, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @I915_WRITE(i32 %54, i32 %58)
  %60 = load i32, i32* @_PIPEB_DP_LINK_N, align 4
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %62 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @I915_WRITE(i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %17, %1
  %67 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %68 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %172 [
    i32 7, label %71
    i32 6, label %71
    i32 5, label %93
    i32 4, label %93
    i32 3, label %115
    i32 2, label %115
  ]

71:                                               ; preds = %66, %66
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %89, %71
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 16
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i32, i32* @FENCE_REG_SANDYBRIDGE_0, align 4
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %77, 8
  %79 = add nsw i32 %76, %78
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %81 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 8
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @I915_WRITE64(i32 %79, i32 %87)
  br label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %72

92:                                               ; preds = %72
  br label %172

93:                                               ; preds = %66, %66
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %111, %93
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 16
  br i1 %96, label %97, label %114

97:                                               ; preds = %94
  %98 = load i32, i32* @FENCE_REG_965_0, align 4
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 %99, 8
  %101 = add nsw i32 %98, %100
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %103 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 8
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @I915_WRITE64(i32 %101, i32 %109)
  br label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %94

114:                                              ; preds = %94
  br label %172

115:                                              ; preds = %66, %66
  %116 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %117 = call i32 @IS_I945G(%struct.drm_device* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %121 = call i32 @IS_I945GM(%struct.drm_device* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %125 = call i32 @IS_G33(%struct.drm_device* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %123, %119, %115
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %146, %127
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 8
  br i1 %130, label %131, label %149

131:                                              ; preds = %128
  %132 = load i32, i32* @FENCE_REG_945_8, align 4
  %133 = load i32, i32* %10, align 4
  %134 = mul nsw i32 %133, 4
  %135 = add nsw i32 %132, %134
  %136 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %137 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 8
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @I915_WRITE(i32 %135, i32 %144)
  br label %146

146:                                              ; preds = %131
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %128

149:                                              ; preds = %128
  br label %150

150:                                              ; preds = %149, %123
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %168, %150
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 8
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load i32, i32* @FENCE_REG_830_0, align 4
  %156 = load i32, i32* %10, align 4
  %157 = mul nsw i32 %156, 4
  %158 = add nsw i32 %155, %157
  %159 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %160 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 8
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @I915_WRITE(i32 %158, i32 %166)
  br label %168

168:                                              ; preds = %154
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %151

171:                                              ; preds = %151
  br label %172

172:                                              ; preds = %66, %171, %114, %92
  %173 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %174 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = load i32, i32* @_PCH_DPLL_A, align 4
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* @_PCH_DPLL_B, align 4
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* @_PCH_FPA0, align 4
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* @_PCH_FPB0, align 4
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* @_PCH_FPA1, align 4
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* @_PCH_FPB1, align 4
  store i32 %182, i32* %9, align 4
  br label %190

183:                                              ; preds = %172
  %184 = load i32, i32* @_DPLL_A, align 4
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* @_DPLL_B, align 4
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* @_FPA0, align 4
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* @_FPB0, align 4
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* @_FPA1, align 4
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* @_FPB1, align 4
  store i32 %189, i32* %9, align 4
  br label %190

190:                                              ; preds = %183, %176
  %191 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %192 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %190
  %195 = load i32, i32* @PCH_DREF_CONTROL, align 4
  %196 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %197 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @I915_WRITE(i32 %195, i32 %199)
  %201 = load i32, i32* @DISP_ARB_CTL, align 4
  %202 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %203 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 10
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @I915_WRITE(i32 %201, i32 %205)
  br label %207

207:                                              ; preds = %194, %190
  %208 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %209 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 11
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %207
  %216 = load i32, i32* %4, align 4
  %217 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %218 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 11
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %222 = xor i32 %221, -1
  %223 = and i32 %220, %222
  %224 = call i32 @I915_WRITE(i32 %216, i32 %223)
  %225 = load i32, i32* %4, align 4
  %226 = call i32 @POSTING_READ(i32 %225)
  %227 = call i32 @udelay(i32 150)
  br label %228

228:                                              ; preds = %215, %207
  %229 = load i32, i32* %5, align 4
  %230 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %231 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 12
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @I915_WRITE(i32 %229, i32 %233)
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %237 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 13
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @I915_WRITE(i32 %235, i32 %239)
  %241 = load i32, i32* %4, align 4
  %242 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %243 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 11
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @I915_WRITE(i32 %241, i32 %245)
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @POSTING_READ(i32 %247)
  %249 = call i32 @udelay(i32 150)
  %250 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %251 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %250)
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp sge i32 %253, 4
  br i1 %254, label %255, label %268

255:                                              ; preds = %228
  %256 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %257 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %268, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* @_DPLL_A_MD, align 4
  %261 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %262 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 14
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @I915_WRITE(i32 %260, i32 %264)
  %266 = load i32, i32* @_DPLL_A_MD, align 4
  %267 = call i32 @POSTING_READ(i32 %266)
  br label %268

268:                                              ; preds = %259, %255, %228
  %269 = call i32 @udelay(i32 150)
  %270 = load i32, i32* @_HTOTAL_A, align 4
  %271 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %272 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 15
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @I915_WRITE(i32 %270, i32 %274)
  %276 = load i32, i32* @_HBLANK_A, align 4
  %277 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %278 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 16
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @I915_WRITE(i32 %276, i32 %280)
  %282 = load i32, i32* @_HSYNC_A, align 4
  %283 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %284 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 17
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @I915_WRITE(i32 %282, i32 %286)
  %288 = load i32, i32* @_VTOTAL_A, align 4
  %289 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %290 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 18
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @I915_WRITE(i32 %288, i32 %292)
  %294 = load i32, i32* @_VBLANK_A, align 4
  %295 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %296 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 19
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @I915_WRITE(i32 %294, i32 %298)
  %300 = load i32, i32* @_VSYNC_A, align 4
  %301 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %302 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 20
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @I915_WRITE(i32 %300, i32 %304)
  %306 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %307 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %268
  %310 = load i32, i32* @_BCLRPAT_A, align 4
  %311 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %312 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 21
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @I915_WRITE(i32 %310, i32 %314)
  br label %316

316:                                              ; preds = %309, %268
  %317 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %318 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %417

320:                                              ; preds = %316
  %321 = load i32, i32* @_PIPEA_DATA_M1, align 4
  %322 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %323 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 22
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @I915_WRITE(i32 %321, i32 %325)
  %327 = load i32, i32* @_PIPEA_DATA_N1, align 4
  %328 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %329 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 23
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @I915_WRITE(i32 %327, i32 %331)
  %333 = load i32, i32* @_PIPEA_LINK_M1, align 4
  %334 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %335 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 24
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @I915_WRITE(i32 %333, i32 %337)
  %339 = load i32, i32* @_PIPEA_LINK_N1, align 4
  %340 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %341 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 25
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @I915_WRITE(i32 %339, i32 %343)
  %345 = load i32, i32* @_FDI_RXA_CTL, align 4
  %346 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %347 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 26
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @I915_WRITE(i32 %345, i32 %349)
  %351 = load i32, i32* @_FDI_TXA_CTL, align 4
  %352 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %353 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i32 0, i32 27
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @I915_WRITE(i32 %351, i32 %355)
  %357 = load i32, i32* @_PFA_CTL_1, align 4
  %358 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %359 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 28
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @I915_WRITE(i32 %357, i32 %361)
  %363 = load i32, i32* @_PFA_WIN_SZ, align 4
  %364 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %365 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 29
  %367 = load i32, i32* %366, align 8
  %368 = call i32 @I915_WRITE(i32 %363, i32 %367)
  %369 = load i32, i32* @_PFA_WIN_POS, align 4
  %370 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %371 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 30
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @I915_WRITE(i32 %369, i32 %373)
  %375 = load i32, i32* @_TRANSACONF, align 4
  %376 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %377 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 31
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @I915_WRITE(i32 %375, i32 %379)
  %381 = load i32, i32* @_TRANS_HTOTAL_A, align 4
  %382 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %383 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 32
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @I915_WRITE(i32 %381, i32 %385)
  %387 = load i32, i32* @_TRANS_HBLANK_A, align 4
  %388 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %389 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 33
  %391 = load i32, i32* %390, align 8
  %392 = call i32 @I915_WRITE(i32 %387, i32 %391)
  %393 = load i32, i32* @_TRANS_HSYNC_A, align 4
  %394 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %395 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 34
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @I915_WRITE(i32 %393, i32 %397)
  %399 = load i32, i32* @_TRANS_VTOTAL_A, align 4
  %400 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %401 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 35
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @I915_WRITE(i32 %399, i32 %403)
  %405 = load i32, i32* @_TRANS_VBLANK_A, align 4
  %406 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %407 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 36
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @I915_WRITE(i32 %405, i32 %409)
  %411 = load i32, i32* @_TRANS_VSYNC_A, align 4
  %412 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %413 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 37
  %415 = load i32, i32* %414, align 8
  %416 = call i32 @I915_WRITE(i32 %411, i32 %415)
  br label %417

417:                                              ; preds = %320, %316
  %418 = load i32, i32* @_DSPASIZE, align 4
  %419 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %420 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 38
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @I915_WRITE(i32 %418, i32 %422)
  %424 = load i32, i32* @_DSPAPOS, align 4
  %425 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %426 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %426, i32 0, i32 39
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @I915_WRITE(i32 %424, i32 %428)
  %430 = load i32, i32* @_PIPEASRC, align 4
  %431 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %432 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i32 0, i32 40
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @I915_WRITE(i32 %430, i32 %434)
  %436 = load i32, i32* @_DSPAADDR, align 4
  %437 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %438 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 41
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @I915_WRITE(i32 %436, i32 %440)
  %442 = load i32, i32* @_DSPASTRIDE, align 4
  %443 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %444 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %444, i32 0, i32 42
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @I915_WRITE(i32 %442, i32 %446)
  %448 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %449 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %448)
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = icmp sge i32 %451, 4
  br i1 %452, label %453, label %466

453:                                              ; preds = %417
  %454 = load i32, i32* @_DSPASURF, align 4
  %455 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %456 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %456, i32 0, i32 43
  %458 = load i32, i32* %457, align 8
  %459 = call i32 @I915_WRITE(i32 %454, i32 %458)
  %460 = load i32, i32* @_DSPATILEOFF, align 4
  %461 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %462 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 44
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @I915_WRITE(i32 %460, i32 %464)
  br label %466

466:                                              ; preds = %453, %417
  %467 = load i32, i32* @_PIPEACONF, align 4
  %468 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %469 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 45
  %471 = load i32, i32* %470, align 8
  %472 = call i32 @I915_WRITE(i32 %467, i32 %471)
  %473 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %474 = load i32, i32* @PIPE_A, align 4
  %475 = call i32 @i915_restore_palette(%struct.drm_device* %473, i32 %474)
  %476 = load i32, i32* @_DSPACNTR, align 4
  %477 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %478 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 46
  %480 = load i32, i32* %479, align 4
  %481 = call i32 @I915_WRITE(i32 %476, i32 %480)
  %482 = load i32, i32* @_DSPAADDR, align 4
  %483 = load i32, i32* @_DSPAADDR, align 4
  %484 = call i32 @I915_READ(i32 %483)
  %485 = call i32 @I915_WRITE(i32 %482, i32 %484)
  %486 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %487 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 47
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %506

493:                                              ; preds = %466
  %494 = load i32, i32* %7, align 4
  %495 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %496 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %496, i32 0, i32 47
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %500 = xor i32 %499, -1
  %501 = and i32 %498, %500
  %502 = call i32 @I915_WRITE(i32 %494, i32 %501)
  %503 = load i32, i32* %7, align 4
  %504 = call i32 @POSTING_READ(i32 %503)
  %505 = call i32 @udelay(i32 150)
  br label %506

506:                                              ; preds = %493, %466
  %507 = load i32, i32* %8, align 4
  %508 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %509 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %509, i32 0, i32 48
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @I915_WRITE(i32 %507, i32 %511)
  %513 = load i32, i32* %9, align 4
  %514 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %515 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %515, i32 0, i32 49
  %517 = load i32, i32* %516, align 8
  %518 = call i32 @I915_WRITE(i32 %513, i32 %517)
  %519 = load i32, i32* %7, align 4
  %520 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %521 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i32 0, i32 47
  %523 = load i32, i32* %522, align 8
  %524 = call i32 @I915_WRITE(i32 %519, i32 %523)
  %525 = load i32, i32* %7, align 4
  %526 = call i32 @POSTING_READ(i32 %525)
  %527 = call i32 @udelay(i32 150)
  %528 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %529 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %528)
  %530 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = icmp sge i32 %531, 4
  br i1 %532, label %533, label %546

533:                                              ; preds = %506
  %534 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %535 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %546, label %537

537:                                              ; preds = %533
  %538 = load i32, i32* @_DPLL_B_MD, align 4
  %539 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %540 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %540, i32 0, i32 50
  %542 = load i32, i32* %541, align 4
  %543 = call i32 @I915_WRITE(i32 %538, i32 %542)
  %544 = load i32, i32* @_DPLL_B_MD, align 4
  %545 = call i32 @POSTING_READ(i32 %544)
  br label %546

546:                                              ; preds = %537, %533, %506
  %547 = call i32 @udelay(i32 150)
  %548 = load i32, i32* @_HTOTAL_B, align 4
  %549 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %550 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %549, i32 0, i32 0
  %551 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %550, i32 0, i32 51
  %552 = load i32, i32* %551, align 8
  %553 = call i32 @I915_WRITE(i32 %548, i32 %552)
  %554 = load i32, i32* @_HBLANK_B, align 4
  %555 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %556 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %556, i32 0, i32 52
  %558 = load i32, i32* %557, align 4
  %559 = call i32 @I915_WRITE(i32 %554, i32 %558)
  %560 = load i32, i32* @_HSYNC_B, align 4
  %561 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %562 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %562, i32 0, i32 53
  %564 = load i32, i32* %563, align 8
  %565 = call i32 @I915_WRITE(i32 %560, i32 %564)
  %566 = load i32, i32* @_VTOTAL_B, align 4
  %567 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %568 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %567, i32 0, i32 0
  %569 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %568, i32 0, i32 54
  %570 = load i32, i32* %569, align 4
  %571 = call i32 @I915_WRITE(i32 %566, i32 %570)
  %572 = load i32, i32* @_VBLANK_B, align 4
  %573 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %574 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %574, i32 0, i32 55
  %576 = load i32, i32* %575, align 8
  %577 = call i32 @I915_WRITE(i32 %572, i32 %576)
  %578 = load i32, i32* @_VSYNC_B, align 4
  %579 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %580 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %579, i32 0, i32 0
  %581 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %580, i32 0, i32 56
  %582 = load i32, i32* %581, align 4
  %583 = call i32 @I915_WRITE(i32 %578, i32 %582)
  %584 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %585 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %584)
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %594, label %587

587:                                              ; preds = %546
  %588 = load i32, i32* @_BCLRPAT_B, align 4
  %589 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %590 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %590, i32 0, i32 57
  %592 = load i32, i32* %591, align 8
  %593 = call i32 @I915_WRITE(i32 %588, i32 %592)
  br label %594

594:                                              ; preds = %587, %546
  %595 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %596 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %595)
  %597 = icmp ne i64 %596, 0
  br i1 %597, label %598, label %695

598:                                              ; preds = %594
  %599 = load i32, i32* @_PIPEB_DATA_M1, align 4
  %600 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %601 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %600, i32 0, i32 0
  %602 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %601, i32 0, i32 58
  %603 = load i32, i32* %602, align 4
  %604 = call i32 @I915_WRITE(i32 %599, i32 %603)
  %605 = load i32, i32* @_PIPEB_DATA_N1, align 4
  %606 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %607 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %607, i32 0, i32 59
  %609 = load i32, i32* %608, align 8
  %610 = call i32 @I915_WRITE(i32 %605, i32 %609)
  %611 = load i32, i32* @_PIPEB_LINK_M1, align 4
  %612 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %613 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %613, i32 0, i32 60
  %615 = load i32, i32* %614, align 4
  %616 = call i32 @I915_WRITE(i32 %611, i32 %615)
  %617 = load i32, i32* @_PIPEB_LINK_N1, align 4
  %618 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %619 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %619, i32 0, i32 61
  %621 = load i32, i32* %620, align 8
  %622 = call i32 @I915_WRITE(i32 %617, i32 %621)
  %623 = load i32, i32* @_FDI_RXB_CTL, align 4
  %624 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %625 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %624, i32 0, i32 0
  %626 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %625, i32 0, i32 62
  %627 = load i32, i32* %626, align 4
  %628 = call i32 @I915_WRITE(i32 %623, i32 %627)
  %629 = load i32, i32* @_FDI_TXB_CTL, align 4
  %630 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %631 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %630, i32 0, i32 0
  %632 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %631, i32 0, i32 63
  %633 = load i32, i32* %632, align 8
  %634 = call i32 @I915_WRITE(i32 %629, i32 %633)
  %635 = load i32, i32* @_PFB_CTL_1, align 4
  %636 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %637 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %637, i32 0, i32 64
  %639 = load i32, i32* %638, align 4
  %640 = call i32 @I915_WRITE(i32 %635, i32 %639)
  %641 = load i32, i32* @_PFB_WIN_SZ, align 4
  %642 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %643 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %643, i32 0, i32 65
  %645 = load i32, i32* %644, align 8
  %646 = call i32 @I915_WRITE(i32 %641, i32 %645)
  %647 = load i32, i32* @_PFB_WIN_POS, align 4
  %648 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %649 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %649, i32 0, i32 66
  %651 = load i32, i32* %650, align 4
  %652 = call i32 @I915_WRITE(i32 %647, i32 %651)
  %653 = load i32, i32* @_TRANSBCONF, align 4
  %654 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %655 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %655, i32 0, i32 67
  %657 = load i32, i32* %656, align 8
  %658 = call i32 @I915_WRITE(i32 %653, i32 %657)
  %659 = load i32, i32* @_TRANS_HTOTAL_B, align 4
  %660 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %661 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %660, i32 0, i32 0
  %662 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %661, i32 0, i32 68
  %663 = load i32, i32* %662, align 4
  %664 = call i32 @I915_WRITE(i32 %659, i32 %663)
  %665 = load i32, i32* @_TRANS_HBLANK_B, align 4
  %666 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %667 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %667, i32 0, i32 69
  %669 = load i32, i32* %668, align 8
  %670 = call i32 @I915_WRITE(i32 %665, i32 %669)
  %671 = load i32, i32* @_TRANS_HSYNC_B, align 4
  %672 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %673 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %672, i32 0, i32 0
  %674 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %673, i32 0, i32 70
  %675 = load i32, i32* %674, align 4
  %676 = call i32 @I915_WRITE(i32 %671, i32 %675)
  %677 = load i32, i32* @_TRANS_VTOTAL_B, align 4
  %678 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %679 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %678, i32 0, i32 0
  %680 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %679, i32 0, i32 71
  %681 = load i32, i32* %680, align 8
  %682 = call i32 @I915_WRITE(i32 %677, i32 %681)
  %683 = load i32, i32* @_TRANS_VBLANK_B, align 4
  %684 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %685 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %684, i32 0, i32 0
  %686 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %685, i32 0, i32 72
  %687 = load i32, i32* %686, align 4
  %688 = call i32 @I915_WRITE(i32 %683, i32 %687)
  %689 = load i32, i32* @_TRANS_VSYNC_B, align 4
  %690 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %691 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %690, i32 0, i32 0
  %692 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %691, i32 0, i32 73
  %693 = load i32, i32* %692, align 8
  %694 = call i32 @I915_WRITE(i32 %689, i32 %693)
  br label %695

695:                                              ; preds = %598, %594
  %696 = load i32, i32* @_DSPBSIZE, align 4
  %697 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %698 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %697, i32 0, i32 0
  %699 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %698, i32 0, i32 74
  %700 = load i32, i32* %699, align 4
  %701 = call i32 @I915_WRITE(i32 %696, i32 %700)
  %702 = load i32, i32* @_DSPBPOS, align 4
  %703 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %704 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %703, i32 0, i32 0
  %705 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %704, i32 0, i32 75
  %706 = load i32, i32* %705, align 8
  %707 = call i32 @I915_WRITE(i32 %702, i32 %706)
  %708 = load i32, i32* @_PIPEBSRC, align 4
  %709 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %710 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %709, i32 0, i32 0
  %711 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %710, i32 0, i32 76
  %712 = load i32, i32* %711, align 4
  %713 = call i32 @I915_WRITE(i32 %708, i32 %712)
  %714 = load i32, i32* @_DSPBADDR, align 4
  %715 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %716 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %715, i32 0, i32 0
  %717 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %716, i32 0, i32 77
  %718 = load i32, i32* %717, align 8
  %719 = call i32 @I915_WRITE(i32 %714, i32 %718)
  %720 = load i32, i32* @_DSPBSTRIDE, align 4
  %721 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %722 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %721, i32 0, i32 0
  %723 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %722, i32 0, i32 78
  %724 = load i32, i32* %723, align 4
  %725 = call i32 @I915_WRITE(i32 %720, i32 %724)
  %726 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %727 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %726)
  %728 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 4
  %730 = icmp sge i32 %729, 4
  br i1 %730, label %731, label %744

731:                                              ; preds = %695
  %732 = load i32, i32* @_DSPBSURF, align 4
  %733 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %734 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %733, i32 0, i32 0
  %735 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %734, i32 0, i32 79
  %736 = load i32, i32* %735, align 8
  %737 = call i32 @I915_WRITE(i32 %732, i32 %736)
  %738 = load i32, i32* @_DSPBTILEOFF, align 4
  %739 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %740 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %739, i32 0, i32 0
  %741 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %740, i32 0, i32 80
  %742 = load i32, i32* %741, align 4
  %743 = call i32 @I915_WRITE(i32 %738, i32 %742)
  br label %744

744:                                              ; preds = %731, %695
  %745 = load i32, i32* @_PIPEBCONF, align 4
  %746 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %747 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %746, i32 0, i32 0
  %748 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %747, i32 0, i32 81
  %749 = load i32, i32* %748, align 8
  %750 = call i32 @I915_WRITE(i32 %745, i32 %749)
  %751 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %752 = load i32, i32* @PIPE_B, align 4
  %753 = call i32 @i915_restore_palette(%struct.drm_device* %751, i32 %752)
  %754 = load i32, i32* @_DSPBCNTR, align 4
  %755 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %756 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %755, i32 0, i32 0
  %757 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %756, i32 0, i32 82
  %758 = load i32, i32* %757, align 4
  %759 = call i32 @I915_WRITE(i32 %754, i32 %758)
  %760 = load i32, i32* @_DSPBADDR, align 4
  %761 = load i32, i32* @_DSPBADDR, align 4
  %762 = call i32 @I915_READ(i32 %761)
  %763 = call i32 @I915_WRITE(i32 %760, i32 %762)
  %764 = load i32, i32* @_CURAPOS, align 4
  %765 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %766 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %765, i32 0, i32 0
  %767 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %766, i32 0, i32 83
  %768 = load i32, i32* %767, align 8
  %769 = call i32 @I915_WRITE(i32 %764, i32 %768)
  %770 = load i32, i32* @_CURACNTR, align 4
  %771 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %772 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %771, i32 0, i32 0
  %773 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %772, i32 0, i32 84
  %774 = load i32, i32* %773, align 4
  %775 = call i32 @I915_WRITE(i32 %770, i32 %774)
  %776 = load i32, i32* @_CURABASE, align 4
  %777 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %778 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %777, i32 0, i32 0
  %779 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %778, i32 0, i32 85
  %780 = load i32, i32* %779, align 8
  %781 = call i32 @I915_WRITE(i32 %776, i32 %780)
  %782 = load i32, i32* @_CURBPOS, align 4
  %783 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %784 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %783, i32 0, i32 0
  %785 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %784, i32 0, i32 86
  %786 = load i32, i32* %785, align 4
  %787 = call i32 @I915_WRITE(i32 %782, i32 %786)
  %788 = load i32, i32* @_CURBCNTR, align 4
  %789 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %790 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %789, i32 0, i32 0
  %791 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %790, i32 0, i32 87
  %792 = load i32, i32* %791, align 8
  %793 = call i32 @I915_WRITE(i32 %788, i32 %792)
  %794 = load i32, i32* @_CURBBASE, align 4
  %795 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %796 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %795, i32 0, i32 0
  %797 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %796, i32 0, i32 88
  %798 = load i32, i32* %797, align 4
  %799 = call i32 @I915_WRITE(i32 %794, i32 %798)
  %800 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %801 = call i64 @IS_GEN2(%struct.drm_device* %800)
  %802 = icmp ne i64 %801, 0
  br i1 %802, label %803, label %810

803:                                              ; preds = %744
  %804 = load i32, i32* @CURSIZE, align 4
  %805 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %806 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %805, i32 0, i32 0
  %807 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %806, i32 0, i32 89
  %808 = load i32, i32* %807, align 8
  %809 = call i32 @I915_WRITE(i32 %804, i32 %808)
  br label %810

810:                                              ; preds = %803, %744
  %811 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %812 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %811)
  %813 = icmp ne i64 %812, 0
  br i1 %813, label %814, label %821

814:                                              ; preds = %810
  %815 = load i32, i32* @PCH_ADPA, align 4
  %816 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %817 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %816, i32 0, i32 0
  %818 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %817, i32 0, i32 90
  %819 = load i32, i32* %818, align 4
  %820 = call i32 @I915_WRITE(i32 %815, i32 %819)
  br label %828

821:                                              ; preds = %810
  %822 = load i32, i32* @ADPA, align 4
  %823 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %824 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %823, i32 0, i32 0
  %825 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %824, i32 0, i32 90
  %826 = load i32, i32* %825, align 4
  %827 = call i32 @I915_WRITE(i32 %822, i32 %826)
  br label %828

828:                                              ; preds = %821, %814
  %829 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %830 = call i64 @SUPPORTS_INTEGRATED_DP(%struct.drm_device* %829)
  %831 = icmp ne i64 %830, 0
  br i1 %831, label %832, label %851

832:                                              ; preds = %828
  %833 = load i32, i32* @DP_B, align 4
  %834 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %835 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %834, i32 0, i32 0
  %836 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %835, i32 0, i32 91
  %837 = load i32, i32* %836, align 8
  %838 = call i32 @I915_WRITE(i32 %833, i32 %837)
  %839 = load i32, i32* @DP_C, align 4
  %840 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %841 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %840, i32 0, i32 0
  %842 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %841, i32 0, i32 92
  %843 = load i32, i32* %842, align 4
  %844 = call i32 @I915_WRITE(i32 %839, i32 %843)
  %845 = load i32, i32* @DP_D, align 4
  %846 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %847 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %846, i32 0, i32 0
  %848 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %847, i32 0, i32 93
  %849 = load i32, i32* %848, align 8
  %850 = call i32 @I915_WRITE(i32 %845, i32 %849)
  br label %851

851:                                              ; preds = %832, %828
  ret void
}

declare dso_local i64 @SUPPORTS_INTEGRATED_DP(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE64(i32, i32) #1

declare dso_local i32 @IS_I945G(%struct.drm_device*) #1

declare dso_local i32 @IS_I945GM(%struct.drm_device*) #1

declare dso_local i32 @IS_G33(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i915_restore_palette(%struct.drm_device*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

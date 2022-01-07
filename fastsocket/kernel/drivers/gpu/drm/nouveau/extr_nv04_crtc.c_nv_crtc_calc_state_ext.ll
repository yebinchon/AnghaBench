; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv_crtc_calc_state_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv_crtc_calc_state_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nouveau_clock = type { i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, %struct.nouveau_pll_vals*)* }
%struct.nvbios_pll = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nouveau_pll_vals = type { i32, i32, i32, i32, i32, i64 }
%struct.nouveau_crtc = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 (%struct.nouveau_crtc.0*, i32)* }
%struct.nouveau_crtc.0 = type opaque
%struct.nv04_mode_state = type { i32, %struct.nv04_crtc_reg* }
%struct.nv04_crtc_reg = type { %struct.nouveau_pll_vals }
%struct.TYPE_8__ = type { %struct.nv04_mode_state }
%struct.TYPE_7__ = type { i32, i64 }

@PLL_VPLL1 = common dso_local global i32 0, align 4
@PLL_VPLL0 = common dso_local global i32 0, align 4
@PLLSEL_VPLL1_MASK = common dso_local global i32 0, align 4
@PLLSEL_VPLL2_MASK = common dso_local global i32 0, align 4
@PLLSEL_TV_MASK = common dso_local global i32 0, align 4
@NV_40 = common dso_local global i64 0, align 8
@NV_PRAMDAC_PLL_COEFF_SELECT_USE_VPLL2_TRUE = common dso_local global i32 0, align 4
@NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_MPLL = common dso_local global i32 0, align 4
@NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_NVPLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"vpll: n1 %d n2 %d m1 %d m2 %d log2p %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vpll: n %d m %d log2p %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*, i32)* @nv_crtc_calc_state_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_calc_state_ext(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.nouveau_bios*, align 8
  %10 = alloca %struct.nouveau_clock*, align 8
  %11 = alloca %struct.nouveau_crtc*, align 8
  %12 = alloca %struct.nv04_mode_state*, align 8
  %13 = alloca %struct.nv04_crtc_reg*, align 8
  %14 = alloca %struct.nouveau_pll_vals*, align 8
  %15 = alloca %struct.nvbios_pll, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %8, align 8
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.nouveau_bios* @nouveau_bios(i32 %23)
  store %struct.nouveau_bios* %24, %struct.nouveau_bios** %9, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.nouveau_clock* @nouveau_clock(i32 %27)
  store %struct.nouveau_clock* %28, %struct.nouveau_clock** %10, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %30 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %29)
  store %struct.nouveau_crtc* %30, %struct.nouveau_crtc** %11, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %32 = call %struct.TYPE_8__* @nv04_display(%struct.drm_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store %struct.nv04_mode_state* %33, %struct.nv04_mode_state** %12, align 8
  %34 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %12, align 8
  %35 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %34, i32 0, i32 1
  %36 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %35, align 8
  %37 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %38 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %36, i64 %39
  store %struct.nv04_crtc_reg* %40, %struct.nv04_crtc_reg** %13, align 8
  %41 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %13, align 8
  %42 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %41, i32 0, i32 0
  store %struct.nouveau_pll_vals* %42, %struct.nouveau_pll_vals** %14, align 8
  %43 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %44 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %45 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %3
  %49 = load i32, i32* @PLL_VPLL1, align 4
  br label %52

50:                                               ; preds = %3
  %51 = load i32, i32* @PLL_VPLL0, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i64 @nvbios_pll_parse(%struct.nouveau_bios* %43, i32 %53, %struct.nvbios_pll* %15)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %188

57:                                               ; preds = %52
  %58 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %59 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %61 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.TYPE_7__* @nv_device(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 64
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %15, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 2
  %73 = icmp sle i32 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %15, i32 0, i32 0
  %76 = call i32 @memset(i32* %75, i32 0, i32 4)
  br label %77

77:                                               ; preds = %74, %67, %57
  %78 = load %struct.nouveau_clock*, %struct.nouveau_clock** %10, align 8
  %79 = getelementptr inbounds %struct.nouveau_clock, %struct.nouveau_clock* %78, i32 0, i32 0
  %80 = load i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, %struct.nouveau_pll_vals*)*, i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, %struct.nouveau_pll_vals*)** %79, align 8
  %81 = load %struct.nouveau_clock*, %struct.nouveau_clock** %10, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %84 = call i32 %80(%struct.nouveau_clock* %81, %struct.nvbios_pll* %15, i32 %82, %struct.nouveau_pll_vals* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  br label %188

87:                                               ; preds = %77
  %88 = load i32, i32* @PLLSEL_VPLL1_MASK, align 4
  %89 = load i32, i32* @PLLSEL_VPLL2_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @PLLSEL_TV_MASK, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %12, align 8
  %94 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %98 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.TYPE_7__* @nv_device(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @NV_40, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %87
  %106 = load i32, i32* @NV_PRAMDAC_PLL_COEFF_SELECT_USE_VPLL2_TRUE, align 4
  %107 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %12, align 8
  %108 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %87
  %112 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %113 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.TYPE_7__* @nv_device(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 65
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load i32, i32* @NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_MPLL, align 4
  %121 = load i32, i32* @NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_NVPLL, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %12, align 8
  %124 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %119, %111
  %128 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %129 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @PLLSEL_VPLL2_MASK, align 4
  br label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @PLLSEL_VPLL1_MASK, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %12, align 8
  %139 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %143 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %136
  %147 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %148 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %149 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %152 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %155 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %158 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %161 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %150, i32 %153, i32 %156, i32 %159, i32 %162)
  br label %176

164:                                              ; preds = %136
  %165 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %166 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %167 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %170 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %14, align 8
  %173 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %168, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %164, %146
  %177 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %178 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32 (%struct.nouveau_crtc.0*, i32)*, i32 (%struct.nouveau_crtc.0*, i32)** %179, align 8
  %181 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %182 = bitcast %struct.nouveau_crtc* %181 to %struct.nouveau_crtc.0*
  %183 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %184 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 %180(%struct.nouveau_crtc.0* %182, i32 %186)
  br label %188

188:                                              ; preds = %176, %86, %56
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(i32) #1

declare dso_local %struct.nouveau_clock* @nouveau_clock(i32) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.TYPE_8__* @nv04_display(%struct.drm_device*) #1

declare dso_local i64 @nvbios_pll_parse(%struct.nouveau_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local %struct.TYPE_7__* @nv_device(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

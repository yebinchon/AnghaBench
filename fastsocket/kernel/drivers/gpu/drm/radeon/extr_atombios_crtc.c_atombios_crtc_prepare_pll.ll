; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_prepare_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_prepare_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i32, i32, i32, i32, i32 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }

@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@ASIC_INTERNAL_SS_ON_DP = common dso_local global i32 0, align 4
@ATOM_DP_SS_ID2 = common dso_local global i32 0, align 4
@ATOM_DP_SS_ID1 = common dso_local global i32 0, align 4
@ASIC_INTERNAL_SS_ON_TMDS = common dso_local global i32 0, align 4
@ASIC_INTERNAL_SS_ON_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @atombios_crtc_prepare_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atombios_crtc_prepare_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  %12 = alloca %struct.radeon_connector*, align 8
  %13 = alloca %struct.radeon_connector_atom_dig*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %15)
  store %struct.radeon_crtc* %16, %struct.radeon_crtc** %5, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.radeon_device*, %struct.radeon_device** %21, align 8
  store %struct.radeon_device* %22, %struct.radeon_device** %7, align 8
  %23 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %25)
  store %struct.radeon_encoder* %26, %struct.radeon_encoder** %8, align 8
  %27 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @atombios_get_encoder_mode(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %31, i32 0, i32 0
  store i32 8, i32* %32, align 4
  %33 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %36 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %39 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %2
  %44 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %45 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(i32 %46)
  %48 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %192

50:                                               ; preds = %43, %2
  %51 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %52 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %51, i32 0, i32 1
  %53 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %52, align 8
  store %struct.radeon_encoder_atom_dig* %53, %struct.radeon_encoder_atom_dig** %10, align 8
  %54 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.drm_connector* @radeon_get_connector_for_encoder(i32 %56)
  store %struct.drm_connector* %57, %struct.drm_connector** %11, align 8
  %58 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %59 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %58)
  store %struct.radeon_connector* %59, %struct.radeon_connector** %12, align 8
  %60 = load %struct.radeon_connector*, %struct.radeon_connector** %12, align 8
  %61 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %60, i32 0, i32 0
  %62 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %61, align 8
  store %struct.radeon_connector_atom_dig* %62, %struct.radeon_connector_atom_dig** %13, align 8
  %63 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %64 = call i32 @radeon_get_monitor_bpc(%struct.drm_connector* %63)
  %65 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %66 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  switch i32 %67, label %190 [
    i32 131, label %68
    i32 132, label %68
    i32 128, label %123
    i32 130, label %154
    i32 129, label %172
  ]

68:                                               ; preds = %50, %50
  %69 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %13, align 8
  %70 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 10
  store i32 %72, i32* %14, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %74 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %78 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %79 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %78, i32 0, i32 3
  %80 = load i32, i32* @ASIC_INTERNAL_SS_ON_DP, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %77, i32* %79, i32 %80, i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %85 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %122

86:                                               ; preds = %68
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, 16200
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %91 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %92 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %91, i32 0, i32 3
  %93 = load i32, i32* @ATOM_DP_SS_ID2, align 4
  %94 = call i8* @radeon_atombios_get_ppll_ss_info(%struct.radeon_device* %90, i32* %92, i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %97 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %99 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %89
  %103 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %104 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %105 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %104, i32 0, i32 3
  %106 = load i32, i32* @ATOM_DP_SS_ID1, align 4
  %107 = call i8* @radeon_atombios_get_ppll_ss_info(%struct.radeon_device* %103, i32* %105, i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %110 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %102, %89
  br label %121

112:                                              ; preds = %86
  %113 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %114 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %115 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %114, i32 0, i32 3
  %116 = load i32, i32* @ATOM_DP_SS_ID1, align 4
  %117 = call i8* @radeon_atombios_get_ppll_ss_info(%struct.radeon_device* %113, i32* %115, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %120 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %112, %111
  br label %122

122:                                              ; preds = %121, %76
  br label %191

123:                                              ; preds = %50
  %124 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %125 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %129 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %130 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %129, i32 0, i32 3
  %131 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %132 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 10
  %138 = call i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %128, i32* %130, i32 %133, i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %141 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %153

142:                                              ; preds = %123
  %143 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %144 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %145 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %144, i32 0, i32 3
  %146 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %147 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @radeon_atombios_get_ppll_ss_info(%struct.radeon_device* %143, i32* %145, i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %152 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %142, %127
  br label %191

154:                                              ; preds = %50
  %155 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %156 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %160 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %161 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %160, i32 0, i32 3
  %162 = load i32, i32* @ASIC_INTERNAL_SS_ON_TMDS, align 4
  %163 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %164 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sdiv i32 %165, 10
  %167 = call i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %159, i32* %161, i32 %162, i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %170 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %158, %154
  br label %191

172:                                              ; preds = %50
  %173 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %174 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %172
  %177 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %178 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %179 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %178, i32 0, i32 3
  %180 = load i32, i32* @ASIC_INTERNAL_SS_ON_HDMI, align 4
  %181 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %182 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sdiv i32 %183, 10
  %185 = call i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %177, i32* %179, i32 %180, i32 %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %188 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %176, %172
  br label %191

190:                                              ; preds = %50
  br label %191

191:                                              ; preds = %190, %189, %171, %153, %122
  br label %192

192:                                              ; preds = %191, %43
  %193 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %194 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %195 = call i32 @atombios_adjust_pll(%struct.drm_crtc* %193, %struct.drm_display_mode* %194)
  %196 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %197 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 4
  ret i32 1
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i32 @atombios_get_encoder_mode(i32) #1

declare dso_local i64 @radeon_encoder_get_dp_bridge_encoder_id(i32) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(i32) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_get_monitor_bpc(%struct.drm_connector*) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, i32*, i32, i32) #1

declare dso_local i8* @radeon_atombios_get_ppll_ss_info(%struct.radeon_device*, i32*, i32) #1

declare dso_local i32 @atombios_adjust_pll(%struct.drm_crtc*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

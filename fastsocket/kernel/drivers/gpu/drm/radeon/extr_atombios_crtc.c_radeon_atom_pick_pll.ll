; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_radeon_atom_pick_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_radeon_atom_pick_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_crtc = type { i32, i32 }
%struct.radeon_encoder = type { i64, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }

@ENCODER_OBJECT_ID_INTERNAL_UNIPHY = common dso_local global i64 0, align 8
@ATOM_PPLL2 = common dso_local global i32 0, align 4
@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@ATOM_PPLL0 = common dso_local global i32 0, align 4
@ATOM_PPLL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to allocate a PPLL\0A\00", align 1
@ATOM_DCPLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @radeon_atom_pick_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atom_pick_pll(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.radeon_crtc*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %11)
  store %struct.radeon_crtc* %12, %struct.radeon_crtc** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %6, align 8
  %19 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %21)
  store %struct.radeon_encoder* %22, %struct.radeon_encoder** %7, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %24 = call i64 @ASIC_IS_DCE61(%struct.radeon_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %98

26:                                               ; preds = %1
  %27 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %28 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %27, i32 0, i32 1
  %29 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %28, align 8
  store %struct.radeon_encoder_atom_dig* %29, %struct.radeon_encoder_atom_dig** %10, align 8
  %30 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %31 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_UNIPHY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %37 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %41, i32* %2, align 4
  br label %175

42:                                               ; preds = %35, %26
  %43 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %44 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @atombios_get_encoder_mode(i32 %45)
  %47 = call i64 @ENCODER_MODE_IS_DP(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %56, i32* %2, align 4
  br label %175

57:                                               ; preds = %49
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %59 = call i32 @radeon_get_shared_dp_ppll(%struct.drm_crtc* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %2, align 4
  br label %175

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65
  br label %76

67:                                               ; preds = %42
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %69 = call i32 @radeon_get_shared_nondp_ppll(%struct.drm_crtc* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %2, align 4
  br label %175

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %66
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %79 = call i32 @radeon_get_pll_use_mask(%struct.drm_crtc* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @ATOM_PPLL0, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @ATOM_PPLL0, align 4
  store i32 %86, i32* %2, align 4
  br label %175

87:                                               ; preds = %77
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @ATOM_PPLL1, align 4
  %90 = shl i32 1, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %94, i32* %2, align 4
  br label %175

95:                                               ; preds = %87
  %96 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %97, i32* %2, align 4
  br label %175

98:                                               ; preds = %1
  %99 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %100 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %171

102:                                              ; preds = %98
  %103 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %104 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @atombios_get_encoder_mode(i32 %105)
  %107 = call i64 @ENCODER_MODE_IS_DP(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %141

109:                                              ; preds = %102
  %110 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %116, i32* %2, align 4
  br label %175

117:                                              ; preds = %109
  %118 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %119 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @ATOM_PPLL0, align 4
  store i32 %122, i32* %2, align 4
  br label %175

123:                                              ; preds = %117
  %124 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %125 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @ATOM_DCPLL, align 4
  store i32 %128, i32* %2, align 4
  br label %175

129:                                              ; preds = %123
  %130 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %131 = call i32 @radeon_get_shared_dp_ppll(%struct.drm_crtc* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %2, align 4
  br label %175

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  br label %150

141:                                              ; preds = %102
  %142 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %143 = call i32 @radeon_get_shared_nondp_ppll(%struct.drm_crtc* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %2, align 4
  br label %175

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %140
  %151 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %152 = call i32 @radeon_get_pll_use_mask(%struct.drm_crtc* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @ATOM_PPLL1, align 4
  %155 = shl i32 1, %154
  %156 = and i32 %153, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %150
  %159 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %159, i32* %2, align 4
  br label %175

160:                                              ; preds = %150
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @ATOM_PPLL2, align 4
  %163 = shl i32 1, %162
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %160
  %167 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %167, i32* %2, align 4
  br label %175

168:                                              ; preds = %160
  %169 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %170 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %170, i32* %2, align 4
  br label %175

171:                                              ; preds = %98
  %172 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %173 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %171, %168, %166, %158, %147, %135, %127, %121, %115, %95, %93, %85, %73, %63, %55, %40
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i64 @ASIC_IS_DCE61(%struct.radeon_device*) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @atombios_get_encoder_mode(i32) #1

declare dso_local i32 @radeon_get_shared_dp_ppll(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_get_shared_nondp_ppll(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_get_pll_use_mask(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

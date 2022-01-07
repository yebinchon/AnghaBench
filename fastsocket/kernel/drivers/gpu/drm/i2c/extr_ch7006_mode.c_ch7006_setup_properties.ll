; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_setup_properties.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_setup_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch7006_tv_norm_info = type { i32, i32, i32, i32 }
%struct.drm_encoder = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ch7006_priv = type { i64, i32, i32, i32, i32, %struct.ch7006_mode*, %struct.ch7006_state }
%struct.ch7006_mode = type { i32, i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.ch7006_state = type { i32* }

@ch7006_tv_norms = common dso_local global %struct.ch7006_tv_norm_info* null, align 8
@CH7006_FFILTER_TEXT = common dso_local global i32 0, align 4
@CH7006_FFILTER_LUMA = common dso_local global i32 0, align 4
@CH7006_FFILTER_CHROMA = common dso_local global i32 0, align 4
@CH7006_FFILTER = common dso_local global i64 0, align 8
@CH7006_CONTRAST_0 = common dso_local global i32 0, align 4
@CH7006_CONTRAST = common dso_local global i64 0, align 8
@fixed1 = common dso_local global i32 0, align 4
@CH7006_POV = common dso_local global i32 0, align 4
@HPOS_8 = common dso_local global i32 0, align 4
@CH7006_HPOS = common dso_local global i32 0, align 4
@VPOS_8 = common dso_local global i32 0, align 4
@CH7006_VPOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"hpos: %d, vpos: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ch7006_setup_properties(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ch7006_priv*, align 8
  %5 = alloca %struct.ch7006_state*, align 8
  %6 = alloca %struct.ch7006_tv_norm_info*, align 8
  %7 = alloca %struct.ch7006_mode*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %17 = call %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %3, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %19 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %18)
  store %struct.ch7006_priv* %19, %struct.ch7006_priv** %4, align 8
  %20 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %21 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %20, i32 0, i32 6
  store %struct.ch7006_state* %21, %struct.ch7006_state** %5, align 8
  %22 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** @ch7006_tv_norms, align 8
  %23 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %22, i64 %25
  store %struct.ch7006_tv_norm_info* %26, %struct.ch7006_tv_norm_info** %6, align 8
  %27 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %28 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %27, i32 0, i32 5
  %29 = load %struct.ch7006_mode*, %struct.ch7006_mode** %28, align 8
  store %struct.ch7006_mode* %29, %struct.ch7006_mode** %7, align 8
  %30 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %31 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %30, i32 0, i32 2
  store %struct.drm_display_mode* %31, %struct.drm_display_mode** %8, align 8
  %32 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %33 = getelementptr inbounds %struct.ch7006_state, %struct.ch7006_state* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  %35 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %36 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @interpolate(i32 0, i32 2, i32 3, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @CH7006_FFILTER_TEXT, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @bitf(i32 %39, i32 %40)
  %42 = load i32, i32* @CH7006_FFILTER_LUMA, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @bitf(i32 %42, i32 %43)
  %45 = or i32 %41, %44
  %46 = load i32, i32* @CH7006_FFILTER_CHROMA, align 4
  %47 = call i32 @bitf(i32 %46, i32 1)
  %48 = or i32 %45, %47
  %49 = load i32*, i32** %9, align 8
  %50 = load i64, i64* @CH7006_FFILTER, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %53 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @interpolate(i32 0, i32 5, i32 7, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @CH7006_CONTRAST_0, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @bitf(i32 %56, i32 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = load i64, i64* @CH7006_CONTRAST, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** %6, align 8
  %63 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @fixed1, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @do_div(i32 %67, i32 %70)
  %72 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %73 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @fixed1, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %79 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @do_div(i32 %77, i32 %80)
  %82 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** %6, align 8
  %83 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %15, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %14, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sub nsw i32 %86, %91
  %93 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %94 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %92, %95
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  %101 = call i32 @round_fixed(i32 %100)
  %102 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** %6, align 8
  %103 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %101, %104
  %106 = sdiv i32 %105, 100
  %107 = sdiv i32 %106, 4
  store i32 %107, i32* %12, align 4
  %108 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %109 = load i32, i32* @CH7006_POV, align 4
  %110 = load i32, i32* @HPOS_8, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @setbitf(%struct.ch7006_state* %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %114 = load i32, i32* @CH7006_HPOS, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @setbitf(%struct.ch7006_state* %113, i32 %114, i32 0, i32 %115)
  %117 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** %6, align 8
  %118 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %14, align 4
  %124 = mul nsw i32 %122, %123
  %125 = call i32 @round_fixed(i32 %124)
  %126 = sub nsw i32 %119, %125
  %127 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** %6, align 8
  %128 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %126, %129
  %131 = call i32 @max(i32 0, i32 %130)
  %132 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %133 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %131, %134
  %136 = sdiv i32 %135, 100
  %137 = sdiv i32 %136, 2
  store i32 %137, i32* %13, align 4
  %138 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %139 = load i32, i32* @CH7006_POV, align 4
  %140 = load i32, i32* @VPOS_8, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @setbitf(%struct.ch7006_state* %138, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %144 = load i32, i32* @CH7006_VPOS, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @setbitf(%struct.ch7006_state* %143, i32 %144, i32 0, i32 %145)
  %147 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @ch7006_dbg(%struct.i2c_client* %147, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %149)
  ret void
}

declare dso_local %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @interpolate(i32, i32, i32, i32) #1

declare dso_local i32 @bitf(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @round_fixed(i32) #1

declare dso_local i32 @setbitf(%struct.ch7006_state*, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ch7006_dbg(%struct.i2c_client*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

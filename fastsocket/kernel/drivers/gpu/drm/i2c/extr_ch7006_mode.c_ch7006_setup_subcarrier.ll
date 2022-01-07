; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_setup_subcarrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_setup_subcarrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch7006_tv_norm_info = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ch7006_priv = type { i64, %struct.ch7006_mode*, %struct.ch7006_state }
%struct.ch7006_mode = type { i32 }
%struct.ch7006_state = type { i32 }

@ch7006_tv_norms = common dso_local global %struct.ch7006_tv_norm_info* null, align 8
@CH7006_SUBC_INC0 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC1 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC2 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC3 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC4 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC5 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC6 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"subcarrier inc: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ch7006_setup_subcarrier(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ch7006_priv*, align 8
  %5 = alloca %struct.ch7006_state*, align 8
  %6 = alloca %struct.ch7006_tv_norm_info*, align 8
  %7 = alloca %struct.ch7006_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = call %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %11)
  store %struct.ch7006_priv* %12, %struct.ch7006_priv** %4, align 8
  %13 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %14 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %13, i32 0, i32 2
  store %struct.ch7006_state* %14, %struct.ch7006_state** %5, align 8
  %15 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** @ch7006_tv_norms, align 8
  %16 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %15, i64 %18
  store %struct.ch7006_tv_norm_info* %19, %struct.ch7006_tv_norm_info** %6, align 8
  %20 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %21 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %20, i32 0, i32 1
  %22 = load %struct.ch7006_mode*, %struct.ch7006_mode** %21, align 8
  store %struct.ch7006_mode* %22, %struct.ch7006_mode** %7, align 8
  %23 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %24 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 8
  %27 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** %6, align 8
  %28 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 24
  %31 = mul nsw i32 %26, %30
  %32 = call i32 @round_fixed(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %34 = load i32, i32* @CH7006_SUBC_INC0, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @setbitf(%struct.ch7006_state* %33, i32 %34, i32 28, i32 %35)
  %37 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %38 = load i32, i32* @CH7006_SUBC_INC1, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @setbitf(%struct.ch7006_state* %37, i32 %38, i32 24, i32 %39)
  %41 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %42 = load i32, i32* @CH7006_SUBC_INC2, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @setbitf(%struct.ch7006_state* %41, i32 %42, i32 20, i32 %43)
  %45 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %46 = load i32, i32* @CH7006_SUBC_INC3, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @setbitf(%struct.ch7006_state* %45, i32 %46, i32 16, i32 %47)
  %49 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %50 = load i32, i32* @CH7006_SUBC_INC4, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @setbitf(%struct.ch7006_state* %49, i32 %50, i32 12, i32 %51)
  %53 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %54 = load i32, i32* @CH7006_SUBC_INC5, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @setbitf(%struct.ch7006_state* %53, i32 %54, i32 8, i32 %55)
  %57 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %58 = load i32, i32* @CH7006_SUBC_INC6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @setbitf(%struct.ch7006_state* %57, i32 %58, i32 4, i32 %59)
  %61 = load %struct.ch7006_state*, %struct.ch7006_state** %5, align 8
  %62 = load i32, i32* @CH7006_SUBC_INC7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @setbitf(%struct.ch7006_state* %61, i32 %62, i32 0, i32 %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ch7006_dbg(%struct.i2c_client* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %66)
  ret void
}

declare dso_local %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @round_fixed(i32) #1

declare dso_local i32 @setbitf(%struct.ch7006_state*, i32, i32, i32) #1

declare dso_local i32 @ch7006_dbg(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_encoder_slave = type { i32*, %struct.ch7006_priv* }
%struct.ch7006_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ch7006_encoder_funcs = common dso_local global i32 0, align 4
@TV_NORM_PAL = common dso_local global i32 0, align 4
@DRM_MODE_SUBCONNECTOR_Automatic = common dso_local global i32 0, align 4
@DRM_MODE_SUBCONNECTOR_Unknown = common dso_local global i32 0, align 4
@CH7006_VERSION_ID = common dso_local global i32 0, align 4
@ch7006_tv_norm = common dso_local global i32 0, align 4
@NUM_TV_NORMS = common dso_local global i32 0, align 4
@ch7006_tv_norm_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid TV norm setting \22%s\22.\0A\00", align 1
@ch7006_scale = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid scale setting \22%d\22.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.drm_device*, %struct.drm_encoder_slave*)* @ch7006_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch7006_encoder_init(%struct.i2c_client* %0, %struct.drm_device* %1, %struct.drm_encoder_slave* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_encoder_slave*, align 8
  %8 = alloca %struct.ch7006_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_encoder_slave* %2, %struct.drm_encoder_slave** %7, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call i32 @ch7006_dbg(%struct.i2c_client* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ch7006_priv* @kzalloc(i32 44, i32 %12)
  store %struct.ch7006_priv* %13, %struct.ch7006_priv** %8, align 8
  %14 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %15 = icmp ne %struct.ch7006_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %101

19:                                               ; preds = %3
  %20 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %21 = load %struct.drm_encoder_slave*, %struct.drm_encoder_slave** %7, align 8
  %22 = getelementptr inbounds %struct.drm_encoder_slave, %struct.drm_encoder_slave* %21, i32 0, i32 1
  store %struct.ch7006_priv* %20, %struct.ch7006_priv** %22, align 8
  %23 = load %struct.drm_encoder_slave*, %struct.drm_encoder_slave** %7, align 8
  %24 = getelementptr inbounds %struct.drm_encoder_slave, %struct.drm_encoder_slave* %23, i32 0, i32 0
  store i32* @ch7006_encoder_funcs, i32** %24, align 8
  %25 = load i32, i32* @TV_NORM_PAL, align 4
  %26 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %27 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @DRM_MODE_SUBCONNECTOR_Automatic, align 4
  %29 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %30 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @DRM_MODE_SUBCONNECTOR_Unknown, align 4
  %32 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %33 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %35 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %37 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %36, i32 0, i32 2
  store i32 50, i32* %37, align 4
  %38 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %39 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %38, i32 0, i32 3
  store i32 50, i32* %39, align 4
  %40 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %41 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %40, i32 0, i32 4
  store i32 50, i32* %41, align 4
  %42 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %43 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %42, i32 0, i32 5
  store i32 50, i32* %43, align 4
  %44 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %45 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %44, i32 0, i32 6
  store i32 50, i32* %45, align 4
  %46 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %47 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %46, i32 0, i32 7
  store i32 -1, i32* %47, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %49 = load i32, i32* @CH7006_VERSION_ID, align 4
  %50 = call i32 @ch7006_read(%struct.i2c_client* %48, i32 %49)
  %51 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %52 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ch7006_tv_norm, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %74, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @NUM_TV_NORMS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load i32*, i32** @ch7006_tv_norm_names, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ch7006_tv_norm, align 4
  %67 = call i32 @strcmp(i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %72 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %56

77:                                               ; preds = %69, %56
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @NUM_TV_NORMS, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %83 = load i32, i32* @ch7006_tv_norm, align 4
  %84 = call i32 @ch7006_err(%struct.i2c_client* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %19
  %87 = load i32, i32* @ch7006_scale, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* @ch7006_scale, align 4
  %91 = icmp sle i32 %90, 2
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* @ch7006_scale, align 4
  %94 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %95 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %100

96:                                               ; preds = %89, %86
  %97 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %98 = load i32, i32* @ch7006_scale, align 4
  %99 = call i32 @ch7006_err(%struct.i2c_client* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %92
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %16
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @ch7006_dbg(%struct.i2c_client*, i8*) #1

declare dso_local %struct.ch7006_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @ch7006_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @ch7006_err(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

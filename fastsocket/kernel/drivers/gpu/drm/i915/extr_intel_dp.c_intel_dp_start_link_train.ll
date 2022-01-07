; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_start_link_train.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_start_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32, i32, i32, i32 }
%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_encoder }

@DP_LINK_BW_SET = common dso_local global i32 0, align 4
@DP_LINK_CONFIGURATION_SIZE = common dso_local global i32 0, align 4
@DP_PORT_EN = common dso_local global i32 0, align 4
@DP_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_1 = common dso_local global i32 0, align 4
@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to get link status\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clock recovery OK\0A\00", align 1
@DP_TRAIN_MAX_SWING_REACHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"too many full retries, give up\0A\00", align 1
@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"too many voltage retries, give up\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_start_link_train(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %14 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %15 = call %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.drm_encoder* %17, %struct.drm_encoder** %3, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %4, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = call i64 @HAS_DDI(%struct.drm_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %29 = call i32 @intel_ddi_prepare_link_retrain(%struct.drm_encoder* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %32 = load i32, i32* @DP_LINK_BW_SET, align 4
  %33 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %34 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DP_LINK_CONFIGURATION_SIZE, align 4
  %37 = call i32 @intel_dp_aux_native_write(%struct.intel_dp* %31, i32 %32, i32 %35, i32 %36)
  %38 = load i32, i32* @DP_PORT_EN, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %42 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @memset(i32* %43, i32 0, i32 4)
  store i32 255, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %151, %148, %30
  %46 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %11, align 8
  %49 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %12, align 8
  %50 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %51 = call i32 @intel_dp_set_signal_levels(%struct.intel_dp* %50, i32* %10)
  %52 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @DP_TRAINING_PATTERN_1, align 4
  %55 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @intel_dp_set_link_train(%struct.intel_dp* %52, i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %45
  store i32 2, i32* %13, align 4
  br label %148

60:                                               ; preds = %45
  %61 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %62 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @drm_dp_link_train_clock_recovery_delay(i32 %63)
  %65 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %66 = call i32 @intel_dp_get_link_status(%struct.intel_dp* %65, i32* %49)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %13, align 4
  br label %148

70:                                               ; preds = %60
  %71 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %72 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @drm_dp_clock_recovery_ok(i32* %49, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  store i32 2, i32* %13, align 4
  br label %148

78:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %98, %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %82 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %87 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DP_TRAIN_MAX_SWING_REACHED, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %101

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %79

101:                                              ; preds = %96, %79
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %104 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %101
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, 5
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %13, align 4
  br label %148

114:                                              ; preds = %107
  %115 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %116 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @memset(i32* %117, i32 0, i32 4)
  store i32 0, i32* %8, align 4
  store i32 3, i32* %13, align 4
  br label %148

119:                                              ; preds = %101
  %120 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %121 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %119
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 5
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* %13, align 4
  br label %148

136:                                              ; preds = %129
  br label %138

137:                                              ; preds = %119
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %137, %136
  %139 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %140 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %6, align 4
  %146 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %147 = call i32 @intel_get_adjust_train(%struct.intel_dp* %146, i32* %49)
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %138, %134, %114, %112, %76, %68, %59
  %149 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %13, align 4
  switch i32 %150, label %156 [
    i32 0, label %151
    i32 2, label %152
    i32 3, label %45
  ]

151:                                              ; preds = %148
  br label %45

152:                                              ; preds = %148
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %155 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  ret void

156:                                              ; preds = %148
  unreachable
}

declare dso_local %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_device*) #1

declare dso_local i32 @intel_ddi_prepare_link_retrain(%struct.drm_encoder*) #1

declare dso_local i32 @intel_dp_aux_native_write(%struct.intel_dp*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @intel_dp_set_signal_levels(%struct.intel_dp*, i32*) #1

declare dso_local i32 @intel_dp_set_link_train(%struct.intel_dp*, i32, i32) #1

declare dso_local i32 @drm_dp_link_train_clock_recovery_delay(i32) #1

declare dso_local i32 @intel_dp_get_link_status(%struct.intel_dp*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @drm_dp_clock_recovery_ok(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_get_adjust_train(%struct.intel_dp*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

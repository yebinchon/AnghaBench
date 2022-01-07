; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_set_link_train.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_set_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, i32 }
%struct.intel_digital_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_SCRAMBLE_DISABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_MASK = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_IDLE = common dso_local global i32 0, align 4
@DP_TP_STATUS_IDLE_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timed out waiting for DP idle patterns\0A\00", align 1
@DP_TP_CTL_LINK_TRAIN_NORMAL = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT1 = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT2 = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT3 = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_MASK_CPT = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_OFF_CPT = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_1_CPT = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_2_CPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"DP training pattern 3 not supported\0A\00", align 1
@DP_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_OFF = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_1 = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_2 = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@DP_TRAINING_LANE0_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, i32, i32)* @intel_dp_set_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_set_link_train(%struct.intel_dp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_dp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %15 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %14)
  store %struct.intel_digital_port* %15, %struct.intel_digital_port** %8, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %9, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %22, align 8
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %10, align 8
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %25 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %28 = call i64 @IS_HASWELL(%struct.drm_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %102

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @DP_TP_CTL(i32 %31)
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @DP_TP_CTL_SCRAMBLE_DISABLE, align 4
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %47

42:                                               ; preds = %30
  %43 = load i32, i32* @DP_TP_CTL_SCRAMBLE_DISABLE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %13, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @DP_TRAINING_PATTERN_MASK, align 4
  %54 = and i32 %52, %53
  switch i32 %54, label %97 [
    i32 128, label %55
    i32 131, label %85
    i32 130, label %89
    i32 129, label %93
  ]

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @PORT_A, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_IDLE, align 4
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @DP_TP_CTL(i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @I915_WRITE(i32 %64, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @DP_TP_STATUS(i32 %67)
  %69 = call i32 @I915_READ(i32 %68)
  %70 = load i32, i32* @DP_TP_STATUS_IDLE_DONE, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @wait_for(i32 %71, i32 1)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %59
  %77 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %13, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %76, %55
  %82 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_NORMAL, align 4
  %83 = load i32, i32* %13, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %97

85:                                               ; preds = %47
  %86 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT1, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %97

89:                                               ; preds = %47
  %90 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT2, align 4
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %13, align 4
  br label %97

93:                                               ; preds = %47
  %94 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT3, align 4
  %95 = load i32, i32* %13, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %47, %93, %89, %85, %81
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @DP_TP_CTL(i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @I915_WRITE(i32 %99, i32 %100)
  br label %167

102:                                              ; preds = %3
  %103 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %104 = call i64 @HAS_PCH_CPT(%struct.drm_device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %140

106:                                              ; preds = %102
  %107 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %108 = call i64 @IS_GEN7(%struct.drm_device* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %112 = call i32 @is_cpu_edp(%struct.intel_dp* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %140, label %114

114:                                              ; preds = %110, %106
  %115 = load i32, i32* @DP_LINK_TRAIN_MASK_CPT, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @DP_TRAINING_PATTERN_MASK, align 4
  %121 = and i32 %119, %120
  switch i32 %121, label %139 [
    i32 128, label %122
    i32 131, label %126
    i32 130, label %130
    i32 129, label %134
  ]

122:                                              ; preds = %114
  %123 = load i32, i32* @DP_LINK_TRAIN_OFF_CPT, align 4
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %139

126:                                              ; preds = %114
  %127 = load i32, i32* @DP_LINK_TRAIN_PAT_1_CPT, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %139

130:                                              ; preds = %114
  %131 = load i32, i32* @DP_LINK_TRAIN_PAT_2_CPT, align 4
  %132 = load i32, i32* %6, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %6, align 4
  br label %139

134:                                              ; preds = %114
  %135 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @DP_LINK_TRAIN_PAT_2_CPT, align 4
  %137 = load i32, i32* %6, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %114, %134, %130, %126, %122
  br label %166

140:                                              ; preds = %110, %102
  %141 = load i32, i32* @DP_LINK_TRAIN_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @DP_TRAINING_PATTERN_MASK, align 4
  %147 = and i32 %145, %146
  switch i32 %147, label %165 [
    i32 128, label %148
    i32 131, label %152
    i32 130, label %156
    i32 129, label %160
  ]

148:                                              ; preds = %140
  %149 = load i32, i32* @DP_LINK_TRAIN_OFF, align 4
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %6, align 4
  br label %165

152:                                              ; preds = %140
  %153 = load i32, i32* @DP_LINK_TRAIN_PAT_1, align 4
  %154 = load i32, i32* %6, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %6, align 4
  br label %165

156:                                              ; preds = %140
  %157 = load i32, i32* @DP_LINK_TRAIN_PAT_2, align 4
  %158 = load i32, i32* %6, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %6, align 4
  br label %165

160:                                              ; preds = %140
  %161 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %162 = load i32, i32* @DP_LINK_TRAIN_PAT_2, align 4
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %140, %160, %156, %152, %148
  br label %166

166:                                              ; preds = %165, %139
  br label %167

167:                                              ; preds = %166, %97
  %168 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %169 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @I915_WRITE(i32 %170, i32 %171)
  %173 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %174 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @POSTING_READ(i32 %175)
  %177 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %178 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @intel_dp_aux_native_write_1(%struct.intel_dp* %177, i32 %178, i32 %179)
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @DP_TRAINING_PATTERN_MASK, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 128
  br i1 %184, label %185, label %202

185:                                              ; preds = %167
  %186 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %187 = load i32, i32* @DP_TRAINING_LANE0_SET, align 4
  %188 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %189 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %192 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @intel_dp_aux_native_write(%struct.intel_dp* %186, i32 %187, i32 %190, i32 %193)
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %197 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %195, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %185
  store i32 0, i32* %4, align 4
  br label %203

201:                                              ; preds = %185
  br label %202

202:                                              ; preds = %201, %167
  store i32 1, i32* %4, align 4
  br label %203

203:                                              ; preds = %202, %200
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DP_TP_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @DP_TP_STATUS(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i32 @is_cpu_edp(%struct.intel_dp*) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_dp_aux_native_write_1(%struct.intel_dp*, i32, i32) #1

declare dso_local i32 @intel_dp_aux_native_write(%struct.intel_dp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

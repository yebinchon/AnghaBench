; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_dispatch_batchbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_dispatch_batchbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.drm_clip_rect = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MI_BATCH_BUFFER_START = common dso_local global i32 0, align 4
@MI_BATCH_NON_SECURE_I965 = common dso_local global i32 0, align 4
@MI_BATCH_NON_SECURE = common dso_local global i32 0, align 4
@MI_BATCH_BUFFER = common dso_local global i32 0, align 4
@MI_FLUSH = common dso_local global i32 0, align 4
@MI_NO_WRITE_FLUSH = common dso_local global i32 0, align 4
@MI_INVALIDATE_ISP = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_4__*, %struct.drm_clip_rect*)* @i915_dispatch_batchbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_dispatch_batchbuffer(%struct.drm_device* %0, %struct.TYPE_4__* %1, %struct.drm_clip_rect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.drm_clip_rect*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.drm_clip_rect* %2, %struct.drm_clip_rect** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = and i32 %25, 7
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %164

32:                                               ; preds = %3
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = call i32 @i915_kernel_lost_context(%struct.drm_device* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 1, %39 ]
  store i32 %41, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %136, %40
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %139

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @i915_emit_box(%struct.drm_device* %51, %struct.drm_clip_rect* %55, i32 %58, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %164

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %46
  %69 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %70 = call i32 @IS_I830(%struct.drm_device* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %109, label %72

72:                                               ; preds = %68
  %73 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %74 = call i32 @IS_845G(%struct.drm_device* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %109, label %76

76:                                               ; preds = %72
  %77 = call i32 @BEGIN_LP_RING(i32 2)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %164

82:                                               ; preds = %76
  %83 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %84 = call %struct.TYPE_5__* @INTEL_INFO(%struct.drm_device* %83)
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 4
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load i32, i32* @MI_BATCH_BUFFER_START, align 4
  %90 = or i32 %89, 128
  %91 = load i32, i32* @MI_BATCH_NON_SECURE_I965, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @OUT_RING(i32 %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @OUT_RING(i32 %96)
  br label %108

98:                                               ; preds = %82
  %99 = load i32, i32* @MI_BATCH_BUFFER_START, align 4
  %100 = or i32 %99, 128
  %101 = call i32 @OUT_RING(i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MI_BATCH_NON_SECURE, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @OUT_RING(i32 %106)
  br label %108

108:                                              ; preds = %98, %88
  br label %134

109:                                              ; preds = %72, %68
  %110 = call i32 @BEGIN_LP_RING(i32 4)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %164

115:                                              ; preds = %109
  %116 = load i32, i32* @MI_BATCH_BUFFER, align 4
  %117 = call i32 @OUT_RING(i32 %116)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MI_BATCH_NON_SECURE, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @OUT_RING(i32 %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %126, %129
  %131 = sub nsw i32 %130, 4
  %132 = call i32 @OUT_RING(i32 %131)
  %133 = call i32 @OUT_RING(i32 0)
  br label %134

134:                                              ; preds = %115, %108
  %135 = call i32 (...) @ADVANCE_LP_RING()
  br label %136

136:                                              ; preds = %134
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %42

139:                                              ; preds = %42
  %140 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %141 = call i64 @IS_G4X(%struct.drm_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %145 = call i64 @IS_GEN5(%struct.drm_device* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %143, %139
  %148 = call i32 @BEGIN_LP_RING(i32 2)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load i32, i32* @MI_FLUSH, align 4
  %152 = load i32, i32* @MI_NO_WRITE_FLUSH, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @MI_INVALIDATE_ISP, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @OUT_RING(i32 %155)
  %157 = load i32, i32* @MI_NOOP, align 4
  %158 = call i32 @OUT_RING(i32 %157)
  %159 = call i32 (...) @ADVANCE_LP_RING()
  br label %160

160:                                              ; preds = %150, %147
  br label %161

161:                                              ; preds = %160, %143
  %162 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %163 = call i32 @i915_emit_breadcrumb(%struct.drm_device* %162)
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %161, %113, %80, %65, %28
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @i915_kernel_lost_context(%struct.drm_device*) #1

declare dso_local i32 @i915_emit_box(%struct.drm_device*, %struct.drm_clip_rect*, i32, i32) #1

declare dso_local i32 @IS_I830(%struct.drm_device*) #1

declare dso_local i32 @IS_845G(%struct.drm_device*) #1

declare dso_local i32 @BEGIN_LP_RING(i32) #1

declare dso_local %struct.TYPE_5__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @ADVANCE_LP_RING(...) #1

declare dso_local i64 @IS_G4X(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN5(%struct.drm_device*) #1

declare dso_local i32 @i915_emit_breadcrumb(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

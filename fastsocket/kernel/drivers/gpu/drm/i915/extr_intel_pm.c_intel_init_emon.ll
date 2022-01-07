; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_emon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_emon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ECR = common dso_local global i64 0, align 8
@SDEW = common dso_local global i64 0, align 8
@CSIEW0 = common dso_local global i64 0, align 8
@CSIEW1 = common dso_local global i64 0, align 8
@CSIEW2 = common dso_local global i64 0, align 8
@PEW = common dso_local global i64 0, align 8
@DEW = common dso_local global i64 0, align 8
@PXVFREQ_BASE = common dso_local global i64 0, align 8
@PXVFREQ_PX_MASK = common dso_local global i32 0, align 4
@PXVFREQ_PX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bad pxval: %ld\0A\00", align 1
@PXW = common dso_local global i64 0, align 8
@OGW0 = common dso_local global i64 0, align 8
@OGW1 = common dso_local global i64 0, align 8
@EG0 = common dso_local global i64 0, align 8
@EG1 = common dso_local global i64 0, align 8
@EG2 = common dso_local global i64 0, align 8
@EG3 = common dso_local global i64 0, align 8
@EG4 = common dso_local global i64 0, align 8
@EG5 = common dso_local global i64 0, align 8
@EG6 = common dso_local global i64 0, align 8
@EG7 = common dso_local global i64 0, align 8
@PXWL = common dso_local global i64 0, align 8
@LCFUSE02 = common dso_local global i64 0, align 8
@LCFUSE_HIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @intel_init_emon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_init_emon(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %3, align 8
  %15 = load i64, i64* @ECR, align 8
  %16 = call i32 @I915_WRITE(i64 %15, i32 0)
  %17 = load i64, i64* @ECR, align 8
  %18 = call i32 @POSTING_READ(i64 %17)
  %19 = load i64, i64* @SDEW, align 8
  %20 = call i32 @I915_WRITE(i64 %19, i32 352587008)
  %21 = load i64, i64* @CSIEW0, align 8
  %22 = call i32 @I915_WRITE(i64 %21, i32 8323072)
  %23 = load i64, i64* @CSIEW1, align 8
  %24 = call i32 @I915_WRITE(i64 %23, i32 505544708)
  %25 = load i64, i64* @CSIEW2, align 8
  %26 = call i32 @I915_WRITE(i64 %25, i32 67108868)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %37, %1
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i64, i64* @PEW, align 8
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @I915_WRITE(i64 %35, i32 0)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %27

40:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %51, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i64, i64* @DEW, align 8
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = call i32 @I915_WRITE(i64 %49, i32 0)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %41

54:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %95, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %98

58:                                               ; preds = %55
  %59 = load i64, i64* @PXVFREQ_BASE, align 8
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = call i32 @I915_READ(i64 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @intel_pxfreq(i32 %65)
  store i64 %66, i64* %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @PXVFREQ_PX_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @PXVFREQ_PX_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = mul i64 %73, %74
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %8, align 8
  %77 = udiv i64 %76, 1000
  %78 = load i64, i64* %10, align 8
  %79 = mul i64 %78, %77
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = mul i64 %80, 255
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = udiv i64 %82, 14516100
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp ugt i64 %84, 255
  br i1 %85, label %86, label %89

86:                                               ; preds = %58
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %86, %58
  %90 = load i64, i64* %10, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %93
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %55

98:                                               ; preds = %55
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 14
  store i32 0, i32* %99, align 8
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 15
  store i32 0, i32* %100, align 4
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %141, %98
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 4
  br i1 %103, label %104, label %144

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = mul nsw i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 24
  %111 = load i32, i32* %6, align 4
  %112 = mul nsw i32 %111, 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 16
  %118 = or i32 %110, %117
  %119 = load i32, i32* %6, align 4
  %120 = mul nsw i32 %119, 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = or i32 %118, %125
  %127 = load i32, i32* %6, align 4
  %128 = mul nsw i32 %127, 4
  %129 = add nsw i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %126, %132
  store i32 %133, i32* %11, align 4
  %134 = load i64, i64* @PXW, align 8
  %135 = load i32, i32* %6, align 4
  %136 = mul nsw i32 %135, 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %134, %137
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @I915_WRITE(i64 %138, i32 %139)
  br label %141

141:                                              ; preds = %104
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %101

144:                                              ; preds = %101
  %145 = load i64, i64* @OGW0, align 8
  %146 = call i32 @I915_WRITE(i64 %145, i32 0)
  %147 = load i64, i64* @OGW1, align 8
  %148 = call i32 @I915_WRITE(i64 %147, i32 0)
  %149 = load i64, i64* @EG0, align 8
  %150 = call i32 @I915_WRITE(i64 %149, i32 32512)
  %151 = load i64, i64* @EG1, align 8
  %152 = call i32 @I915_WRITE(i64 %151, i32 14)
  %153 = load i64, i64* @EG2, align 8
  %154 = call i32 @I915_WRITE(i64 %153, i32 917504)
  %155 = load i64, i64* @EG3, align 8
  %156 = call i32 @I915_WRITE(i64 %155, i32 1744831232)
  %157 = load i64, i64* @EG4, align 8
  %158 = call i32 @I915_WRITE(i64 %157, i32 1107296256)
  %159 = load i64, i64* @EG5, align 8
  %160 = call i32 @I915_WRITE(i64 %159, i32 1310769)
  %161 = load i64, i64* @EG6, align 8
  %162 = call i32 @I915_WRITE(i64 %161, i32 0)
  %163 = load i64, i64* @EG7, align 8
  %164 = call i32 @I915_WRITE(i64 %163, i32 0)
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %175, %144
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 8
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load i64, i64* @PXWL, align 8
  %170 = load i32, i32* %6, align 4
  %171 = mul nsw i32 %170, 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %169, %172
  %174 = call i32 @I915_WRITE(i64 %173, i32 0)
  br label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %165

178:                                              ; preds = %165
  %179 = load i64, i64* @ECR, align 8
  %180 = call i32 @I915_WRITE(i64 %179, i32 -2147483623)
  %181 = load i64, i64* @LCFUSE02, align 8
  %182 = call i32 @I915_READ(i64 %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @LCFUSE_HIV_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %187 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 4
  ret void
}

declare dso_local i32 @I915_WRITE(i64, i32) #1

declare dso_local i32 @POSTING_READ(i64) #1

declare dso_local i32 @I915_READ(i64) #1

declare dso_local i64 @intel_pxfreq(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

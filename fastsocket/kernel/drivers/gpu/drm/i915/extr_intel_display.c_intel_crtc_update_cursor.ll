; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_update_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_update_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__*, i64, %struct.drm_device* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32, i32, i32, i32, i64, i64, i32 }

@CURSOR_POS_SIGN = common dso_local global i32 0, align 4
@CURSOR_X_SHIFT = common dso_local global i32 0, align 4
@CURSOR_Y_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @intel_crtc_update_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crtc_update_cursor(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 2
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %6, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %21 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %20)
  store %struct.intel_crtc* %21, %struct.intel_crtc** %7, align 8
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %2
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %40 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %45 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = icmp sgt i32 %47, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %59 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = icmp sgt i32 %57, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %65, %56
  br label %68

67:                                               ; preds = %38, %33, %2
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %75 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %71
  %81 = load i32, i32* @CURSOR_POS_SIGN, align 4
  %82 = load i32, i32* @CURSOR_X_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %80, %68
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @CURSOR_X_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %88
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %100 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %96
  %106 = load i32, i32* @CURSOR_POS_SIGN, align 4
  %107 = load i32, i32* @CURSOR_Y_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %105, %88
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @CURSOR_Y_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %12, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %113
  %125 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %126 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  br label %167

130:                                              ; preds = %124, %113
  %131 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %132 = call i64 @IS_IVYBRIDGE(%struct.drm_device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %136 = call i64 @IS_HASWELL(%struct.drm_device* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %134, %130
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @CURPOS_IVB(i32 %139)
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @I915_WRITE(i32 %140, i32 %141)
  %143 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @ivb_update_cursor(%struct.drm_crtc* %143, i32 %144)
  br label %167

146:                                              ; preds = %134
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @CURPOS(i32 %147)
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @I915_WRITE(i32 %148, i32 %149)
  %151 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %152 = call i64 @IS_845G(%struct.drm_device* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %146
  %155 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %156 = call i64 @IS_I865G(%struct.drm_device* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154, %146
  %159 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @i845_update_cursor(%struct.drm_crtc* %159, i32 %160)
  br label %166

162:                                              ; preds = %154
  %163 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @i9xx_update_cursor(%struct.drm_crtc* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %158
  br label %167

167:                                              ; preds = %129, %166, %138
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_device*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @CURPOS_IVB(i32) #1

declare dso_local i32 @ivb_update_cursor(%struct.drm_crtc*, i32) #1

declare dso_local i32 @CURPOS(i32) #1

declare dso_local i64 @IS_845G(%struct.drm_device*) #1

declare dso_local i64 @IS_I865G(%struct.drm_device*) #1

declare dso_local i32 @i845_update_cursor(%struct.drm_crtc*, i32) #1

declare dso_local i32 @i9xx_update_cursor(%struct.drm_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

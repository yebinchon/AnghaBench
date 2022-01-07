; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_g4x_find_best_PLL.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_g4x_find_best_PLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_21__ = type { i32, i64, i64, i64, i64, i64, i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@PCH_LVDS = common dso_local global i32 0, align 4
@LVDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.drm_crtc*, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*)* @intel_g4x_find_best_PLL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_g4x_find_best_PLL(%struct.TYPE_20__* %0, %struct.drm_crtc* %1, i32 %2, i32 %3, %struct.TYPE_21__* %4, %struct.TYPE_21__* %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %5, %struct.TYPE_21__** %12, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 8
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 9
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %29 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %30 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %6
  %33 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %34 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @PCH_LVDS, align 4
  store i32 %37, i32* %18, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @LVDS, align 4
  store i32 %39, i32* %18, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %42 = call i64 @intel_is_dual_link_lvds(%struct.drm_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 6
  store i32 %48, i32* %49, align 8
  br label %56

50:                                               ; preds = %40
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 6
  store i32 %54, i32* %55, align 8
  br label %56

56:                                               ; preds = %50, %44
  br label %77

57:                                               ; preds = %6
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 6
  store i32 %68, i32* %69, align 8
  br label %76

70:                                               ; preds = %57
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 6
  store i32 %74, i32* %75, align 8
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %79 = call i32 @memset(%struct.TYPE_21__* %78, i32 0, i32 56)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %15, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  br label %89

89:                                               ; preds = %189, %77
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %193

94:                                               ; preds = %89
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  store i64 %98, i64* %99, align 8
  br label %100

100:                                              ; preds = %184, %94
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %102, %106
  br i1 %107, label %108, label %188

108:                                              ; preds = %100
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %179, %108
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp sge i64 %116, %120
  br i1 %121, label %122, label %183

122:                                              ; preds = %114
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %174, %122
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp sge i64 %130, %134
  br i1 %135, label %136, label %178

136:                                              ; preds = %128
  %137 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @intel_clock(%struct.drm_device* %137, i32 %138, %struct.TYPE_21__* %14)
  %140 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %142 = call i32 @intel_PLL_is_valid(%struct.drm_device* %140, %struct.TYPE_20__* %141, %struct.TYPE_21__* %14)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %136
  br label %174

145:                                              ; preds = %136
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %147 = icmp ne %struct.TYPE_21__* %146, null
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %174

156:                                              ; preds = %148, %145
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 %158, %160
  %162 = call i32 @abs(i64 %161)
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %156
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %168 = bitcast %struct.TYPE_21__* %167 to i8*
  %169 = bitcast %struct.TYPE_21__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 56, i1 false)
  %170 = load i32, i32* %19, align 4
  store i32 %170, i32* %17, align 4
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %173

173:                                              ; preds = %166, %156
  br label %174

174:                                              ; preds = %173, %155, %144
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, -1
  store i64 %177, i64* %175, align 8
  br label %128

178:                                              ; preds = %128
  br label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, -1
  store i64 %182, i64* %180, align 8
  br label %114

183:                                              ; preds = %114
  br label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, -1
  store i64 %187, i64* %185, align 8
  br label %100

188:                                              ; preds = %100
  br label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  br label %89

193:                                              ; preds = %89
  %194 = load i32, i32* %16, align 4
  ret i32 %194
}

declare dso_local i64 @intel_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i64 @intel_is_dual_link_lvds(%struct.drm_device*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @intel_clock(%struct.drm_device*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @intel_PLL_is_valid(%struct.drm_device*, %struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @abs(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_find_best_PLL.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_find_best_PLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i64, i64, i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.drm_crtc*, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*)* @intel_find_best_PLL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_find_best_PLL(%struct.TYPE_20__* %0, %struct.drm_crtc* %1, i32 %2, i32 %3, %struct.TYPE_21__* %4, %struct.TYPE_21__* %5) #0 {
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
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %5, %struct.TYPE_21__** %12, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %13, align 8
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %22 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %23 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %6
  %26 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %27 = call i64 @intel_is_dual_link_lvds(%struct.drm_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 6
  store i32 %33, i32* %34, align 8
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 6
  store i32 %39, i32* %40, align 8
  br label %41

41:                                               ; preds = %35, %29
  br label %62

42:                                               ; preds = %6
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 6
  store i32 %53, i32* %54, align 8
  br label %61

55:                                               ; preds = %42
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 6
  store i32 %59, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %41
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %64 = call i32 @memset(%struct.TYPE_21__* %63, i32 0, i32 56)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %182, %62
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sle i64 %72, %76
  br i1 %77, label %78, label %186

78:                                               ; preds = %70
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %177, %78
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sle i64 %86, %90
  br i1 %91, label %92, label %181

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %100 = call i32 @IS_PINEVIEW(%struct.drm_device* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  br label %181

103:                                              ; preds = %98, %92
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  store i64 %107, i64* %108, align 8
  br label %109

109:                                              ; preds = %172, %103
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sle i64 %111, %115
  br i1 %116, label %117, label %176

117:                                              ; preds = %109
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %167, %117
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sle i64 %125, %129
  br i1 %130, label %131, label %171

131:                                              ; preds = %123
  %132 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @intel_clock(%struct.drm_device* %132, i32 %133, %struct.TYPE_21__* %14)
  %135 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %137 = call i32 @intel_PLL_is_valid(%struct.drm_device* %135, %struct.TYPE_20__* %136, %struct.TYPE_21__* %14)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  br label %167

140:                                              ; preds = %131
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %142 = icmp ne %struct.TYPE_21__* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %167

151:                                              ; preds = %143, %140
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 %153, %155
  %157 = call i32 @abs(i64 %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %151
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %163 = bitcast %struct.TYPE_21__* %162 to i8*
  %164 = bitcast %struct.TYPE_21__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 56, i1 false)
  %165 = load i32, i32* %16, align 4
  store i32 %165, i32* %15, align 4
  br label %166

166:                                              ; preds = %161, %151
  br label %167

167:                                              ; preds = %166, %150, %139
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %168, align 8
  br label %123

171:                                              ; preds = %123
  br label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 8
  br label %109

176:                                              ; preds = %109
  br label %177

177:                                              ; preds = %176
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  br label %84

181:                                              ; preds = %102, %84
  br label %182

182:                                              ; preds = %181
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %183, align 8
  br label %70

186:                                              ; preds = %70
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %187, %188
  %190 = zext i1 %189 to i32
  ret i32 %190
}

declare dso_local i64 @intel_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i64 @intel_is_dual_link_lvds(%struct.drm_device*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @IS_PINEVIEW(%struct.drm_device*) #1

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

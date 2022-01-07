; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_vlv_find_best_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_vlv_find_best_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.drm_crtc*, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*)* @intel_vlv_find_best_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_vlv_find_best_pll(%struct.TYPE_16__* %0, %struct.drm_crtc* %1, i32 %2, i32 %3, %struct.TYPE_17__* %4, %struct.TYPE_17__* %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %12, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 1000
  store i32 %36, i32* %33, align 4
  store i64 1000000, i64* %30, align 8
  store i64 0, i64* %32, align 8
  store i64 0, i64* %31, align 8
  %37 = load i32, i32* %33, align 4
  %38 = sdiv i32 %37, 200
  store i32 %38, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 19200, i32* %27, align 4
  store i32 1, i32* %28, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %24, align 4
  br label %43

43:                                               ; preds = %187, %6
  %44 = load i32, i32* %24, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %27, align 4
  %47 = sdiv i32 %45, %46
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %190

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %24, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %26, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %183, %49
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %58, %62
  br i1 %63, label %64, label %186

64:                                               ; preds = %57
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %179, %64
  %71 = load i32, i32* %14, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %182

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = icmp sgt i32 %74, 10
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %29, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %175, %79
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sle i32 %88, %92
  br i1 %93, label %94, label %178

94:                                               ; preds = %87
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* %29, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %24, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %15, align 4
  %101 = sdiv i32 %99, %100
  %102 = mul nsw i32 2, %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %10, align 4
  %106 = mul nsw i32 2, %105
  %107 = sdiv i32 %104, %106
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = mul nsw i32 %108, %109
  store i32 %110, i32* %23, align 4
  %111 = load i32, i32* %26, align 4
  %112 = load i32, i32* %23, align 4
  %113 = mul nsw i32 %111, %112
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %114, %118
  br i1 %119, label %120, label %174

120:                                              ; preds = %94
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %174

127:                                              ; preds = %120
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %29, align 4
  %130 = sdiv i32 %128, %129
  %131 = load i32, i32* %25, align 4
  %132 = sub nsw i32 %130, %131
  %133 = mul nsw i32 1000000, %132
  %134 = load i32, i32* %25, align 4
  %135 = sdiv i32 %133, %134
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %31, align 8
  %137 = load i64, i64* %31, align 8
  %138 = icmp ugt i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = load i64, i64* %31, align 8
  br label %144

141:                                              ; preds = %127
  %142 = load i64, i64* %31, align 8
  %143 = sub i64 0, %142
  br label %144

144:                                              ; preds = %141, %139
  %145 = phi i64 [ %140, %139 ], [ %143, %141 ]
  store i64 %145, i64* %32, align 8
  %146 = load i64, i64* %32, align 8
  %147 = icmp ult i64 %146, 100
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %22, align 4
  %154 = mul nsw i32 %152, %153
  %155 = icmp sgt i32 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store i64 0, i64* %30, align 8
  store i32 1, i32* %34, align 4
  br label %157

157:                                              ; preds = %156, %148, %144
  %158 = load i64, i64* %32, align 8
  %159 = load i64, i64* %30, align 8
  %160 = sub i64 %159, 10
  %161 = icmp ult i64 %158, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i64, i64* %32, align 8
  store i64 %163, i64* %30, align 8
  store i32 1, i32* %34, align 4
  br label %164

164:                                              ; preds = %162, %157
  %165 = load i32, i32* %34, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i32, i32* %24, align 4
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %15, align 4
  store i32 %169, i32* %19, align 4
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %20, align 4
  %171 = load i32, i32* %13, align 4
  store i32 %171, i32* %21, align 4
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %22, align 4
  store i32 0, i32* %34, align 4
  br label %173

173:                                              ; preds = %167, %164
  br label %174

174:                                              ; preds = %173, %120, %94
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  br label %87

178:                                              ; preds = %87
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %14, align 4
  br label %70

182:                                              ; preds = %70
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %13, align 4
  br label %57

186:                                              ; preds = %57
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %24, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %24, align 4
  br label %43

190:                                              ; preds = %43
  %191 = load i32, i32* %18, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %20, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %21, align 4
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %22, align 4
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 4
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

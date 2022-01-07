; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_pin_restricted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_pin_restricted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__, i32, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@RADEON_GEM_DOMAIN_VRAM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%p pin failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_pin_restricted(%struct.radeon_bo* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_bo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.radeon_bo* %0, %struct.radeon_bo** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %15 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %4
  %19 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %20 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %27 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %26)
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @RADEON_GEM_DOMAIN_VRAM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %38 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  br label %50

43:                                               ; preds = %32
  %44 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %45 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %53 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %52)
  %54 = load i64, i64* %12, align 8
  %55 = sub nsw i64 %53, %54
  %56 = icmp slt i64 %51, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON_ONCE(i32 %57)
  br label %59

59:                                               ; preds = %50, %29
  store i32 0, i32* %5, align 4
  br label %174

60:                                               ; preds = %4
  %61 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @radeon_ttm_placement_from_domain(%struct.radeon_bo* %61, i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @RADEON_GEM_DOMAIN_VRAM, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %69 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PAGE_SHIFT, align 8
  %75 = ashr i64 %73, %74
  %76 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %67, %60
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %79
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @PAGE_SHIFT, align 8
  %85 = ashr i64 %83, %84
  store i64 %85, i64* %13, align 8
  %86 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %87 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %82
  %92 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %93 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PAGE_SHIFT, align 8
  %99 = ashr i64 %97, %98
  %100 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %101 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  br label %103

103:                                              ; preds = %91, %82
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %106 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %104, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %113 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  br label %115

115:                                              ; preds = %110, %103
  br label %116

116:                                              ; preds = %115, %79
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %134, %116
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %120 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %117
  %125 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %126 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %127 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %125
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %117

137:                                              ; preds = %117
  %138 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %139 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %138, i32 0, i32 3
  %140 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %141 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %140, i32 0, i32 2
  %142 = call i32 @ttm_bo_validate(i32* %139, %struct.TYPE_6__* %141, i32 0, i32 0)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i64 @likely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %137
  %149 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %150 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load i64*, i64** %9, align 8
  %152 = icmp ne i64* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %155 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %154)
  %156 = load i64*, i64** %9, align 8
  store i64 %155, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %148
  br label %158

158:                                              ; preds = %157, %137
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %166 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %165, i32 0, i32 1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %171 = call i32 @dev_err(i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.radeon_bo* %170)
  br label %172

172:                                              ; preds = %164, %158
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %172, %59
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i64 @radeon_bo_gpu_offset(%struct.radeon_bo*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @radeon_ttm_placement_from_domain(%struct.radeon_bo*, i64) #1

declare dso_local i32 @ttm_bo_validate(i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.radeon_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

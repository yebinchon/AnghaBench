; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_rammap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_rammap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.bit_entry = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nouveau_perf_rammap(%struct.drm_device* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nouveau_drm*, align 8
  %15 = alloca %struct.bit_entry, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %22 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %21)
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %14, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %24 = call i32 @bit_table(%struct.drm_device* %23, i8 signext 80, %struct.bit_entry* %15)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %103, label %26

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %15, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %103

30:                                               ; preds = %26
  %31 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %32 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %15, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @ROMPTR(%struct.drm_device* %31, i32 %35)
  store i32* %36, i32** %18, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %102

39:                                               ; preds = %30
  %40 = load i32*, i32** %18, align 8
  %41 = load i32*, i32** %18, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32* %45, i32** %19, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %18, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %18, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %18, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sdiv i32 %62, 1000
  store i32 %63, i32* %9, align 4
  store i32 0, i32* %17, align 4
  br label %64

64:                                               ; preds = %98, %39
  %65 = load i32, i32* %17, align 4
  %66 = load i32*, i32** %18, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %19, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ROM16(i32 %74)
  %76 = icmp sge i32 %71, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %19, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ROM16(i32 %81)
  %83 = icmp sle i32 %78, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32*, i32** %19, align 8
  store i32* %85, i32** %7, align 8
  br label %194

86:                                               ; preds = %77, %70
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %90, %92
  %94 = add nsw i32 %88, %93
  %95 = load i32*, i32** %19, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %19, align 8
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %64

101:                                              ; preds = %64
  br label %102

102:                                              ; preds = %101, %30
  store i32* null, i32** %7, align 8
  br label %194

103:                                              ; preds = %26, %6
  %104 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %105 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.TYPE_2__* @nv_device(i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 73
  br i1 %110, label %119, label %111

111:                                              ; preds = %103
  %112 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %113 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.TYPE_2__* @nv_device(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 75
  br i1 %118, label %119, label %122

119:                                              ; preds = %111, %103
  %120 = load i32, i32* %9, align 4
  %121 = sdiv i32 %120, 2
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %119, %111
  br label %123

123:                                              ; preds = %180, %122
  %124 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = call i32* @nouveau_perf_entry(%struct.drm_device* %124, i32 %125, i32* %127, i32* %128, i32* %129, i32* %130)
  store i32* %131, i32** %16, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %181

133:                                              ; preds = %123
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp sge i32 %135, 32
  br i1 %136, label %137, label %156

137:                                              ; preds = %133
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %139, 37
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load i32*, i32** %16, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 255
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load i32, i32* %9, align 4
  %148 = load i32*, i32** %16, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 11
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ROM16(i32 %150)
  %152 = mul nsw i32 %151, 1000
  %153 = icmp sle i32 %147, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %181

155:                                              ; preds = %146, %141
  br label %180

156:                                              ; preds = %137, %133
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp sge i32 %158, 37
  br i1 %159, label %160, label %179

160:                                              ; preds = %156
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %162, 64
  br i1 %163, label %164, label %179

164:                                              ; preds = %160
  %165 = load i32*, i32** %16, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 255
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load i32, i32* %9, align 4
  %171 = load i32*, i32** %16, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 12
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ROM16(i32 %173)
  %175 = mul nsw i32 %174, 1000
  %176 = icmp sle i32 %170, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  br label %181

178:                                              ; preds = %169, %164
  br label %179

179:                                              ; preds = %178, %160, %156
  br label %180

180:                                              ; preds = %179, %155
  br label %123

181:                                              ; preds = %177, %154, %123
  %182 = load i32*, i32** %16, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load i32*, i32** %16, align 8
  %186 = load i32*, i32** %11, align 8
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32* %189, i32** %20, align 8
  %190 = load i32*, i32** %10, align 8
  store i32 0, i32* %190, align 4
  %191 = load i32*, i32** %11, align 8
  store i32 0, i32* %191, align 4
  %192 = load i32*, i32** %20, align 8
  store i32* %192, i32** %7, align 8
  br label %194

193:                                              ; preds = %181
  store i32* null, i32** %7, align 8
  br label %194

194:                                              ; preds = %193, %184, %102, %84
  %195 = load i32*, i32** %7, align 8
  ret i32* %195
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @bit_table(%struct.drm_device*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32* @ROMPTR(%struct.drm_device*, i32) #1

declare dso_local i32 @ROM16(i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32* @nouveau_perf_entry(%struct.drm_device*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

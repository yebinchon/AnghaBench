; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_dp.c_nouveau_dp_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_dp.c_nouveau_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_encoder = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.nouveau_i2c_port* }
%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nouveau_i2c_port = type { i32 }
%struct.nouveau_drm = type { i32 }

@DP_DPCD_REV = common dso_local global i32 0, align 4
@DP_MAX_LANE_COUNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"display: %dx%d dpcd 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"encoder: %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"maximum: %dx%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_dp_detect(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.nouveau_encoder*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nouveau_i2c_port*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = call %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder* %10)
  store %struct.nouveau_encoder* %11, %struct.nouveau_encoder** %4, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %6, align 8
  %17 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %21, i32 0, i32 2
  %23 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %22, align 8
  store %struct.nouveau_i2c_port* %23, %struct.nouveau_i2c_port** %7, align 8
  %24 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %7, align 8
  %25 = icmp ne %struct.nouveau_i2c_port* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %136

27:                                               ; preds = %1
  %28 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %7, align 8
  %29 = load i32, i32* @DP_DPCD_REV, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @nv_rdaux(%struct.nouveau_i2c_port* %28, i32 %29, i32* %30, i32 8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %136

35:                                               ; preds = %27
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 27000, %38
  %40 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %41 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DP_MAX_LANE_COUNT_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %49 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %52 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %57 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %59, i32 %62)
  %64 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %65 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %66 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %72 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %76)
  %78 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %79 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %85 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %35
  %90 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %91 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %97 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 4
  br label %99

99:                                               ; preds = %89, %35
  %100 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %101 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %107 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %99
  %112 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %113 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %119 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  br label %121

121:                                              ; preds = %111, %99
  %122 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %123 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %124 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %128 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %130)
  %132 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %133 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %7, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = call i32 @nouveau_dp_probe_oui(%struct.drm_device* %132, %struct.nouveau_i2c_port* %133, i32* %134)
  store i32 1, i32* %2, align 4
  br label %136

136:                                              ; preds = %121, %34, %26
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nv_rdaux(%struct.nouveau_i2c_port*, i32, i32*, i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32, ...) #1

declare dso_local i32 @nouveau_dp_probe_oui(%struct.drm_device*, %struct.nouveau_i2c_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

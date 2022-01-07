; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_set_encoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_set_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_encoder = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.nouveau_connector = type { i64, %struct.nouveau_encoder* }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_6__ = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@DCB_OUTPUT_LVDS = common dso_local global i64 0, align 8
@DCB_OUTPUT_TMDS = common dso_local global i64 0, align 8
@NV_20 = common dso_local global i64 0, align 8
@NV_10 = common dso_local global i64 0, align 8
@DCB_CONNECTOR_DVI_I = common dso_local global i64 0, align 8
@DRM_MODE_SUBCONNECTOR_DVID = common dso_local global i32 0, align 4
@DRM_MODE_SUBCONNECTOR_DVIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, %struct.nouveau_encoder*)* @nouveau_connector_set_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_connector_set_encoder(%struct.drm_connector* %0, %struct.nouveau_encoder* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.nouveau_encoder*, align 8
  %5 = alloca %struct.nouveau_connector*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.drm_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.nouveau_encoder* %1, %struct.nouveau_encoder** %4, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %8)
  store %struct.nouveau_connector* %9, %struct.nouveau_connector** %5, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 3
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %6, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 3
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %18 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %17, i32 0, i32 1
  %19 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %18, align 8
  %20 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %21 = icmp eq %struct.nouveau_encoder* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %128

23:                                               ; preds = %2
  %24 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %25 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %26 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %25, i32 0, i32 1
  store %struct.nouveau_encoder* %24, %struct.nouveau_encoder** %26, align 8
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %28 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_6__* @nv_device(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NV_50, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %101

40:                                               ; preds = %23
  %41 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %42 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DCB_OUTPUT_LVDS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %50 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DCB_OUTPUT_TMDS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48, %40
  %57 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %58 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %100

61:                                               ; preds = %48
  %62 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %65 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_6__* @nv_device(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NV_20, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %93, label %72

72:                                               ; preds = %61
  %73 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %74 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.TYPE_6__* @nv_device(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NV_10, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %72
  %82 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 4080
  %86 = icmp ne i32 %85, 256
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %89 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 4080
  %92 = icmp ne i32 %91, 336
  br i1 %92, label %93, label %96

93:                                               ; preds = %87, %61
  %94 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %95 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %99

96:                                               ; preds = %87, %81, %72
  %97 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %98 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %56
  br label %101

101:                                              ; preds = %100, %35
  %102 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %103 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @DCB_CONNECTOR_DVI_I, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %101
  %108 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %109 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %108, i32 0, i32 2
  %110 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %111 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %115 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DCB_OUTPUT_TMDS, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %107
  %122 = load i32, i32* @DRM_MODE_SUBCONNECTOR_DVID, align 4
  br label %125

123:                                              ; preds = %107
  %124 = load i32, i32* @DRM_MODE_SUBCONNECTOR_DVIA, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = call i32 @drm_object_property_set_value(i32* %109, i32 %113, i32 %126)
  br label %128

128:                                              ; preds = %22, %125, %101
  ret void
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.TYPE_6__* @nv_device(i32) #1

declare dso_local i32 @drm_object_property_set_value(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

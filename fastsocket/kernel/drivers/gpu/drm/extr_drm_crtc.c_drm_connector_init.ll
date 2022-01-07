; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_connector_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.drm_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.drm_connector = type { i32, %struct.TYPE_6__, i32, i32, i32*, i32, i32, i32, i64, %struct.drm_connector_funcs*, %struct.drm_device*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.drm_connector_funcs = type { i32 }

@DRM_MODE_OBJECT_CONNECTOR = common dso_local global i32 0, align 4
@drm_connector_enum_list = common dso_local global %struct.TYPE_7__* null, align 8
@connector_status_unknown = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_init(%struct.drm_device* %0, %struct.drm_connector* %1, %struct.drm_connector_funcs* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_connector_funcs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %6, align 8
  store %struct.drm_connector_funcs* %2, %struct.drm_connector_funcs** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = call i32 @drm_modeset_lock_all(%struct.drm_device* %10)
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 1
  %15 = load i32, i32* @DRM_MODE_OBJECT_CONNECTOR, align 4
  %16 = call i32 @drm_mode_object_get(%struct.drm_device* %12, %struct.TYPE_6__* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %88

20:                                               ; preds = %4
  %21 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 11
  %23 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %24 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32* %22, i32** %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 10
  store %struct.drm_device* %26, %struct.drm_device** %28, align 8
  %29 = load %struct.drm_connector_funcs*, %struct.drm_connector_funcs** %7, align 8
  %30 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 9
  store %struct.drm_connector_funcs* %29, %struct.drm_connector_funcs** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @drm_connector_enum_list, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 8
  store i64 %41, i64* %43, align 8
  %44 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 7
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %48 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 6
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %51 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %50, i32 0, i32 5
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %54 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @connector_status_unknown, align 4
  %56 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %57 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %59 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %58, i32 0, i32 2
  %60 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %61 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = call i32 @list_add_tail(i32* %59, i32* %62)
  %64 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %20
  %73 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %74 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %73, i32 0, i32 1
  %75 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @drm_object_attach_property(%struct.TYPE_6__* %74, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %72, %20
  %81 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %82 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %81, i32 0, i32 1
  %83 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @drm_object_attach_property(%struct.TYPE_6__* %82, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %80, %19
  %89 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %90 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %89)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @drm_object_attach_property(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

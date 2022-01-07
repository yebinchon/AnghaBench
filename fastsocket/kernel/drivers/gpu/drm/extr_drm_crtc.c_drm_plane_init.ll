; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_plane_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_plane = type { i32, i64, i32, i32, %struct.TYPE_5__, %struct.drm_plane_funcs*, %struct.drm_device*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.drm_plane_funcs = type { i32 }

@DRM_MODE_OBJECT_PLANE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"out of memory when allocating plane\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_plane_init(%struct.drm_device* %0, %struct.drm_plane* %1, i64 %2, %struct.drm_plane_funcs* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.drm_plane_funcs*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.drm_plane_funcs* %3, %struct.drm_plane_funcs** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %17 = call i32 @drm_modeset_lock_all(%struct.drm_device* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %19 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %20 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 4
  %21 = load i32, i32* @DRM_MODE_OBJECT_PLANE, align 4
  %22 = call i32 @drm_mode_object_get(%struct.drm_device* %18, %struct.TYPE_5__* %20, i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  br label %93

26:                                               ; preds = %7
  %27 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 7
  %29 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %30 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %33 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %34 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 6
  store %struct.drm_device* %32, %struct.drm_device** %34, align 8
  %35 = load %struct.drm_plane_funcs*, %struct.drm_plane_funcs** %11, align 8
  %36 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %37 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %36, i32 0, i32 5
  store %struct.drm_plane_funcs* %35, %struct.drm_plane_funcs** %37, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @kmalloc(i32 %41, i32 %42)
  %44 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %45 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %47 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %26
  %51 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %53 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %54 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %53, i32 0, i32 4
  %55 = call i32 @drm_mode_object_put(%struct.drm_device* %52, %struct.TYPE_5__* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %15, align 4
  br label %93

58:                                               ; preds = %26
  %59 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %60 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(i32 %61, i32* %62, i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %70 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %73 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %58
  %77 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %78 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %77, i32 0, i32 2
  %79 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = call i32 @list_add_tail(i32* %78, i32* %81)
  %83 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %92

88:                                               ; preds = %58
  %89 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %90 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %89, i32 0, i32 2
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  br label %92

92:                                               ; preds = %88, %76
  br label %93

93:                                               ; preds = %92, %50, %25
  %94 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %95 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %94)
  %96 = load i32, i32* %15, align 4
  ret i32 %96
}

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_mode_object_put(%struct.drm_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

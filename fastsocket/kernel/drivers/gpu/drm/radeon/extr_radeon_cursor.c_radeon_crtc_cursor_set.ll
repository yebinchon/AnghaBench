; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_crtc_cursor_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_crtc_cursor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.radeon_crtc = type { i64, %struct.drm_gem_object*, i64, i64 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@CURSOR_WIDTH = common dso_local global i64 0, align 8
@CURSOR_HEIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"bad cursor width or height %d x %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot find cursor object %x for crtc %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_crtc_cursor_set(%struct.drm_crtc* %0, %struct.drm_file* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.radeon_crtc*, align 8
  %13 = alloca %struct.radeon_device*, align 8
  %14 = alloca %struct.drm_gem_object*, align 8
  %15 = alloca %struct.radeon_bo*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %19 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %18)
  store %struct.radeon_crtc* %19, %struct.radeon_crtc** %12, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.radeon_device*, %struct.radeon_device** %23, align 8
  store %struct.radeon_device* %24, %struct.radeon_device** %13, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %29 = call i32 @radeon_hide_cursor(%struct.drm_crtc* %28)
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %14, align 8
  br label %103

30:                                               ; preds = %5
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @CURSOR_WIDTH, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @CURSOR_HEIGHT, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %138

44:                                               ; preds = %34
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.TYPE_2__* %47, %struct.drm_file* %48, i64 %49)
  store %struct.drm_gem_object* %50, %struct.drm_gem_object** %14, align 8
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %52 = icmp ne %struct.drm_gem_object* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %44
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %56 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %57)
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %138

61:                                               ; preds = %44
  %62 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %63 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %62)
  store %struct.radeon_bo* %63, %struct.radeon_bo** %15, align 8
  %64 = load %struct.radeon_bo*, %struct.radeon_bo** %15, align 8
  %65 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %64, i32 0)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %134

72:                                               ; preds = %61
  %73 = load %struct.radeon_bo*, %struct.radeon_bo** %15, align 8
  %74 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %75 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %76 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %75)
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 134217728
  %80 = call i32 @radeon_bo_pin_restricted(%struct.radeon_bo* %73, i32 %74, i32 %79, i32* %16)
  store i32 %80, i32* %17, align 4
  %81 = load %struct.radeon_bo*, %struct.radeon_bo** %15, align 8
  %82 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %81)
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %134

86:                                               ; preds = %72
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %89 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %92 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %94 = call i32 @radeon_lock_cursor(%struct.drm_crtc* %93, i32 1)
  %95 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %96 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @radeon_set_cursor(%struct.drm_crtc* %95, %struct.drm_gem_object* %96, i32 %97)
  %99 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %100 = call i32 @radeon_show_cursor(%struct.drm_crtc* %99)
  %101 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %102 = call i32 @radeon_lock_cursor(%struct.drm_crtc* %101, i32 0)
  br label %103

103:                                              ; preds = %86, %27
  %104 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %105 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %104, i32 0, i32 1
  %106 = load %struct.drm_gem_object*, %struct.drm_gem_object** %105, align 8
  %107 = icmp ne %struct.drm_gem_object* %106, null
  br i1 %107, label %108, label %130

108:                                              ; preds = %103
  %109 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %110 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %109, i32 0, i32 1
  %111 = load %struct.drm_gem_object*, %struct.drm_gem_object** %110, align 8
  %112 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %111)
  store %struct.radeon_bo* %112, %struct.radeon_bo** %15, align 8
  %113 = load %struct.radeon_bo*, %struct.radeon_bo** %15, align 8
  %114 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %113, i32 0)
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i64 @likely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %108
  %121 = load %struct.radeon_bo*, %struct.radeon_bo** %15, align 8
  %122 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %121)
  %123 = load %struct.radeon_bo*, %struct.radeon_bo** %15, align 8
  %124 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %123)
  br label %125

125:                                              ; preds = %120, %108
  %126 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %127 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %126, i32 0, i32 1
  %128 = load %struct.drm_gem_object*, %struct.drm_gem_object** %127, align 8
  %129 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %128)
  br label %130

130:                                              ; preds = %125, %103
  %131 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %132 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %133 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %132, i32 0, i32 1
  store %struct.drm_gem_object* %131, %struct.drm_gem_object** %133, align 8
  store i32 0, i32* %6, align 4
  br label %138

134:                                              ; preds = %85, %71
  %135 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %136 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %135)
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %134, %130, %53, %38
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_hide_cursor(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.TYPE_2__*, %struct.drm_file*, i64) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin_restricted(%struct.radeon_bo*, i32, i32, i32*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_lock_cursor(%struct.drm_crtc*, i32) #1

declare dso_local i32 @radeon_set_cursor(%struct.drm_crtc*, %struct.drm_gem_object*, i32) #1

declare dso_local i32 @radeon_show_cursor(%struct.drm_crtc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ivb_get_colorkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ivb_get_colorkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_intel_sprite_colorkey = type { i64, i8*, i8*, i8* }
%struct.intel_plane = type { i32 }

@SPRITE_DEST_KEY = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_DESTINATION = common dso_local global i64 0, align 8
@SPRITE_SOURCE_KEY = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_SOURCE = common dso_local global i64 0, align 8
@I915_SET_COLORKEY_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_intel_sprite_colorkey*)* @ivb_get_colorkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_get_colorkey(%struct.drm_plane* %0, %struct.drm_intel_sprite_colorkey* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_plane*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_intel_sprite_colorkey* %1, %struct.drm_intel_sprite_colorkey** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  %15 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %16 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %15)
  store %struct.intel_plane* %16, %struct.intel_plane** %7, align 8
  %17 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %18 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SPRKEYVAL(i32 %19)
  %21 = call i8* @I915_READ(i32 %20)
  %22 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %23 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %25 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SPRKEYMAX(i32 %26)
  %28 = call i8* @I915_READ(i32 %27)
  %29 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %30 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %32 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SPRKEYMSK(i32 %33)
  %35 = call i8* @I915_READ(i32 %34)
  %36 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %37 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %39 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %41 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SPRCTL(i32 %42)
  %44 = call i8* @I915_READ(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SPRITE_DEST_KEY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = load i64, i64* @I915_SET_COLORKEY_DESTINATION, align 8
  %52 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %53 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %68

54:                                               ; preds = %2
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SPRITE_SOURCE_KEY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i64, i64* @I915_SET_COLORKEY_SOURCE, align 8
  %61 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %62 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %67

63:                                               ; preds = %54
  %64 = load i64, i64* @I915_SET_COLORKEY_NONE, align 8
  %65 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %66 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %50
  ret void
}

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @SPRKEYVAL(i32) #1

declare dso_local i32 @SPRKEYMAX(i32) #1

declare dso_local i32 @SPRKEYMSK(i32) #1

declare dso_local i32 @SPRCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

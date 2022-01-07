; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ivb_update_colorkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ivb_update_colorkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_intel_sprite_colorkey = type { i32, i32, i32, i32 }
%struct.intel_plane = type { i32 }

@SPRITE_SOURCE_KEY = common dso_local global i32 0, align 4
@SPRITE_DEST_KEY = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_DESTINATION = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_intel_sprite_colorkey*)* @ivb_update_colorkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivb_update_colorkey(%struct.drm_plane* %0, %struct.drm_intel_sprite_colorkey* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_plane*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_intel_sprite_colorkey* %1, %struct.drm_intel_sprite_colorkey** %4, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %17 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %16)
  store %struct.intel_plane* %17, %struct.intel_plane** %7, align 8
  %18 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %19 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SPRKEYVAL(i32 %20)
  %22 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %23 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @I915_WRITE(i32 %21, i32 %24)
  %26 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %27 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SPRKEYMAX(i32 %28)
  %30 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %31 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @I915_WRITE(i32 %29, i32 %32)
  %34 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %35 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SPRKEYMSK(i32 %36)
  %38 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %39 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @I915_WRITE(i32 %37, i32 %40)
  %42 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %43 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SPRCTL(i32 %44)
  %46 = call i32 @I915_READ(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @SPRITE_SOURCE_KEY, align 4
  %48 = load i32, i32* @SPRITE_DEST_KEY, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %54 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @I915_SET_COLORKEY_DESTINATION, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %2
  %60 = load i32, i32* @SPRITE_DEST_KEY, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %75

63:                                               ; preds = %2
  %64 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %65 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @I915_SET_COLORKEY_SOURCE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @SPRITE_SOURCE_KEY, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %63
  br label %75

75:                                               ; preds = %74, %59
  %76 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %77 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SPRCTL(i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @I915_WRITE(i32 %79, i32 %80)
  %82 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %83 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SPRKEYMSK(i32 %84)
  %86 = call i32 @POSTING_READ(i32 %85)
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @SPRKEYVAL(i32) #1

declare dso_local i32 @SPRKEYMAX(i32) #1

declare dso_local i32 @SPRKEYMSK(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @SPRCTL(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

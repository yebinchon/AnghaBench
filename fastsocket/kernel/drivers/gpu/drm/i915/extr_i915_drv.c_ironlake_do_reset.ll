; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_ironlake_do_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_ironlake_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@MCHBAR_MIRROR_BASE = common dso_local global i64 0, align 8
@ILK_GDSR = common dso_local global i64 0, align 8
@GRDOM_RENDER = common dso_local global i32 0, align 4
@GRDOM_RESET_ENABLE = common dso_local global i32 0, align 4
@GRDOM_MEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @ironlake_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_do_reset(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %4, align 8
  %10 = load i64, i64* @MCHBAR_MIRROR_BASE, align 8
  %11 = load i64, i64* @ILK_GDSR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @I915_READ(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* @MCHBAR_MIRROR_BASE, align 8
  %15 = load i64, i64* @ILK_GDSR, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GRDOM_RENDER, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @GRDOM_RESET_ENABLE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @I915_WRITE(i64 %16, i32 %21)
  %23 = load i64, i64* @MCHBAR_MIRROR_BASE, align 8
  %24 = load i64, i64* @ILK_GDSR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @I915_READ(i64 %25)
  %27 = and i32 %26, 1
  %28 = call i32 @wait_for(i32 %27, i32 500)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %53

33:                                               ; preds = %1
  %34 = load i64, i64* @MCHBAR_MIRROR_BASE, align 8
  %35 = load i64, i64* @ILK_GDSR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @I915_READ(i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i64, i64* @MCHBAR_MIRROR_BASE, align 8
  %39 = load i64, i64* @ILK_GDSR, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @GRDOM_MEDIA, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @GRDOM_RESET_ENABLE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @I915_WRITE(i64 %40, i32 %45)
  %47 = load i64, i64* @MCHBAR_MIRROR_BASE, align 8
  %48 = load i64, i64* @ILK_GDSR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @I915_READ(i64 %49)
  %51 = and i32 %50, 1
  %52 = call i32 @wait_for(i32 %51, i32 500)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %33, %31
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @I915_READ(i64) #1

declare dso_local i32 @I915_WRITE(i64, i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

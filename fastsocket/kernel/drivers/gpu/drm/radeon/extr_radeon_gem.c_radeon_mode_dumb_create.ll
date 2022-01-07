; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_mode_dumb_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_mode_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_mode_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %8, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %16 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %17 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @radeon_align_pitch(%struct.radeon_device* %15, i32 %18, i32 %21, i32 0)
  %23 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %24 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = sdiv i32 %26, 8
  %28 = mul nsw i32 %22, %27
  %29 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %30 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %32 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %35 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %39 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %41 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = call i32 @ALIGN(i32 %42, i32 %43)
  %45 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %46 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %48 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %49 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %52 = load i32, i32* @ttm_bo_type_device, align 4
  %53 = call i32 @radeon_gem_object_create(%struct.radeon_device* %47, i32 %50, i32 0, i32 %51, i32 0, i32 %52, %struct.drm_gem_object** %9)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %3
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %73

59:                                               ; preds = %3
  %60 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %61 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %62 = call i32 @drm_gem_handle_create(%struct.drm_file* %60, %struct.drm_gem_object* %61, i32* %10)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %64 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %63)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %73

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %72 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %67, %56
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @radeon_align_pitch(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @radeon_gem_object_create(%struct.radeon_device*, i32, i32, i32, i32, i32, %struct.drm_gem_object**) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

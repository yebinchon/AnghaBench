; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_free_mmap_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_free_mmap_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.drm_map_list, %struct.drm_device* }
%struct.drm_map_list = type { i32*, i32, i32 }
%struct.drm_device = type { %struct.drm_gem_mm* }
%struct.drm_gem_mm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_free_mmap_offset(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_gem_mm*, align 8
  %5 = alloca %struct.drm_map_list*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %7 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %6, i32 0, i32 1
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_gem_mm*, %struct.drm_gem_mm** %10, align 8
  store %struct.drm_gem_mm* %11, %struct.drm_gem_mm** %4, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %13 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %12, i32 0, i32 0
  store %struct.drm_map_list* %13, %struct.drm_map_list** %5, align 8
  %14 = load %struct.drm_gem_mm*, %struct.drm_gem_mm** %4, align 8
  %15 = getelementptr inbounds %struct.drm_gem_mm, %struct.drm_gem_mm* %14, i32 0, i32 0
  %16 = load %struct.drm_map_list*, %struct.drm_map_list** %5, align 8
  %17 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %16, i32 0, i32 2
  %18 = call i32 @drm_ht_remove_item(i32* %15, i32* %17)
  %19 = load %struct.drm_map_list*, %struct.drm_map_list** %5, align 8
  %20 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @drm_mm_put_block(i32 %21)
  %23 = load %struct.drm_map_list*, %struct.drm_map_list** %5, align 8
  %24 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.drm_map_list*, %struct.drm_map_list** %5, align 8
  %28 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  ret void
}

declare dso_local i32 @drm_ht_remove_item(i32*, i32*) #1

declare dso_local i32 @drm_mm_put_block(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

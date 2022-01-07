; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_memory.c_drm_core_ioremap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_memory.c_drm_core_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_local_map = type { i64, i32, i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@_DRM_AGP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_core_ioremap(%struct.drm_local_map* %0, %struct.drm_device* %1) #0 {
  %3 = alloca %struct.drm_local_map*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.drm_local_map* %0, %struct.drm_local_map** %3, align 8
  store %struct.drm_device* %1, %struct.drm_device** %4, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %6 = call i64 @drm_core_has_AGP(%struct.drm_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %22 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @_DRM_AGP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %28 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %31 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = call i32 @agp_remap(i32 %29, i32 %32, %struct.drm_device* %33)
  %35 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %36 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  br label %47

37:                                               ; preds = %20, %13, %8, %2
  %38 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %39 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %42 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ioremap(i32 %40, i32 %43)
  %45 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %46 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %37, %26
  ret void
}

declare dso_local i64 @drm_core_has_AGP(%struct.drm_device*) #1

declare dso_local i32 @agp_remap(i32, i32, %struct.drm_device*) #1

declare dso_local i32 @ioremap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

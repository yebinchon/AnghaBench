; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_memory.c_drm_core_ioremapfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_memory.c_drm_core_ioremapfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_local_map = type { i64, i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@_DRM_AGP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_core_ioremapfree(%struct.drm_local_map* %0, %struct.drm_device* %1) #0 {
  %3 = alloca %struct.drm_local_map*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.drm_local_map* %0, %struct.drm_local_map** %3, align 8
  store %struct.drm_device* %1, %struct.drm_device** %4, align 8
  %5 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %6 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %11 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  br label %47

15:                                               ; preds = %9
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = call i64 @drm_core_has_AGP(%struct.drm_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %33 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @_DRM_AGP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %39 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @vunmap(i32 %40)
  br label %47

42:                                               ; preds = %31, %24, %19, %15
  %43 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %44 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @iounmap(i32 %45)
  br label %47

47:                                               ; preds = %14, %42, %37
  ret void
}

declare dso_local i64 @drm_core_has_AGP(%struct.drm_device*) #1

declare dso_local i32 @vunmap(i32) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

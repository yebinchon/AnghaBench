; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.drm_gem_object = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.drm_gem_object*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_object_free(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.kref* %0, %struct.kref** %2, align 8
  %5 = load %struct.kref*, %struct.kref** %2, align 8
  %6 = bitcast %struct.kref* %5 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %6, %struct.drm_gem_object** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = call i32 @mutex_is_locked(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.drm_gem_object*)*, i32 (%struct.drm_gem_object*)** %20, align 8
  %22 = icmp ne i32 (%struct.drm_gem_object*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.drm_gem_object*)*, i32 (%struct.drm_gem_object*)** %27, align 8
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %30 = call i32 %28(%struct.drm_gem_object* %29)
  br label %31

31:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

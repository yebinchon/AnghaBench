; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_release_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_release_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_gem_object = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_gem_object*, %struct.drm_file*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @drm_gem_object_release_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_gem_object_release_handle(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.drm_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_file*
  store %struct.drm_file* %11, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %13, %struct.drm_gem_object** %8, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %15 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = call i32 @drm_gem_remove_prime_handles(%struct.drm_gem_object* %17, %struct.drm_file* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.drm_gem_object*, %struct.drm_file*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)** %23, align 8
  %25 = icmp ne i32 (%struct.drm_gem_object*, %struct.drm_file*)* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.drm_gem_object*, %struct.drm_file*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)** %30, align 8
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %33 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %34 = call i32 %31(%struct.drm_gem_object* %32, %struct.drm_file* %33)
  br label %35

35:                                               ; preds = %26, %3
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %37 = call i32 @drm_gem_object_handle_unreference_unlocked(%struct.drm_gem_object* %36)
  ret i32 0
}

declare dso_local i32 @drm_gem_remove_prime_handles(%struct.drm_gem_object*, %struct.drm_file*) #1

declare dso_local i32 @drm_gem_object_handle_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

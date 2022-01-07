; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_nouveau_gem_info = type { i32 }
%struct.drm_gem_object = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gem_ioctl_info(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_nouveau_gem_info*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_nouveau_gem_info*
  store %struct.drm_nouveau_gem_info* %12, %struct.drm_nouveau_gem_info** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %8, align 8
  %16 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %13, %struct.drm_file* %14, i32 %17)
  store %struct.drm_gem_object* %18, %struct.drm_gem_object** %9, align 8
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %20 = icmp ne %struct.drm_gem_object* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %27 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %8, align 8
  %28 = call i32 @nouveau_gem_info(%struct.drm_file* %25, %struct.drm_gem_object* %26, %struct.drm_nouveau_gem_info* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %30 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @nouveau_gem_info(%struct.drm_file*, %struct.drm_gem_object*, %struct.drm_nouveau_gem_info*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

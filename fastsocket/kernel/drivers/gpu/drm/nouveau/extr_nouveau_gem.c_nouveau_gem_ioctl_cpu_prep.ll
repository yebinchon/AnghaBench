; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_cpu_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_cpu_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_nouveau_gem_cpu_prep = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.nouveau_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NOUVEAU_GEM_CPU_PREP_NOWAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gem_ioctl_cpu_prep(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_nouveau_gem_cpu_prep*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.nouveau_bo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_nouveau_gem_cpu_prep*
  store %struct.drm_nouveau_gem_cpu_prep* %14, %struct.drm_nouveau_gem_cpu_prep** %8, align 8
  %15 = load %struct.drm_nouveau_gem_cpu_prep*, %struct.drm_nouveau_gem_cpu_prep** %8, align 8
  %16 = getelementptr inbounds %struct.drm_nouveau_gem_cpu_prep, %struct.drm_nouveau_gem_cpu_prep* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NOUVEAU_GEM_CPU_PREP_NOWAIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %28 = load %struct.drm_nouveau_gem_cpu_prep*, %struct.drm_nouveau_gem_cpu_prep** %8, align 8
  %29 = getelementptr inbounds %struct.drm_nouveau_gem_cpu_prep, %struct.drm_nouveau_gem_cpu_prep* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %26, %struct.drm_file* %27, i32 %30)
  store %struct.drm_gem_object* %31, %struct.drm_gem_object** %9, align 8
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %33 = icmp ne %struct.drm_gem_object* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %59

37:                                               ; preds = %3
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %39 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %38)
  store %struct.nouveau_bo* %39, %struct.nouveau_bo** %10, align 8
  %40 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %41 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %47 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %46, i32 0, i32 0
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @ttm_bo_wait(%struct.TYPE_4__* %47, i32 1, i32 1, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %51 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %57 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %37, %34
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

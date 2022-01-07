; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_mmap_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_mmap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_mmap = type { i64, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_mmap_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_mmap*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_i915_gem_mmap*
  store %struct.drm_i915_gem_mmap* %12, %struct.drm_i915_gem_mmap** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %13, %struct.drm_file* %14, i32 %17)
  store %struct.drm_gem_object* %18, %struct.drm_gem_object** %9, align 8
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %20 = icmp eq %struct.drm_gem_object* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %72

24:                                               ; preds = %3
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %26 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %31 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %72

34:                                               ; preds = %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @down_write(i32* %38)
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %41 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %44 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PROT_READ, align 4
  %47 = load i32, i32* @PROT_WRITE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MAP_SHARED, align 4
  %50 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @do_mmap(i32 %42, i32 0, i32 %45, i32 %48, i32 %49, i32 %52)
  store i64 %53, i64* %10, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @up_write(i32* %57)
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %60 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %59)
  %61 = load i64, i64* %10, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %34
  %66 = load i64, i64* %10, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %72

68:                                               ; preds = %34
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %71 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %65, %29, %21
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @do_mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

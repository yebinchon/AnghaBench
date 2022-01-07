; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_gem_object = type { i64, i32, i32, i32, %struct.drm_device* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"drm mm object\00", align 1
@VM_NORESERVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_object_init(%struct.drm_device* %0, %struct.drm_gem_object* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = and i64 %8, %11
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 4
  store %struct.drm_device* %16, %struct.drm_device** %18, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @VM_NORESERVE, align 4
  %21 = call i32 @shmem_file_setup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %20)
  %22 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %23 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %31 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %3
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 2
  %37 = call i32 @kref_init(i32* %36)
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %39 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %38, i32 0, i32 1
  %40 = call i32 @atomic_set(i32* %39, i32 0)
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %43 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %34, %29
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @shmem_file_setup(i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

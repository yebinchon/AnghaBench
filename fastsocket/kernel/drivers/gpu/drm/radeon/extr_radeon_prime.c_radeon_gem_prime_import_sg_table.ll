; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_prime.c_radeon_gem_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_prime.c_radeon_gem_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.radeon_bo* }
%struct.radeon_bo = type { %struct.drm_gem_object, i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sg_table = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @radeon_gem_prime_import_sg_table(%struct.drm_device* %0, i64 %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_bo*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %8, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %18 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %19 = call i32 @radeon_bo_create(%struct.radeon_device* %14, i64 %15, i32 %16, i32 0, i32 %17, %struct.sg_table* %18, %struct.radeon_bo** %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.drm_gem_object* @ERR_PTR(i32 %23)
  store %struct.drm_gem_object* %24, %struct.drm_gem_object** %4, align 8
  br label %46

25:                                               ; preds = %3
  %26 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %27 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %28 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %28, i32 0, i32 0
  store %struct.radeon_bo* %26, %struct.radeon_bo** %29, align 8
  %30 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %35 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %34, i32 0, i32 1
  %36 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @list_add_tail(i32* %35, i32* %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %45 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %44, i32 0, i32 0
  store %struct.drm_gem_object* %45, %struct.drm_gem_object** %4, align 8
  br label %46

46:                                               ; preds = %25, %22
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %47
}

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i64, i32, i32, i32, %struct.sg_table*, %struct.radeon_bo**) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

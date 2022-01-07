; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_set_domain_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_set_domain_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_set_domain = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_set_domain_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_radeon_gem_set_domain*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.radeon_bo*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_radeon_gem_set_domain*
  store %struct.drm_radeon_gem_set_domain* %17, %struct.drm_radeon_gem_set_domain** %9, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = load %struct.drm_radeon_gem_set_domain*, %struct.drm_radeon_gem_set_domain** %9, align 8
  %24 = getelementptr inbounds %struct.drm_radeon_gem_set_domain, %struct.drm_radeon_gem_set_domain* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %21, %struct.drm_file* %22, i32 %25)
  store %struct.drm_gem_object* %26, %struct.drm_gem_object** %10, align 8
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %28 = icmp eq %struct.drm_gem_object* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = call i32 @up_read(i32* %31)
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %57

35:                                               ; preds = %3
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %37 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %36)
  store %struct.radeon_bo* %37, %struct.radeon_bo** %11, align 8
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %39 = load %struct.drm_radeon_gem_set_domain*, %struct.drm_radeon_gem_set_domain** %9, align 8
  %40 = getelementptr inbounds %struct.drm_radeon_gem_set_domain, %struct.drm_radeon_gem_set_domain* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_radeon_gem_set_domain*, %struct.drm_radeon_gem_set_domain** %9, align 8
  %43 = getelementptr inbounds %struct.drm_radeon_gem_set_domain, %struct.drm_radeon_gem_set_domain* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @radeon_gem_set_domain(%struct.drm_gem_object* %38, i32 %41, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %47 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = call i32 @up_read(i32* %49)
  %51 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %52 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @radeon_gem_handle_lockup(i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %35, %29
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_gem_set_domain(%struct.drm_gem_object*, i32, i32) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_gem_handle_lockup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

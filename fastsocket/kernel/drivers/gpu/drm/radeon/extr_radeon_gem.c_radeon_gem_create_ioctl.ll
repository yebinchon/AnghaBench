; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_create = type { i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_radeon_gem_create*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_radeon_gem_create*
  store %struct.drm_radeon_gem_create* %17, %struct.drm_radeon_gem_create** %9, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %22 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i32 @roundup(i32 %23, i32 %24)
  %26 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %27 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %29 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %30 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %33 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %36 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @radeon_gem_object_create(%struct.radeon_device* %28, i32 %31, i32 %34, i32 %37, i32 0, i32 0, %struct.drm_gem_object** %10)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %3
  %42 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 0
  %44 = call i32 @up_read(i32* %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @radeon_gem_handle_lockup(%struct.radeon_device* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %4, align 4
  br label %72

49:                                               ; preds = %3
  %50 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %52 = call i32 @drm_gem_handle_create(%struct.drm_file* %50, %struct.drm_gem_object* %51, i32* %11)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %54 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 0
  %60 = call i32 @up_read(i32* %59)
  %61 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @radeon_gem_handle_lockup(%struct.radeon_device* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %4, align 4
  br label %72

65:                                               ; preds = %49
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %68 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = call i32 @up_read(i32* %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %65, %57, %41
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @radeon_gem_object_create(%struct.radeon_device*, i32, i32, i32, i32, i32, %struct.drm_gem_object**) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @radeon_gem_handle_lockup(%struct.radeon_device*, i32) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

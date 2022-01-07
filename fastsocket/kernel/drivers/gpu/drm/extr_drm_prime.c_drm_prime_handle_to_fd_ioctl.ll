; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_prime_handle_to_fd_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_prime_handle_to_fd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*, %struct.drm_file*, i32, i32, i32*)* }
%struct.drm_file = type { i32 }
%struct.drm_prime_handle = type { i32, i32, i32 }

@DRIVER_PRIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@DRM_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_prime_handle_to_fd_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_prime_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_prime_handle*
  store %struct.drm_prime_handle* %11, %struct.drm_prime_handle** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = load i32, i32* @DRIVER_PRIME, align 4
  %14 = call i32 @drm_core_check_feature(%struct.drm_device* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.drm_device*, %struct.drm_file*, i32, i32, i32*)*, i32 (%struct.drm_device*, %struct.drm_file*, i32, i32, i32*)** %23, align 8
  %25 = icmp ne i32 (%struct.drm_device*, %struct.drm_file*, i32, i32, i32*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %60

29:                                               ; preds = %19
  %30 = load %struct.drm_prime_handle*, %struct.drm_prime_handle** %8, align 8
  %31 = getelementptr inbounds %struct.drm_prime_handle, %struct.drm_prime_handle* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DRM_CLOEXEC, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %60

40:                                               ; preds = %29
  %41 = load %struct.drm_prime_handle*, %struct.drm_prime_handle** %8, align 8
  %42 = getelementptr inbounds %struct.drm_prime_handle, %struct.drm_prime_handle* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DRM_CLOEXEC, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.drm_device*, %struct.drm_file*, i32, i32, i32*)*, i32 (%struct.drm_device*, %struct.drm_file*, i32, i32, i32*)** %49, align 8
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %53 = load %struct.drm_prime_handle*, %struct.drm_prime_handle** %8, align 8
  %54 = getelementptr inbounds %struct.drm_prime_handle, %struct.drm_prime_handle* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.drm_prime_handle*, %struct.drm_prime_handle** %8, align 8
  %58 = getelementptr inbounds %struct.drm_prime_handle, %struct.drm_prime_handle* %57, i32 0, i32 1
  %59 = call i32 %50(%struct.drm_device* %51, %struct.drm_file* %52, i32 %55, i32 %56, i32* %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %40, %37, %26, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

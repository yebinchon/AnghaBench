; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_stipple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_stipple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_file = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @radeon_cp_stipple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cp_stipple(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca [32 x i32], align 16
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %18 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %16, %struct.drm_file* %17)
  %19 = bitcast [32 x i32]* %10 to i32**
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @DRM_COPY_FROM_USER(i32** %19, i32 %22, i32 128)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EFAULT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @RING_SPACE_TEST_WITH_RETURN(i32* %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %33 = call i32 @radeon_cp_dispatch_stipple(%struct.drm_device* %31, i32* %32)
  %34 = call i32 (...) @COMMIT_RING()
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %28, %25
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i64 @DRM_COPY_FROM_USER(i32**, i32, i32) #1

declare dso_local i32 @RING_SPACE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @radeon_cp_dispatch_stipple(%struct.drm_device*, i32*) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ib_ring_tests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ib_ring_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"radeon: failed testing IB on GFX ring (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"radeon: failed testing IB on ring %d (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ib_ring_tests(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %48, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %7
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = load %struct.radeon_ring*, %struct.radeon_ring** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %14, i64 %16
  store %struct.radeon_ring* %17, %struct.radeon_ring** %6, align 8
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %19 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %48

23:                                               ; preds = %11
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %27 = call i32 @radeon_ib_test(%struct.radeon_device* %24, i32 %25, %struct.radeon_ring* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %32 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %52

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %23
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %7

51:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @radeon_ib_test(%struct.radeon_device*, i32, %struct.radeon_ring*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

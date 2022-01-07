; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_cp_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_cp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_6__, %struct.radeon_ring* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"radeon: cp failed to lock ring (%d).\0A\00", align 1
@PACKET3_ME_INITIALIZE = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@R_0086D8_CP_ME_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_cp_start(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 2
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %10
  store %struct.radeon_ring* %11, %struct.radeon_ring** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %14 = call i32 @radeon_ring_lock(%struct.radeon_device* %12, %struct.radeon_ring* %13, i32 7)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %69

21:                                               ; preds = %1
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %23 = load i32, i32* @PACKET3_ME_INITIALIZE, align 4
  %24 = call i32 @PACKET3(i32 %23, i32 5)
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %22, i32 %24)
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %27 = call i32 @radeon_ring_write(%struct.radeon_ring* %26, i32 1)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CHIP_RV770, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %21
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %34, i32 0)
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %36, i32 %42)
  br label %55

44:                                               ; preds = %21
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %46 = call i32 @radeon_ring_write(%struct.radeon_ring* %45, i32 3)
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %47, i32 %53)
  br label %55

55:                                               ; preds = %44, %33
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %57 = call i32 @PACKET3_ME_INITIALIZE_DEVICE_ID(i32 1)
  %58 = call i32 @radeon_ring_write(%struct.radeon_ring* %56, i32 %57)
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %59, i32 0)
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 0)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %65 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %63, %struct.radeon_ring* %64)
  store i32 255, i32* %6, align 4
  %66 = load i32, i32* @R_0086D8_CP_ME_CNTL, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %55, %17
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_ME_INITIALIZE_DEVICE_ID(i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

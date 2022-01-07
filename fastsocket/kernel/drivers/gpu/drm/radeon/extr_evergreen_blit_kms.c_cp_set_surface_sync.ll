; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_cp_set_surface_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_cp_set_surface_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@PACKET3_SURFACE_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32)* @cp_set_surface_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_set_surface_sync(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_ring*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %14 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %15 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %13, i64 %14
  store %struct.radeon_ring* %15, %struct.radeon_ring** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %10, align 4
  br label %23

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 255
  %22 = ashr i32 %21, 8
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_CAYMAN, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %31 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %32 = call i32 @PACKET3(i32 %31, i32 1)
  %33 = call i32 @radeon_ring_write(%struct.radeon_ring* %30, i32 %32)
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %35 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %36 = sub nsw i32 34280, %35
  %37 = ashr i32 %36, 2
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %34, i32 %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %40 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 0)
  br label %41

41:                                               ; preds = %29, %23
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %43 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %44 = call i32 @PACKET3(i32 %43, i32 3)
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %44)
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 %47)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 %50)
  %52 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 8
  %55 = call i32 @radeon_ring_write(%struct.radeon_ring* %52, i32 %54)
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %57 = call i32 @radeon_ring_write(%struct.radeon_ring* %56, i32 10)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

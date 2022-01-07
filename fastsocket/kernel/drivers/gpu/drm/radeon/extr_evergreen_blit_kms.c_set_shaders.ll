; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_shaders.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_shaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, %struct.radeon_ring* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@SQ_PGM_START_VS = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@SQ_PGM_START_PS = common dso_local global i32 0, align 4
@PACKET3_SH_ACTION_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @set_shaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_shaders(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.radeon_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 1
  %7 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %8 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %9 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %7, i64 %8
  store %struct.radeon_ring* %9, %struct.radeon_ring** %3, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %13, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %20 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %21 = call i32 @PACKET3(i32 %20, i32 3)
  %22 = call i32 @radeon_ring_write(%struct.radeon_ring* %19, i32 %21)
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %24 = load i32, i32* @SQ_PGM_START_VS, align 4
  %25 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %26 = sub nsw i32 %24, %25
  %27 = ashr i32 %26, 2
  %28 = call i32 @radeon_ring_write(%struct.radeon_ring* %23, i32 %27)
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 8
  %32 = call i32 @radeon_ring_write(%struct.radeon_ring* %29, i32 %31)
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %34 = call i32 @radeon_ring_write(%struct.radeon_ring* %33, i32 2)
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %36 = call i32 @radeon_ring_write(%struct.radeon_ring* %35, i32 0)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %4, align 4
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %47 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %48 = call i32 @PACKET3(i32 %47, i32 4)
  %49 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 %48)
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %51 = load i32, i32* @SQ_PGM_START_PS, align 4
  %52 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %53 = sub nsw i32 %51, %52
  %54 = ashr i32 %53, 2
  %55 = call i32 @radeon_ring_write(%struct.radeon_ring* %50, i32 %54)
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 8
  %59 = call i32 @radeon_ring_write(%struct.radeon_ring* %56, i32 %58)
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %61 = call i32 @radeon_ring_write(%struct.radeon_ring* %60, i32 1)
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %63 = call i32 @radeon_ring_write(%struct.radeon_ring* %62, i32 0)
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %65 = call i32 @radeon_ring_write(%struct.radeon_ring* %64, i32 2)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %69, %73
  store i32 %74, i32* %4, align 4
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = load i32, i32* @PACKET3_SH_ACTION_ENA, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @cp_set_surface_sync(%struct.radeon_device* %75, i32 %76, i32 512, i32 %77)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @cp_set_surface_sync(%struct.radeon_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

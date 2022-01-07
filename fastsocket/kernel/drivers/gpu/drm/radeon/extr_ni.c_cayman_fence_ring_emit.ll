; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_fence_ring_emit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_fence_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__*, %struct.radeon_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i64, i32 }

@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@CP_COHER_CNTL2 = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@PACKET3_SURFACE_SYNC = common dso_local global i32 0, align 4
@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_EVENT_WRITE_EOP = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_EVENT_TS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_fence_ring_emit(%struct.radeon_device* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %12
  store %struct.radeon_ring* %13, %struct.radeon_ring** %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %24 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %25 = call i32 @PACKET3(i32 %24, i32 1)
  %26 = call i32 @radeon_ring_write(%struct.radeon_ring* %23, i32 %25)
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %28 = load i32, i32* @CP_COHER_CNTL2, align 4
  %29 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %30 = sub nsw i32 %28, %29
  %31 = ashr i32 %30, 2
  %32 = call i32 @radeon_ring_write(%struct.radeon_ring* %27, i32 %31)
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %34 = call i32 @radeon_ring_write(%struct.radeon_ring* %33, i32 0)
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %36 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %37 = call i32 @PACKET3(i32 %36, i32 3)
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %35, i32 %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %41 = load i32, i32* @PACKET3_SH_ACTION_ENA, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 %42)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 -1)
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %47 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 0)
  %48 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %49 = call i32 @radeon_ring_write(%struct.radeon_ring* %48, i32 10)
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %51 = load i32, i32* @PACKET3_EVENT_WRITE_EOP, align 4
  %52 = call i32 @PACKET3(i32 %51, i32 4)
  %53 = call i32 @radeon_ring_write(%struct.radeon_ring* %50, i32 %52)
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %55 = load i32, i32* @CACHE_FLUSH_AND_INV_EVENT_TS, align 4
  %56 = call i32 @EVENT_TYPE(i32 %55)
  %57 = call i32 @EVENT_INDEX(i32 5)
  %58 = or i32 %56, %57
  %59 = call i32 @radeon_ring_write(%struct.radeon_ring* %54, i32 %58)
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %60, i32 %61)
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @upper_32_bits(i32 %64)
  %66 = and i32 %65, 255
  %67 = call i32 @DATA_SEL(i32 1)
  %68 = or i32 %66, %67
  %69 = call i32 @INT_SEL(i32 2)
  %70 = or i32 %68, %69
  %71 = call i32 @radeon_ring_write(%struct.radeon_ring* %63, i32 %70)
  %72 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %73 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %74 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @radeon_ring_write(%struct.radeon_ring* %72, i32 %75)
  %77 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %78 = call i32 @radeon_ring_write(%struct.radeon_ring* %77, i32 0)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @EVENT_TYPE(i32) #1

declare dso_local i32 @EVENT_INDEX(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @DATA_SEL(i32) #1

declare dso_local i32 @INT_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_cp_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_cp_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_cp_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_cp_fini(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call i32 @si_cp_enable(%struct.radeon_device* %4, i32 0)
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %9 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %10 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i64 %9
  store %struct.radeon_ring* %10, %struct.radeon_ring** %3, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %13 = call i32 @radeon_ring_fini(%struct.radeon_device* %11, %struct.radeon_ring* %12)
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @radeon_scratch_free(%struct.radeon_device* %14, i32 %17)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = load %struct.radeon_ring*, %struct.radeon_ring** %20, align 8
  %22 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %23 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %21, i64 %22
  store %struct.radeon_ring* %23, %struct.radeon_ring** %3, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %26 = call i32 @radeon_ring_fini(%struct.radeon_device* %24, %struct.radeon_ring* %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @radeon_scratch_free(%struct.radeon_device* %27, i32 %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %33, align 8
  %35 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %36 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %34, i64 %35
  store %struct.radeon_ring* %36, %struct.radeon_ring** %3, align 8
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %39 = call i32 @radeon_ring_fini(%struct.radeon_device* %37, %struct.radeon_ring* %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @radeon_scratch_free(%struct.radeon_device* %40, i32 %43)
  ret void
}

declare dso_local i32 @si_cp_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_ring_fini(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_scratch_free(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

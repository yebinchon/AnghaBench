; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_ring_commit(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  br label %5

5:                                                ; preds = %14, %2
  %6 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %7 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %16 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @radeon_ring_write(%struct.radeon_ring* %15, i32 %18)
  br label %5

20:                                               ; preds = %5
  %21 = call i32 (...) @DRM_MEMORYBARRIER()
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = call i32 @WREG32(i32 %24, i32 %35)
  %37 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %38 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @RREG32(i32 %39)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_MEMORYBARRIER(...) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

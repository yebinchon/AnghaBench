; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_force_activity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_force_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_ring_force_activity(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %8 = call i32 @radeon_ring_free_size(%struct.radeon_device* %6, %struct.radeon_ring* %7)
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %19 = call i32 @radeon_ring_alloc(%struct.radeon_device* %17, %struct.radeon_ring* %18, i32 1)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %24 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @radeon_ring_write(%struct.radeon_ring* %23, i32 %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %30 = call i32 @radeon_ring_commit(%struct.radeon_device* %28, %struct.radeon_ring* %29)
  br label %31

31:                                               ; preds = %22, %16
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @radeon_ring_free_size(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_alloc(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_ring_commit(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

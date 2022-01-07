; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ib_sync_to.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ib_sync_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_ib = type { %struct.radeon_fence** }
%struct.radeon_fence = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_ib_sync_to(%struct.radeon_ib* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca %struct.radeon_ib*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_ib* %0, %struct.radeon_ib** %3, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %4, align 8
  %6 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %7 = icmp ne %struct.radeon_fence* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %28

9:                                                ; preds = %2
  %10 = load %struct.radeon_ib*, %struct.radeon_ib** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %12 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %13 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %12, i64 %15
  %17 = load %struct.radeon_fence*, %struct.radeon_fence** %16, align 8
  store %struct.radeon_fence* %17, %struct.radeon_fence** %5, align 8
  %18 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %19 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  %20 = call %struct.radeon_fence* @radeon_fence_later(%struct.radeon_fence* %18, %struct.radeon_fence* %19)
  %21 = load %struct.radeon_ib*, %struct.radeon_ib** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %21, i32 0, i32 0
  %23 = load %struct.radeon_fence**, %struct.radeon_fence*** %22, align 8
  %24 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %23, i64 %26
  store %struct.radeon_fence* %20, %struct.radeon_fence** %27, align 8
  br label %28

28:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.radeon_fence* @radeon_fence_later(%struct.radeon_fence*, %struct.radeon_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

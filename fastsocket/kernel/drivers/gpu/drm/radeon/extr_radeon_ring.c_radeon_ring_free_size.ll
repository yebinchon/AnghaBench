; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_free_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_free_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.radeon_ring = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_ring_free_size(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @RREG32(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %11
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %34, %37
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %42 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %45 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 4
  %48 = add nsw i32 %43, %47
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %52 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %61 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %64 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %68 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %29
  %72 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %73 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 4
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %77 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %71, %29
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

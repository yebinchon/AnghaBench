; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ring_alloc(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 4
  %14 = icmp ugt i32 %9, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %81

18:                                               ; preds = %3
  %19 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %21 = call i32 @radeon_ring_free_size(%struct.radeon_device* %19, %struct.radeon_ring* %20)
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %23 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %26 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 4
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %32 = call i32 @radeon_ring_lockup_update(%struct.radeon_ring* %31)
  br label %33

33:                                               ; preds = %30, %18
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %34, %37
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %40 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %71, %33
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp ugt i32 %45, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %44
  %52 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %54 = call i32 @radeon_ring_free_size(%struct.radeon_device* %52, %struct.radeon_ring* %53)
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %57 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %72

61:                                               ; preds = %51
  %62 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %64 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @radeon_fence_wait_next_locked(%struct.radeon_device* %62, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %81

71:                                               ; preds = %61
  br label %44

72:                                               ; preds = %60, %44
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %75 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %80 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %72, %69, %15
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @radeon_ring_free_size(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_lockup_update(%struct.radeon_ring*) #1

declare dso_local i32 @radeon_fence_wait_next_locked(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

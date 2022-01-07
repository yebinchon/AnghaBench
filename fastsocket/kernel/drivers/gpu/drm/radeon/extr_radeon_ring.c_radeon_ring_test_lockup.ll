; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_test_lockup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_test_lockup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32, i32, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@radeon_lockup_timeout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"GPU lockup CP stall for more than %lumsec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ring_test_lockup(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %12 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @time_after(i64 %10, i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %18 = call i32 @radeon_ring_lockup_update(%struct.radeon_ring* %17)
  store i32 0, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %28, %31
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %36 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %39 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %19
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %44 = call i32 @radeon_ring_lockup_update(%struct.radeon_ring* %43)
  store i32 0, i32* %3, align 4
  br label %65

45:                                               ; preds = %19
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %48 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %46, %49
  %51 = call i64 @jiffies_to_msecs(i64 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* @radeon_lockup_timeout, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @radeon_lockup_timeout, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %62)
  store i32 1, i32* %3, align 4
  br label %65

64:                                               ; preds = %54, %45
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %58, %42, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @radeon_ring_lockup_update(%struct.radeon_ring*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

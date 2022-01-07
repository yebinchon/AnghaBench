; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_wait_pll_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_wait_pll_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@RADEON_TEST_DEBUG_MUX = common dso_local global i32 0, align 4
@RADEON_PLL_TEST_CNTL = common dso_local global i32 0, align 4
@RADEON_PLL_MASK_READ_B = common dso_local global i32 0, align 4
@RADEON_CLOCK_CNTL_INDEX = common dso_local global i64 0, align 8
@RADEON_CLOCK_CNTL_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32, i32, i32)* @radeon_wait_pll_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_wait_pll_lock(%struct.drm_encoder* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.radeon_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %10, align 8
  %20 = load i32, i32* @RADEON_TEST_DEBUG_MUX, align 4
  %21 = load i32, i32* @RADEON_TEST_DEBUG_MUX, align 4
  %22 = call i32 @RREG32(i32 %21)
  %23 = and i32 %22, -40705
  %24 = or i32 %23, 256
  %25 = call i32 @WREG32(i32 %20, i32 %24)
  %26 = load i32, i32* @RADEON_PLL_TEST_CNTL, align 4
  %27 = call i32 @RREG32_PLL(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @RADEON_PLL_TEST_CNTL, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @RADEON_PLL_MASK_READ_B, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i32 @WREG32_PLL(i32 %28, i32 %32)
  %34 = load i64, i64* @RADEON_CLOCK_CNTL_INDEX, align 8
  %35 = load i32, i32* @RADEON_PLL_TEST_CNTL, align 4
  %36 = call i32 @WREG8(i64 %34, i32 %35)
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %61, %4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load i64, i64* @RADEON_CLOCK_CNTL_DATA, align 8
  %43 = add nsw i64 %42, 3
  %44 = call i32 @WREG8(i64 %43, i32 0)
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %57, %41
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i64, i64* @RADEON_CLOCK_CNTL_DATA, align 8
  %51 = add nsw i64 %50, 3
  %52 = call i32 @RREG8(i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %60

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %13, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %45

60:                                               ; preds = %55, %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %37

64:                                               ; preds = %37
  %65 = load i32, i32* @RADEON_PLL_TEST_CNTL, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @WREG32_PLL(i32 %65, i32 %66)
  %68 = load i32, i32* @RADEON_TEST_DEBUG_MUX, align 4
  %69 = load i32, i32* @RADEON_TEST_DEBUG_MUX, align 4
  %70 = call i32 @RREG32(i32 %69)
  %71 = and i32 %70, -7937
  %72 = call i32 @WREG32(i32 %68, i32 %71)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @RREG32_PLL(i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

declare dso_local i32 @WREG8(i64, i32) #1

declare dso_local i32 @RREG8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

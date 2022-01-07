; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_clocks.c_radeon_legacy_get_memory_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_clocks.c_radeon_legacy_get_memory_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.radeon_pll }
%struct.radeon_pll = type { i32 }

@RADEON_M_SPLL_REF_FB_DIV = common dso_local global i32 0, align 4
@RADEON_MPLL_FB_DIV_SHIFT = common dso_local global i32 0, align 4
@RADEON_MPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@RADEON_M_SPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@RADEON_MCLK_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_legacy_get_memory_clock(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_pll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.radeon_pll* %11, %struct.radeon_pll** %4, align 8
  %12 = load i32, i32* @RADEON_M_SPLL_REF_FB_DIV, align 4
  %13 = call i32 @RREG32_PLL(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RADEON_MPLL_FB_DIV_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32, i32* @RADEON_MPLL_FB_DIV_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @RADEON_M_SPLL_REF_FB_DIV, align 4
  %27 = call i32 @RREG32_PLL(i32 %26)
  %28 = load i32, i32* @RADEON_M_SPLL_REF_DIV_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @RADEON_MCLK_CNTL, align 4
  %38 = call i32 @RREG32_PLL(i32 %37)
  %39 = and i32 %38, 7
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %59

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 2
  store i32 %50, i32* %8, align 4
  br label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 3
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %32
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @RREG32_PLL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

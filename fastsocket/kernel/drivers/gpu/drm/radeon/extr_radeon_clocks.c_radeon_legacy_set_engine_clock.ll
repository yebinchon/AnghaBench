; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_clocks.c_radeon_legacy_set_engine_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_clocks.c_radeon_legacy_set_engine_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_CLK_PIN_CNTL = common dso_local global i32 0, align 4
@RADEON_DONT_USE_XTALIN = common dso_local global i32 0, align 4
@RADEON_SCLK_CNTL = common dso_local global i32 0, align 4
@RADEON_SCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@RADEON_SPLL_CNTL = common dso_local global i32 0, align 4
@RADEON_SPLL_SLEEP = common dso_local global i32 0, align 4
@RADEON_SPLL_RESET = common dso_local global i32 0, align 4
@RADEON_M_SPLL_REF_FB_DIV = common dso_local global i32 0, align 4
@RADEON_SPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@RADEON_SPLL_FB_DIV_SHIFT = common dso_local global i32 0, align 4
@RADEON_SPLL_PVG_MASK = common dso_local global i32 0, align 4
@RADEON_SPLL_PVG_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_legacy_set_engine_clock(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @calc_eng_mem_clock(%struct.radeon_device* %8, i32 %9, i32* %6, i32* %7)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @RADEON_CLK_PIN_CNTL, align 4
  %12 = call i32 @RREG32_PLL(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @RADEON_DONT_USE_XTALIN, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @RADEON_CLK_PIN_CNTL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @WREG32_PLL(i32 %17, i32 %18)
  %20 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %21 = call i32 @RREG32_PLL(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @RADEON_SCLK_SRC_SEL_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @WREG32_PLL(i32 %26, i32 %27)
  %29 = call i32 @udelay(i32 10)
  %30 = load i32, i32* @RADEON_SPLL_CNTL, align 4
  %31 = call i32 @RREG32_PLL(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @RADEON_SPLL_SLEEP, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @RADEON_SPLL_CNTL, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @WREG32_PLL(i32 %35, i32 %36)
  %38 = call i32 @udelay(i32 2)
  %39 = load i32, i32* @RADEON_SPLL_CNTL, align 4
  %40 = call i32 @RREG32_PLL(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @RADEON_SPLL_RESET, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @RADEON_SPLL_CNTL, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @WREG32_PLL(i32 %44, i32 %45)
  %47 = call i32 @udelay(i32 200)
  %48 = load i32, i32* @RADEON_M_SPLL_REF_FB_DIV, align 4
  %49 = call i32 @RREG32_PLL(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @RADEON_SPLL_FB_DIV_MASK, align 4
  %51 = load i32, i32* @RADEON_SPLL_FB_DIV_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @RADEON_SPLL_FB_DIV_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @RADEON_SPLL_FB_DIV_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @RADEON_M_SPLL_REF_FB_DIV, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @WREG32_PLL(i32 %63, i32 %64)
  %66 = load i32, i32* @RADEON_SPLL_CNTL, align 4
  %67 = call i32 @RREG32_PLL(i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @RADEON_SPLL_PVG_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %72, %73
  %75 = icmp sge i32 %74, 90000
  br i1 %75, label %76, label %81

76:                                               ; preds = %2
  %77 = load i32, i32* @RADEON_SPLL_PVG_SHIFT, align 4
  %78 = shl i32 7, %77
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %86

81:                                               ; preds = %2
  %82 = load i32, i32* @RADEON_SPLL_PVG_SHIFT, align 4
  %83 = shl i32 4, %82
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* @RADEON_SPLL_CNTL, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @WREG32_PLL(i32 %87, i32 %88)
  %90 = load i32, i32* @RADEON_SPLL_CNTL, align 4
  %91 = call i32 @RREG32_PLL(i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @RADEON_SPLL_SLEEP, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @RADEON_SPLL_CNTL, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @WREG32_PLL(i32 %96, i32 %97)
  %99 = call i32 @udelay(i32 2)
  %100 = load i32, i32* @RADEON_SPLL_CNTL, align 4
  %101 = call i32 @RREG32_PLL(i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* @RADEON_SPLL_RESET, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* @RADEON_SPLL_CNTL, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @WREG32_PLL(i32 %106, i32 %107)
  %109 = call i32 @udelay(i32 200)
  %110 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %111 = call i32 @RREG32_PLL(i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @RADEON_SCLK_SRC_SEL_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %7, align 4
  switch i32 %116, label %118 [
    i32 1, label %117
    i32 2, label %121
    i32 4, label %124
    i32 8, label %127
  ]

117:                                              ; preds = %86
  br label %118

118:                                              ; preds = %86, %117
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %130

121:                                              ; preds = %86
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, 2
  store i32 %123, i32* %5, align 4
  br label %130

124:                                              ; preds = %86
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, 3
  store i32 %126, i32* %5, align 4
  br label %130

127:                                              ; preds = %86
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %127, %124, %121, %118
  %131 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @WREG32_PLL(i32 %131, i32 %132)
  %134 = call i32 @udelay(i32 20)
  %135 = load i32, i32* @RADEON_CLK_PIN_CNTL, align 4
  %136 = call i32 @RREG32_PLL(i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* @RADEON_DONT_USE_XTALIN, align 4
  %138 = load i32, i32* %5, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* @RADEON_CLK_PIN_CNTL, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @WREG32_PLL(i32 %140, i32 %141)
  %143 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @calc_eng_mem_clock(%struct.radeon_device*, i32, i32*, i32*) #1

declare dso_local i32 @RREG32_PLL(i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

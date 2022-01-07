; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_adjust_pll2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_adjust_pll2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { i32 }
%struct.radeon_tv_mode_constants = type { i32, i32, i32, i32 }

@RADEON_PIX2CLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@RADEON_PIX2CLK_SRC_SEL_P2PLLCLK = common dso_local global i32 0, align 4
@RADEON_PIXCLK_TV_SRC_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_legacy_tv_adjust_pll2(%struct.drm_encoder* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.radeon_encoder*, align 8
  %12 = alloca %struct.radeon_tv_mode_constants*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %14 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %13)
  store %struct.radeon_encoder* %14, %struct.radeon_encoder** %11, align 8
  %15 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %16 = call %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder* %15, i32* null)
  store %struct.radeon_tv_mode_constants* %16, %struct.radeon_tv_mode_constants** %12, align 8
  %17 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %18 = icmp ne %struct.radeon_tv_mode_constants* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %52

20:                                               ; preds = %5
  %21 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %22 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 7
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %27 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %31 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 2047
  %34 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %35 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_post_div(i32 %36)
  %38 = shl i32 %37, 16
  %39 = or i32 %33, %38
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @RADEON_PIX2CLK_SRC_SEL_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @RADEON_PIX2CLK_SRC_SEL_P2PLLCLK, align 4
  %47 = load i32, i32* @RADEON_PIXCLK_TV_SRC_SEL, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder*, i32*) #1

declare dso_local i32 @get_post_div(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

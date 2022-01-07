; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_avivo_get_fb_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_avivo_get_fb_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_pll = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_pll*, i32, i32, i32, i32*, i32*)* @avivo_get_fb_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avivo_get_fb_div(%struct.radeon_pll* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.radeon_pll*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.radeon_pll* %0, %struct.radeon_pll** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %13, align 4
  %19 = mul nsw i32 %18, %17
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.radeon_pll*, %struct.radeon_pll** %7, align 8
  %22 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %20, %23
  %25 = load i32*, i32** %11, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.radeon_pll*, %struct.radeon_pll** %7, align 8
  %28 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %26, %29
  %31 = load i32*, i32** %12, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.radeon_pll*, %struct.radeon_pll** %7, align 8
  %35 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %6
  %39 = load %struct.radeon_pll*, %struct.radeon_pll** %7, align 8
  %40 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %56

43:                                               ; preds = %6
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.radeon_pll*, %struct.radeon_pll** %7, align 8
  %47 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.radeon_pll*, %struct.radeon_pll** %7, align 8
  %52 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %43
  br label %56

56:                                               ; preds = %55, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_avivo_get_post_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_avivo_get_post_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_pll = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@RADEON_PLL_USE_POST_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_MINM_OVER_MAXP = common dso_local global i32 0, align 4
@RADEON_PLL_IS_LCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_pll*, i32)* @avivo_get_post_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avivo_get_post_div(%struct.radeon_pll* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_pll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_pll* %0, %struct.radeon_pll** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RADEON_PLL_USE_POST_DIV, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %108

19:                                               ; preds = %2
  %20 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RADEON_PLL_PREFER_MINM_OVER_MAXP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RADEON_PLL_IS_LCD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %39 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %58

42:                                               ; preds = %19
  %43 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %44 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RADEON_PLL_IS_LCD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %51 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %57

53:                                               ; preds = %42
  %54 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = srem i32 %62, %63
  store i32 %64, i32* %8, align 4
  %65 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RADEON_PLL_PREFER_MINM_OVER_MAXP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %85

78:                                               ; preds = %58
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %77
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %88 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %93 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %7, align 4
  br label %106

95:                                               ; preds = %85
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %98 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.radeon_pll*, %struct.radeon_pll** %4, align 8
  %103 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %95
  br label %106

106:                                              ; preds = %105, %91
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

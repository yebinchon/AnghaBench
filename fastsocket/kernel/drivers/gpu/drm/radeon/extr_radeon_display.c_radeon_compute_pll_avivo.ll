; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_compute_pll_avivo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_compute_pll_avivo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_pll = type { i32, i32, i32, i32, i32 }

@RADEON_PLL_USE_REF_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_USE_FRAC_FB_DIV = common dso_local global i32 0, align 4
@MAX_TOLERANCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%d, pll dividers - fb: %d.%d ref: %d, post %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_compute_pll_avivo(%struct.radeon_pll* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.radeon_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.radeon_pll* %0, %struct.radeon_pll** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sdiv i32 %21, 10
  store i32 %22, i32* %15, align 4
  %23 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @avivo_get_post_div(%struct.radeon_pll* %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %27 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %29 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %30 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RADEON_PLL_USE_REF_DIV, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %7
  %36 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %37 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %17, align 4
  br label %39

39:                                               ; preds = %35, %7
  %40 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %41 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %39
  %47 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @avivo_get_fb_div(%struct.radeon_pll* %47, i32 %48, i32 %49, i32 %50, i32* %18, i32* %19)
  %52 = load i32, i32* %19, align 4
  %53 = mul nsw i32 100, %52
  %54 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %55 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %53, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp sge i32 %58, 5
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load i32, i32* %19, align 4
  %62 = sub nsw i32 %61, 5
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = sdiv i32 %63, 10
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %19, align 4
  br label %67

67:                                               ; preds = %60, %46
  %68 = load i32, i32* %19, align 4
  %69 = icmp sge i32 %68, 10
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %129

74:                                               ; preds = %39
  br label %75

75:                                               ; preds = %127, %74
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %78 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp sle i32 %76, %79
  br i1 %80, label %81, label %128

81:                                               ; preds = %75
  %82 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @avivo_get_fb_div(%struct.radeon_pll* %82, i32 %83, i32 %84, i32 %85, i32* %18, i32* %19)
  %87 = load i32, i32* %19, align 4
  %88 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %89 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %90, 2
  %92 = icmp sge i32 %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %93, %81
  store i32 0, i32* %19, align 4
  %97 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %98 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %18, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %17, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sdiv i32 %101, %104
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = mul nsw i32 %106, 10000
  %108 = load i32, i32* %15, align 4
  %109 = sdiv i32 %107, %108
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* @MAX_TOLERANCE, align 4
  %112 = add nsw i32 10000, %111
  %113 = icmp sgt i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %96
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %127

117:                                              ; preds = %96
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* @MAX_TOLERANCE, align 4
  %120 = sub nsw i32 10000, %119
  %121 = icmp sge i32 %118, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %128

123:                                              ; preds = %117
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %126, %114
  br label %75

128:                                              ; preds = %122, %75
  br label %129

129:                                              ; preds = %128, %73
  %130 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %131 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %18, align 4
  %134 = mul nsw i32 %132, %133
  %135 = mul nsw i32 %134, 10
  %136 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %137 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %19, align 4
  %140 = mul nsw i32 %138, %139
  %141 = add nsw i32 %135, %140
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %16, align 4
  %144 = mul nsw i32 %142, %143
  %145 = mul nsw i32 %144, 10
  %146 = sdiv i32 %141, %145
  %147 = load i32*, i32** %10, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32*, i32** %11, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load i32*, i32** %12, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i32*, i32** %13, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* %16, align 4
  %155 = load i32*, i32** %14, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  ret void
}

declare dso_local i32 @avivo_get_post_div(%struct.radeon_pll*, i32) #1

declare dso_local i32 @avivo_get_fb_div(%struct.radeon_pll*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

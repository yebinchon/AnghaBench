; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_set_surface_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_set_surface_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_RS200 = common dso_local global i64 0, align 8
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@RADEON_SURF_TILE_COLOR_BOTH = common dso_local global i32 0, align 4
@RADEON_SURF_TILE_COLOR_MACRO = common dso_local global i32 0, align 4
@CHIP_RV280 = common dso_local global i64 0, align 8
@R200_SURF_TILE_COLOR_MACRO = common dso_local global i32 0, align 4
@R200_SURF_TILE_COLOR_MICRO = common dso_local global i32 0, align 4
@R300_SURF_TILE_MACRO = common dso_local global i32 0, align 4
@R300_SURF_TILE_MICRO = common dso_local global i32 0, align 4
@RADEON_TILING_SWAP_16BIT = common dso_local global i32 0, align 4
@RADEON_SURF_AP0_SWP_16BPP = common dso_local global i32 0, align 4
@RADEON_SURF_AP1_SWP_16BPP = common dso_local global i32 0, align 4
@RADEON_TILING_SWAP_32BIT = common dso_local global i32 0, align 4
@RADEON_SURF_AP0_SWP_32BPP = common dso_local global i32 0, align 4
@RADEON_SURF_AP1_SWP_32BPP = common dso_local global i32 0, align 4
@CHIP_R300 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"writing surface %d %d %x %x\0A\00", align 1
@RADEON_SURFACE0_INFO = common dso_local global i64 0, align 8
@RADEON_SURFACE0_LOWER_BOUND = common dso_local global i64 0, align 8
@RADEON_SURFACE0_UPPER_BOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_set_surface_reg(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 %15, 16
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHIP_RS200, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %25 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %29 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @RADEON_SURF_TILE_COLOR_BOTH, align 4
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %32, %22
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @RADEON_SURF_TILE_COLOR_MACRO, align 4
  %43 = load i32, i32* %14, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %91

46:                                               ; preds = %6
  %47 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CHIP_RV280, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @R200_SURF_TILE_COLOR_MACRO, align 4
  %59 = load i32, i32* %14, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @R200_SURF_TILE_COLOR_MICRO, align 4
  %68 = load i32, i32* %14, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %66, %61
  br label %90

71:                                               ; preds = %46
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @R300_SURF_TILE_MACRO, align 4
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @R300_SURF_TILE_MICRO, align 4
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %85, %80
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %90, %45
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @RADEON_TILING_SWAP_16BIT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* @RADEON_SURF_AP0_SWP_16BPP, align 4
  %98 = load i32, i32* @RADEON_SURF_AP1_SWP_16BPP, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @RADEON_TILING_SWAP_32BIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @RADEON_SURF_AP0_SWP_32BPP, align 4
  %109 = load i32, i32* @RADEON_SURF_AP1_SWP_32BPP, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @RADEON_TILING_SWAP_16BIT, align 4
  %116 = load i32, i32* @RADEON_TILING_SWAP_32BIT, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %123 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %120
  %128 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %129 = call i64 @ASIC_IS_RN50(%struct.radeon_device* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = sdiv i32 %132, 16
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %120
  br label %136

136:                                              ; preds = %135, %113
  %137 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CHIP_R300, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i32, i32* %10, align 4
  %144 = sdiv i32 %143, 16
  %145 = load i32, i32* %14, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %14, align 4
  br label %152

147:                                              ; preds = %136
  %148 = load i32, i32* %10, align 4
  %149 = sdiv i32 %148, 8
  %150 = load i32, i32* %14, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %147, %142
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %156, %157
  %159 = sub nsw i32 %158, 1
  %160 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %153, i32 %154, i32 %155, i32 %159)
  %161 = load i64, i64* @RADEON_SURFACE0_INFO, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @WREG32(i64 %164, i32 %165)
  %167 = load i64, i64* @RADEON_SURFACE0_LOWER_BOUND, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @WREG32(i64 %170, i32 %171)
  %173 = load i64, i64* @RADEON_SURFACE0_UPPER_BOUND, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %173, %175
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %177, %178
  %180 = sub nsw i32 %179, 1
  %181 = call i32 @WREG32(i64 %176, i32 %180)
  ret i32 0
}

declare dso_local i64 @ASIC_IS_RN50(%struct.radeon_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

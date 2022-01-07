; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_setup_rb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_setup_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@TAHITI_RB_BITMAP_WIDTH_PER_SH = common dso_local global i32 0, align 4
@RASTER_CONFIG_RB_MAP_0 = common dso_local global i32 0, align 4
@RASTER_CONFIG_RB_MAP_3 = common dso_local global i32 0, align 4
@RASTER_CONFIG_RB_MAP_2 = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32)* @si_setup_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_setup_rb(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %49, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %45, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @si_select_se_sh(%struct.radeon_device* %25, i32 %26, i32 %27)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @si_get_rb_disabled(%struct.radeon_device* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* @TAHITI_RB_BITMAP_WIDTH_PER_SH, align 4
  %41 = mul nsw i32 %39, %40
  %42 = shl i32 %34, %41
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %24
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %20

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %15

52:                                               ; preds = %15
  %53 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %54 = call i32 @si_select_se_sh(%struct.radeon_device* %53, i32 -1, i32 -1)
  store i32 1, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %71, %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %12, align 4
  %70 = shl i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %55

74:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %134, %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %137

79:                                               ; preds = %75
  %80 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @si_select_se_sh(%struct.radeon_device* %80, i32 %81, i32 -1)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %127, %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %130

87:                                               ; preds = %83
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %88, 3
  switch i32 %89, label %113 [
    i32 1, label %90
    i32 2, label %101
    i32 3, label %112
  ]

90:                                               ; preds = %87
  %91 = load i32, i32* @RASTER_CONFIG_RB_MAP_0, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %94, %95
  %97 = mul nsw i32 %96, 2
  %98 = shl i32 %91, %97
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %124

101:                                              ; preds = %87
  %102 = load i32, i32* @RASTER_CONFIG_RB_MAP_3, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %105, %106
  %108 = mul nsw i32 %107, 2
  %109 = shl i32 %102, %108
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  br label %124

112:                                              ; preds = %87
  br label %113

113:                                              ; preds = %87, %112
  %114 = load i32, i32* @RASTER_CONFIG_RB_MAP_2, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %117, %118
  %120 = mul nsw i32 %119, 2
  %121 = shl i32 %114, %120
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %113, %101, %90
  %125 = load i32, i32* %14, align 4
  %126 = ashr i32 %125, 2
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %83

130:                                              ; preds = %83
  %131 = load i32, i32* @PA_SC_RASTER_CONFIG, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @WREG32(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %75

137:                                              ; preds = %75
  %138 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %139 = call i32 @si_select_se_sh(%struct.radeon_device* %138, i32 -1, i32 -1)
  ret void
}

declare dso_local i32 @si_select_se_sh(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @si_get_rb_disabled(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

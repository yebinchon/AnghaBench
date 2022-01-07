; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_init_pipes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_init_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RV530 = common dso_local global i32 0, align 4
@RV530_GB_PIPE_SELECT2 = common dso_local global i32 0, align 4
@CHIP_R420 = common dso_local global i32 0, align 4
@R400_GB_PIPE_SELECT = common dso_local global i32 0, align 4
@CHIP_R300 = common dso_local global i32 0, align 4
@CHIP_R350 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Num pipes: %d\0A\00", align 1
@R300_ENABLE_TILING = common dso_local global i32 0, align 4
@R300_TILE_SIZE_16 = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_R300 = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_R420_3P = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_R420 = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_RV350 = common dso_local global i32 0, align 4
@CHIP_RV515 = common dso_local global i32 0, align 4
@R500_DYN_SCLK_PWMEM_PIPE = common dso_local global i32 0, align 4
@R300_SU_REG_DEST = common dso_local global i32 0, align 4
@R300_GB_TILE_CONFIG = common dso_local global i32 0, align 4
@R300_DST_PIPE_CONFIG = common dso_local global i32 0, align 4
@R300_PIPE_AUTO_CONFIG = common dso_local global i32 0, align 4
@R300_RB2D_DSTCACHE_MODE = common dso_local global i32 0, align 4
@R300_DC_AUTOFLUSH_ENABLE = common dso_local global i32 0, align 4
@R300_DC_DC_DISABLE_IGNORE_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @radeon_init_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_init_pipes(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @CHIP_RV530, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i32, i32* @RV530_GB_PIPE_SELECT2, align 4
  %19 = call i32 @RADEON_READ(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 2, i32* %25, align 4
  br label %29

26:                                               ; preds = %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @CHIP_R420, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load i32, i32* @R400_GB_PIPE_SELECT, align 4
  %43 = call i32 @RADEON_READ(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 12
  %46 = and i32 %45, 3
  %47 = add nsw i32 %46, 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 24140
  br i1 %55, label %63, label %56

56:                                               ; preds = %41
  %57 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 24143
  br i1 %62, label %63, label %66

63:                                               ; preds = %56, %41
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %56
  br label %104

67:                                               ; preds = %33
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @CHIP_R300, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %77 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 16708
  br i1 %81, label %97, label %82

82:                                               ; preds = %75, %67
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @CHIP_R350, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 16712
  br i1 %96, label %97, label %100

97:                                               ; preds = %90, %75
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  store i32 2, i32* %99, align 4
  br label %103

100:                                              ; preds = %90, %82
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %66
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @R300_ENABLE_TILING, align 4
  %110 = load i32, i32* @R300_TILE_SIZE_16, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %4, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %127 [
    i32 2, label %115
    i32 3, label %119
    i32 4, label %123
    i32 1, label %128
  ]

115:                                              ; preds = %104
  %116 = load i32, i32* @R300_PIPE_COUNT_R300, align 4
  %117 = load i32, i32* %4, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %4, align 4
  br label %132

119:                                              ; preds = %104
  %120 = load i32, i32* @R300_PIPE_COUNT_R420_3P, align 4
  %121 = load i32, i32* %4, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %4, align 4
  br label %132

123:                                              ; preds = %104
  %124 = load i32, i32* @R300_PIPE_COUNT_R420, align 4
  %125 = load i32, i32* %4, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %4, align 4
  br label %132

127:                                              ; preds = %104
  br label %128

128:                                              ; preds = %104, %127
  %129 = load i32, i32* @R300_PIPE_COUNT_RV350, align 4
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %123, %119, %115
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @CHIP_RV515, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %132
  %141 = load i32, i32* @R500_DYN_SCLK_PWMEM_PIPE, align 4
  %142 = load i32, i32* %5, align 4
  %143 = ashr i32 %142, 8
  %144 = and i32 %143, 15
  %145 = shl i32 %144, 4
  %146 = or i32 1, %145
  %147 = call i32 @RADEON_WRITE_PLL(i32 %141, i32 %146)
  %148 = load i32, i32* @R300_SU_REG_DEST, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 1, %151
  %153 = sub nsw i32 %152, 1
  %154 = call i32 @RADEON_WRITE(i32 %148, i32 %153)
  br label %155

155:                                              ; preds = %140, %132
  %156 = load i32, i32* @R300_GB_TILE_CONFIG, align 4
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @RADEON_WRITE(i32 %156, i32 %157)
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = call i32 @radeon_do_wait_for_idle(%struct.TYPE_5__* %159)
  %161 = load i32, i32* @R300_DST_PIPE_CONFIG, align 4
  %162 = load i32, i32* @R300_DST_PIPE_CONFIG, align 4
  %163 = call i32 @RADEON_READ(i32 %162)
  %164 = load i32, i32* @R300_PIPE_AUTO_CONFIG, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @RADEON_WRITE(i32 %161, i32 %165)
  %167 = load i32, i32* @R300_RB2D_DSTCACHE_MODE, align 4
  %168 = load i32, i32* @R300_RB2D_DSTCACHE_MODE, align 4
  %169 = call i32 @RADEON_READ(i32 %168)
  %170 = load i32, i32* @R300_DC_AUTOFLUSH_ENABLE, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @R300_DC_DC_DISABLE_IGNORE_PE, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @RADEON_WRITE(i32 %167, i32 %173)
  ret void
}

declare dso_local i32 @RADEON_READ(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @RADEON_WRITE_PLL(i32, i32) #1

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

declare dso_local i32 @radeon_do_wait_for_idle(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

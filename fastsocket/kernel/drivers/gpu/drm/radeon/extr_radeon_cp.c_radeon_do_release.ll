; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_do_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_do_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32, i32, i64, i64 }

@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"radeon_do_cp_idle %d\0A\00", align 1
@RADEON_GEN_INT_CNTL = common dso_local global i64 0, align 8
@RADEON_MAX_SURFACES = common dso_local global i32 0, align 4
@RADEON_SURFACE0_INFO = common dso_local global i64 0, align 8
@RADEON_SURFACE0_LOWER_BOUND = common dso_local global i64 0, align 8
@RADEON_SURFACE0_UPPER_BOUND = common dso_local global i64 0, align 8
@PZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_do_release(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %146

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @CHIP_R600, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %29, %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i32 @r600_do_cp_idle(%struct.TYPE_6__* %26)
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 (...) @schedule()
  br label %25

33:                                               ; preds = %25
  br label %44

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %39, %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = call i32 @radeon_do_cp_idle(%struct.TYPE_6__* %36)
  store i32 %37, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 (...) @schedule()
  br label %35

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %33
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @CHIP_R600, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = call i32 @r600_do_cp_stop(%struct.TYPE_6__* %53)
  %55 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %56 = call i32 @r600_do_engine_reset(%struct.drm_device* %55)
  br label %62

57:                                               ; preds = %44
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = call i32 @radeon_do_cp_stop(%struct.TYPE_6__* %58)
  %60 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %61 = call i32 @radeon_do_engine_reset(%struct.drm_device* %60)
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %11
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @CHIP_R600, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %63
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i64, i64* @RADEON_GEN_INT_CNTL, align 8
  %78 = call i32 @RADEON_WRITE(i64 %77, i32 0)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %108, %84
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @RADEON_MAX_SURFACES, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load i64, i64* @RADEON_SURFACE0_INFO, align 8
  %91 = load i32, i32* %4, align 4
  %92 = mul nsw i32 16, %91
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = call i32 @RADEON_WRITE(i64 %94, i32 0)
  %96 = load i64, i64* @RADEON_SURFACE0_LOWER_BOUND, align 8
  %97 = load i32, i32* %4, align 4
  %98 = mul nsw i32 16, %97
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = call i32 @RADEON_WRITE(i64 %100, i32 0)
  %102 = load i64, i64* @RADEON_SURFACE0_UPPER_BOUND, align 8
  %103 = load i32, i32* %4, align 4
  %104 = mul nsw i32 16, %103
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %102, %105
  %107 = call i32 @RADEON_WRITE(i64 %106, i32 0)
  br label %108

108:                                              ; preds = %89
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %85

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %111, %79
  br label %113

113:                                              ; preds = %112, %63
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = call i32 @radeon_mem_takedown(i32* %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = call i32 @radeon_mem_takedown(i32* %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @CHIP_R600, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %113
  %128 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %129 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %128)
  br label %133

130:                                              ; preds = %113
  %131 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %132 = call i32 @radeon_do_cleanup_cp(%struct.drm_device* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @release_firmware(i32* %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  store i32* null, i32** %139, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @release_firmware(i32* %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %133, %1
  ret void
}

declare dso_local i32 @r600_do_cp_idle(%struct.TYPE_6__*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @radeon_do_cp_idle(%struct.TYPE_6__*) #1

declare dso_local i32 @r600_do_cp_stop(%struct.TYPE_6__*) #1

declare dso_local i32 @r600_do_engine_reset(%struct.drm_device*) #1

declare dso_local i32 @radeon_do_cp_stop(%struct.TYPE_6__*) #1

declare dso_local i32 @radeon_do_engine_reset(%struct.drm_device*) #1

declare dso_local i32 @RADEON_WRITE(i64, i32) #1

declare dso_local i32 @radeon_mem_takedown(i32*) #1

declare dso_local i32 @r600_do_cleanup_cp(%struct.drm_device*) #1

declare dso_local i32 @radeon_do_cleanup_cp(%struct.drm_device*) #1

declare dso_local i32 @release_firmware(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

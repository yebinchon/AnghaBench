; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_ib_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_ib_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_ib = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"radeon: failed to get scratch reg (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"radeon: failed to get ib (%d).\0A\00", align 1
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"radeon: failed to schedule ib (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"radeon: fence wait failed (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"ib test on ring %d succeeded in %u usecs\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"radeon: ib test failed (scratch(0x%04X)=0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_ib_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca %struct.radeon_ib, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call i32 @radeon_scratch_get(%struct.radeon_device* %11, i32* %7)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  %17 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %111

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @WREG32(i32 %20, i32 -889266515)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @radeon_ib_get(%struct.radeon_device* %22, i32 %25, %struct.radeon_ib* %6, i32* null, i32 256)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %106

32:                                               ; preds = %19
  %33 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %34 = call i32 @PACKET3(i32 %33, i32 1)
  %35 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PACKET3_SET_CONFIG_REG_OFFSET, align 4
  %40 = sub nsw i32 %38, %39
  %41 = ashr i32 %40, 2
  %42 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %41, i32* %44, align 4
  %45 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 -559038737, i32* %47, align 4
  %48 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 1
  store i32 3, i32* %48, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = call i32 @radeon_ib_schedule(%struct.radeon_device* %49, %struct.radeon_ib* %6, i32* null)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %103

56:                                               ; preds = %32
  %57 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @radeon_fence_wait(%struct.TYPE_2__* %58, i32 0)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %103

65:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %80, %65
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ult i32 %67, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @RREG32(i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, -559038737
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %83

78:                                               ; preds = %72
  %79 = call i32 @DRM_UDELAY(i32 1)
  br label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %66

83:                                               ; preds = %77, %66
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @DRM_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %94)
  br label %102

96:                                               ; preds = %83
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %96, %89
  br label %103

103:                                              ; preds = %102, %62, %53
  %104 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %105 = call i32 @radeon_ib_free(%struct.radeon_device* %104, %struct.radeon_ib* %6)
  br label %106

106:                                              ; preds = %103, %29
  %107 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @radeon_scratch_free(%struct.radeon_device* %107, i32 %108)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %15
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @radeon_scratch_get(%struct.radeon_device*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*) #1

declare dso_local i32 @radeon_fence_wait(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_UDELAY(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_scratch_free(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

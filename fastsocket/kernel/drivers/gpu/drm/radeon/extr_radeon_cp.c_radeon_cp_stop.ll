; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_cp_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_cp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_cp_stop(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %17, %struct.drm_file* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %87

25:                                               ; preds = %3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = call i32 @radeon_do_cp_flush(%struct.TYPE_8__* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @CHIP_R600, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = call i32 @r600_do_cp_idle(%struct.TYPE_8__* %47)
  store i32 %48, i32* %10, align 4
  br label %52

49:                                               ; preds = %38
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = call i32 @radeon_do_cp_idle(%struct.TYPE_8__* %50)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %87

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %33
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @CHIP_R600, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = call i32 @r600_do_cp_stop(%struct.TYPE_8__* %67)
  br label %72

69:                                               ; preds = %58
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = call i32 @radeon_do_cp_stop(%struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @CHIP_R600, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %82 = call i32 @r600_do_engine_reset(%struct.drm_device* %81)
  br label %86

83:                                               ; preds = %72
  %84 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %85 = call i32 @radeon_do_engine_reset(%struct.drm_device* %84)
  br label %86

86:                                               ; preds = %83, %80
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %55, %24
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @radeon_do_cp_flush(%struct.TYPE_8__*) #1

declare dso_local i32 @r600_do_cp_idle(%struct.TYPE_8__*) #1

declare dso_local i32 @radeon_do_cp_idle(%struct.TYPE_8__*) #1

declare dso_local i32 @r600_do_cp_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @radeon_do_cp_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @r600_do_engine_reset(%struct.drm_device*) #1

declare dso_local i32 @radeon_do_engine_reset(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_cs_legacy_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_cs_legacy_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__*, %struct.drm_radeon_private* }
%struct.TYPE_2__ = type { i32* }
%struct.drm_radeon_private = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_cs = type { i32 }
%struct.drm_buf = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"called with no initialization\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"cs ioctl valid only for R6XX & R7XX in legacy mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ib_get failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_cs_legacy_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_radeon_private*, align 8
  %9 = alloca %struct.drm_radeon_cs*, align 8
  %10 = alloca %struct.drm_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %17, align 8
  store %struct.drm_radeon_private* %18, %struct.drm_radeon_private** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.drm_radeon_cs*
  store %struct.drm_radeon_cs* %20, %struct.drm_radeon_cs** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %8, align 8
  %22 = icmp eq %struct.drm_radeon_private* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %88

27:                                               ; preds = %3
  %28 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %8, align 8
  %29 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @CHIP_R600, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %88

40:                                               ; preds = %27
  %41 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %8, align 8
  %42 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %46 = call i32 @r600_ib_get(%struct.drm_device* %44, %struct.drm_file* %45, %struct.drm_buf** %10)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %72

51:                                               ; preds = %40
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %58 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32* %61, i32** %14, align 8
  %62 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @r600_cs_legacy(%struct.drm_device* %62, i8* %63, %struct.drm_file* %64, i32 %65, i32* %66, i32* %12)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  br label %72

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %70, %49
  %73 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %74 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %75 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @r600_ib_free(%struct.drm_device* %73, %struct.drm_buf* %74, %struct.drm_file* %75, i32 %76, i32 %77)
  %79 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %8, align 8
  %80 = call i32 @r600_cs_id_emit(%struct.drm_radeon_private* %79, i32* %15)
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.drm_radeon_cs*, %struct.drm_radeon_cs** %9, align 8
  %83 = getelementptr inbounds %struct.drm_radeon_cs, %struct.drm_radeon_cs* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.drm_radeon_private*, %struct.drm_radeon_private** %8, align 8
  %85 = getelementptr inbounds %struct.drm_radeon_private, %struct.drm_radeon_private* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %72, %36, %23
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @r600_ib_get(%struct.drm_device*, %struct.drm_file*, %struct.drm_buf**) #1

declare dso_local i32 @r600_cs_legacy(%struct.drm_device*, i8*, %struct.drm_file*, i32, i32*, i32*) #1

declare dso_local i32 @r600_ib_free(%struct.drm_device*, %struct.drm_buf*, %struct.drm_file*, i32, i32) #1

declare dso_local i32 @r600_cs_id_emit(%struct.drm_radeon_private*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

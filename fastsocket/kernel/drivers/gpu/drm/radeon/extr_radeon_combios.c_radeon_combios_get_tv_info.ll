; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_tv_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_tv_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@TV_STD_NTSC = common dso_local global i32 0, align 4
@COMBIOS_TV_INFO_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Default TV standard: NTSC\0A\00", align 1
@TV_STD_PAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Default TV standard: PAL\0A\00", align 1
@TV_STD_PAL_M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Default TV standard: PAL-M\0A\00", align 1
@TV_STD_PAL_60 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Default TV standard: PAL-60\0A\00", align 1
@TV_STD_NTSC_J = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Default TV standard: NTSC-J\0A\00", align 1
@TV_STD_SCART_PAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Default TV standard: SCART-PAL\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Unknown TV standard; defaulting to NTSC\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"29.498928713 MHz TV ref clk\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"28.636360000 MHz TV ref clk\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"14.318180000 MHz TV ref clk\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"27.000000000 MHz TV ref clk\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_combios_get_tv_info(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load i32, i32* @TV_STD_NTSC, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = load i32, i32* @COMBIOS_TV_INFO_TABLE, align 4
  %12 = call i64 @combios_get_table_offset(%struct.drm_device* %10, i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %16, 6
  %18 = call i32 @RBIOS8(i64 %17)
  %19 = icmp eq i32 %18, 84
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %21, 7
  %23 = call i32 @RBIOS8(i64 %22)
  %24 = and i32 %23, 15
  switch i32 %24, label %43 [
    i32 1, label %25
    i32 2, label %28
    i32 3, label %31
    i32 4, label %34
    i32 5, label %37
    i32 6, label %40
  ]

25:                                               ; preds = %20
  %26 = load i32, i32* @TV_STD_NTSC, align 4
  store i32 %26, i32* %5, align 4
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %46

28:                                               ; preds = %20
  %29 = load i32, i32* @TV_STD_PAL, align 4
  store i32 %29, i32* %5, align 4
  %30 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %46

31:                                               ; preds = %20
  %32 = load i32, i32* @TV_STD_PAL_M, align 4
  store i32 %32, i32* %5, align 4
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %46

34:                                               ; preds = %20
  %35 = load i32, i32* @TV_STD_PAL_60, align 4
  store i32 %35, i32* %5, align 4
  %36 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %46

37:                                               ; preds = %20
  %38 = load i32, i32* @TV_STD_NTSC_J, align 4
  store i32 %38, i32* %5, align 4
  %39 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %46

40:                                               ; preds = %20
  %41 = load i32, i32* @TV_STD_SCART_PAL, align 4
  store i32 %41, i32* %5, align 4
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %46

43:                                               ; preds = %20
  %44 = load i32, i32* @TV_STD_NTSC, align 4
  store i32 %44, i32* %5, align 4
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40, %37, %34, %31, %28, %25
  %47 = load i64, i64* %4, align 8
  %48 = add nsw i64 %47, 9
  %49 = call i32 @RBIOS8(i64 %48)
  %50 = ashr i32 %49, 2
  %51 = and i32 %50, 3
  switch i32 %51, label %60 [
    i32 0, label %52
    i32 1, label %54
    i32 2, label %56
    i32 3, label %58
  ]

52:                                               ; preds = %46
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %61

54:                                               ; preds = %46
  %55 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %61

56:                                               ; preds = %46
  %57 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %61

58:                                               ; preds = %46
  %59 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %61

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %58, %56, %54, %52
  br label %62

62:                                               ; preds = %61, %15
  br label %63

63:                                               ; preds = %62, %1
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS8(i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

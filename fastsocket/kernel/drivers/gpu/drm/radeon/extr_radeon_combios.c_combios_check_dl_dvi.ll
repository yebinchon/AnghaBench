; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_check_dl_dvi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_check_dl_dvi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I = common dso_local global i32 0, align 4
@COMBIOS_EXT_TMDS_INFO_TABLE = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @combios_check_dl_dvi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combios_check_dl_dvi(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %6, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RADEON_IS_IGP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D, align 4
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %19
  %25 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %2
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = load i32, i32* @COMBIOS_EXT_TMDS_INFO_TABLE, align 4
  %29 = call i64 @combios_get_table_offset(%struct.drm_device* %27, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @RBIOS8(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %35, 4
  %37 = add nsw i64 %36, 5
  %38 = call i32 @RBIOS8(i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D, align 4
  store i32 %45, i32* %3, align 4
  br label %68

46:                                               ; preds = %41
  %47 = load i32, i32* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I, align 4
  store i32 %47, i32* %3, align 4
  br label %68

48:                                               ; preds = %32
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D, align 4
  store i32 %56, i32* %3, align 4
  br label %68

57:                                               ; preds = %52
  %58 = load i32, i32* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I, align 4
  store i32 %58, i32* %3, align 4
  br label %68

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D, align 4
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %64, %57, %55, %46, %44, %24, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

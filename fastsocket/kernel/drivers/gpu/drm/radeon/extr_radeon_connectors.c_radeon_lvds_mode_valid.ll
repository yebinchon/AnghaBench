; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_lvds_mode_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_lvds_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { i64, %struct.drm_display_mode }

@MODE_PANEL = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i64 0, align 8
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @radeon_lvds_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_lvds_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %9)
  store %struct.drm_encoder* %10, %struct.drm_encoder** %6, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 320
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 240
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @MODE_PANEL, align 4
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %15
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %24 = icmp ne %struct.drm_encoder* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %22
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %27 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %26)
  store %struct.radeon_encoder* %27, %struct.radeon_encoder** %7, align 8
  %28 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %29 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %28, i32 0, i32 1
  store %struct.drm_display_mode* %29, %struct.drm_display_mode** %8, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %25
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37, %25
  %46 = load i32, i32* @MODE_PANEL, align 4
  store i32 %46, i32* %3, align 4
  br label %75

47:                                               ; preds = %37
  %48 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %49 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RMX_OFF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61, %53
  %70 = load i32, i32* @MODE_PANEL, align 4
  store i32 %70, i32* %3, align 4
  br label %75

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %47
  br label %73

73:                                               ; preds = %72, %22
  %74 = load i32, i32* @MODE_OK, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %69, %45, %20
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

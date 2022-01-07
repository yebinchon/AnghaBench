; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_mode_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64 }
%struct.drm_display_mode = type { i32, i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i64 }
%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { i64, %struct.drm_display_mode }

@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@MODE_PANEL = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i64 0, align 8
@MODE_OK = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @radeon_dp_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.radeon_connector*, align 8
  %7 = alloca %struct.radeon_connector_atom_dig*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.radeon_encoder*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %11)
  store %struct.radeon_connector* %12, %struct.radeon_connector** %6, align 8
  %13 = load %struct.radeon_connector*, %struct.radeon_connector** %6, align 8
  %14 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %13, i32 0, i32 0
  %15 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %14, align 8
  store %struct.radeon_connector_atom_dig* %15, %struct.radeon_connector_atom_dig** %7, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %94

27:                                               ; preds = %21, %2
  %28 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %29 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %28)
  store %struct.drm_encoder* %29, %struct.drm_encoder** %8, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 320
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 240
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %27
  %40 = load i32, i32* @MODE_PANEL, align 4
  store i32 %40, i32* %3, align 4
  br label %112

41:                                               ; preds = %34
  %42 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %43 = icmp ne %struct.drm_encoder* %42, null
  br i1 %43, label %44, label %92

44:                                               ; preds = %41
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %46 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %45)
  store %struct.radeon_encoder* %46, %struct.radeon_encoder** %9, align 8
  %47 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %48 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %47, i32 0, i32 1
  store %struct.drm_display_mode* %48, %struct.drm_display_mode** %10, align 8
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %44
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56, %44
  %65 = load i32, i32* @MODE_PANEL, align 4
  store i32 %65, i32* %3, align 4
  br label %112

66:                                               ; preds = %56
  %67 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %68 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RMX_OFF, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80, %72
  %89 = load i32, i32* @MODE_PANEL, align 4
  store i32 %89, i32* %3, align 4
  br label %112

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %66
  br label %92

92:                                               ; preds = %91, %41
  %93 = load i32, i32* @MODE_OK, align 4
  store i32 %93, i32* %3, align 4
  br label %112

94:                                               ; preds = %21
  %95 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %7, align 8
  %96 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %7, align 8
  %102 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CONNECTOR_OBJECT_ID_eDP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100, %94
  %107 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %109 = call i32 @radeon_dp_mode_valid_helper(%struct.drm_connector* %107, %struct.drm_display_mode* %108)
  store i32 %109, i32* %3, align 4
  br label %112

110:                                              ; preds = %100
  %111 = load i32, i32* @MODE_OK, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %106, %92, %88, %64, %39
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_dp_mode_valid_helper(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

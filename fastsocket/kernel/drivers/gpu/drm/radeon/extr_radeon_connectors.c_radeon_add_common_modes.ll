; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_add_common_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_add_common_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_size = type { i32, i32 }
%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_encoder = type { i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@__const.radeon_add_common_modes.common_modes = private unnamed_addr constant [17 x %struct.mode_size] [%struct.mode_size { i32 640, i32 480 }, %struct.mode_size { i32 720, i32 480 }, %struct.mode_size { i32 800, i32 600 }, %struct.mode_size { i32 848, i32 480 }, %struct.mode_size { i32 1024, i32 768 }, %struct.mode_size { i32 1152, i32 768 }, %struct.mode_size { i32 1280, i32 720 }, %struct.mode_size { i32 1280, i32 800 }, %struct.mode_size { i32 1280, i32 854 }, %struct.mode_size { i32 1280, i32 960 }, %struct.mode_size { i32 1280, i32 1024 }, %struct.mode_size { i32 1440, i32 900 }, %struct.mode_size { i32 1400, i32 1050 }, %struct.mode_size { i32 1680, i32 1050 }, %struct.mode_size { i32 1600, i32 1200 }, %struct.mode_size { i32 1920, i32 1080 }, %struct.mode_size { i32 1920, i32 1200 }], align 16
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_connector*)* @radeon_add_common_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_add_common_modes(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_encoder*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [17 x %struct.mode_size], align 16
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %15 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %14)
  store %struct.radeon_encoder* %15, %struct.radeon_encoder** %6, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %7, align 8
  %16 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %17 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %16, i32 0, i32 1
  store %struct.drm_display_mode* %17, %struct.drm_display_mode** %8, align 8
  %18 = bitcast [17 x %struct.mode_size]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([17 x %struct.mode_size]* @__const.radeon_add_common_modes.common_modes to i8*), i64 136, i1 false)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %125, %2
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 17
  br i1 %21, label %22, label %128

22:                                               ; preds = %19
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* %10, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1024
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* %10, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 768
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %29
  br label %125

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* %10, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %92, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* %10, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %92, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* %10, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* %10, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82, %62, %52
  br label %125

93:                                               ; preds = %82, %72
  br label %94

94:                                               ; preds = %93, %45
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* %10, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %99, 320
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* %10, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 200
  br i1 %107, label %108, label %109

108:                                              ; preds = %101, %94
  br label %125

109:                                              ; preds = %101
  %110 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* %10, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* %10, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %110, i32 %115, i32 %120, i32 60, i32 0, i32 0, i32 0)
  store %struct.drm_display_mode* %121, %struct.drm_display_mode** %7, align 8
  %122 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %124 = call i32 @drm_mode_probed_add(%struct.drm_connector* %122, %struct.drm_display_mode* %123)
  br label %125

125:                                              ; preds = %109, %108, %92, %43
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %19

128:                                              ; preds = %19
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

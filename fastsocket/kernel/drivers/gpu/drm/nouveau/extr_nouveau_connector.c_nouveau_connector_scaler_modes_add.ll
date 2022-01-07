; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_scaler_modes_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_scaler_modes_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moderec = type { i64, i64 }
%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_connector = type { %struct.drm_display_mode* }
%struct.drm_display_mode = type { i64, i64, i32 }

@scaler_modes = common dso_local global %struct.moderec* null, align 8
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @nouveau_connector_scaler_modes_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_connector_scaler_modes_add(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.nouveau_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.moderec*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %10)
  store %struct.nouveau_connector* %11, %struct.nouveau_connector** %4, align 8
  %12 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %12, i32 0, i32 0
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %5, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %7, align 8
  %18 = load %struct.moderec*, %struct.moderec** @scaler_modes, align 8
  %19 = getelementptr inbounds %struct.moderec, %struct.moderec* %18, i64 0
  store %struct.moderec* %19, %struct.moderec** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = icmp ne %struct.drm_display_mode* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %70, %58, %23
  %25 = load %struct.moderec*, %struct.moderec** %8, align 8
  %26 = getelementptr inbounds %struct.moderec, %struct.moderec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = load %struct.moderec*, %struct.moderec** %8, align 8
  %31 = getelementptr inbounds %struct.moderec, %struct.moderec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %32, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %29
  %38 = load %struct.moderec*, %struct.moderec** %8, align 8
  %39 = getelementptr inbounds %struct.moderec, %struct.moderec* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %40, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %37
  %46 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %47 = load %struct.moderec*, %struct.moderec** %8, align 8
  %48 = getelementptr inbounds %struct.moderec, %struct.moderec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.moderec*, %struct.moderec** %8, align 8
  %51 = getelementptr inbounds %struct.moderec, %struct.moderec* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %54 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %53)
  %55 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %46, i64 %49, i64 %52, i32 %54, i32 0, i32 0, i32 0)
  store %struct.drm_display_mode* %55, %struct.drm_display_mode** %6, align 8
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %57 = icmp ne %struct.drm_display_mode* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %45
  br label %24

59:                                               ; preds = %45
  %60 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %67 = call i32 @drm_mode_probed_add(%struct.drm_connector* %65, %struct.drm_display_mode* %66)
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %59, %37, %29
  %71 = load %struct.moderec*, %struct.moderec** %8, align 8
  %72 = getelementptr inbounds %struct.moderec, %struct.moderec* %71, i32 1
  store %struct.moderec* %72, %struct.moderec** %8, align 8
  br label %24

73:                                               ; preds = %24
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

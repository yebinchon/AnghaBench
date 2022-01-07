; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_lvds_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_lvds_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @radeon_lvds_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_lvds_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_connector*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %10)
  store %struct.radeon_connector* %11, %struct.radeon_connector** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %12)
  store %struct.drm_encoder* %13, %struct.drm_encoder** %6, align 8
  %14 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %16 = icmp ne %struct.drm_encoder* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %19 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %18)
  store %struct.radeon_encoder* %19, %struct.radeon_encoder** %8, align 8
  %20 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %21 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %20, i32 0, i32 0
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %9, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 320
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 240
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @connector_status_connected, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %26, %17
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %36 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @connector_status_connected, align 4
  store i32 %40, i32* %7, align 4
  br label %64

41:                                               ; preds = %34
  %42 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %48 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %47, i32 0, i32 2
  %49 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i64 @drm_get_edid(i32* %48, i32* %52)
  %54 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @connector_status_connected, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %46
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @radeon_connector_update_scratch_regs(%struct.drm_connector* %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @drm_get_edid(i32*, i32*) #1

declare dso_local i32 @radeon_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_set_link_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_set_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i64, i32, i32, i32 }

@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_dp_set_link_config(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_connector*, align 8
  %6 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %7)
  store %struct.radeon_connector* %8, %struct.radeon_connector** %5, align 8
  %9 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %10 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %9, i32 0, i32 0
  %11 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %12 = icmp ne %struct.radeon_connector_atom_dig* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %15, i32 0, i32 0
  %17 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %16, align 8
  store %struct.radeon_connector_atom_dig* %17, %struct.radeon_connector_atom_dig** %6, align 8
  %18 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %19 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %25 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CONNECTOR_OBJECT_ID_eDP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23, %14
  %30 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %31 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %32 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @radeon_dp_get_dp_link_clock(%struct.drm_connector* %30, i32 %33, i32 %36)
  %38 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %39 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %41 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %42 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @radeon_dp_get_dp_lane_number(%struct.drm_connector* %40, i32 %43, i32 %46)
  %48 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %49 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %13, %29, %23
  ret void
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_dp_get_dp_link_clock(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @radeon_dp_get_dp_lane_number(%struct.drm_connector*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

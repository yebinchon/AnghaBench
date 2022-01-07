; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_mode_valid_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_mode_valid_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }

@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dp_mode_valid_helper(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.radeon_connector*, align 8
  %7 = alloca %struct.radeon_connector_atom_dig*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %9)
  store %struct.radeon_connector* %10, %struct.radeon_connector** %6, align 8
  %11 = load %struct.radeon_connector*, %struct.radeon_connector** %6, align 8
  %12 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %11, i32 0, i32 0
  %13 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %14 = icmp ne %struct.radeon_connector_atom_dig* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.radeon_connector*, %struct.radeon_connector** %6, align 8
  %19 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %18, i32 0, i32 0
  %20 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %19, align 8
  store %struct.radeon_connector_atom_dig* %20, %struct.radeon_connector_atom_dig** %7, align 8
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @radeon_dp_get_dp_link_clock(%struct.drm_connector* %21, i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 540000
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %33 = call i32 @radeon_connector_is_dp12_capable(%struct.drm_connector* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %31, %17
  %38 = load i32, i32* @MODE_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_dp_get_dp_link_clock(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @radeon_connector_is_dp12_capable(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_lvds_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_lvds_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.radeon_connector = type { i64 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @radeon_lvds_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_lvds_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.radeon_connector*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %8)
  store %struct.radeon_connector* %9, %struct.radeon_connector** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.radeon_connector*, %struct.radeon_connector** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.radeon_connector*, %struct.radeon_connector** %4, align 8
  %16 = call i32 @radeon_ddc_get_modes(%struct.radeon_connector* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %21 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %20)
  store %struct.drm_encoder* %21, %struct.drm_encoder** %5, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %23 = icmp ne %struct.drm_encoder* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %26 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %27 = call i32 @radeon_fixup_lvds_native_mode(%struct.drm_encoder* %25, %struct.drm_connector* %26)
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %29 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %30 = call i32 @radeon_add_common_modes(%struct.drm_encoder* %28, %struct.drm_connector* %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %66

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %36 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %35)
  store %struct.drm_encoder* %36, %struct.drm_encoder** %5, align 8
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %38 = icmp ne %struct.drm_encoder* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %66

40:                                               ; preds = %34
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %42 = call %struct.drm_display_mode* @radeon_fp_native_mode(%struct.drm_encoder* %41)
  store %struct.drm_display_mode* %42, %struct.drm_display_mode** %7, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %44 = icmp ne %struct.drm_display_mode* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  %46 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %48 = call i32 @drm_mode_probed_add(%struct.drm_connector* %46, %struct.drm_display_mode* %47)
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %53 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %59 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %62 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %63 = call i32 @radeon_add_common_modes(%struct.drm_encoder* %61, %struct.drm_connector* %62)
  br label %64

64:                                               ; preds = %45, %40
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %39, %31
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_ddc_get_modes(%struct.radeon_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @radeon_fixup_lvds_native_mode(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @radeon_add_common_modes(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @radeon_fp_native_mode(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

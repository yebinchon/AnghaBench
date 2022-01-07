; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_dig_monitor_is_duallink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_dig_monitor_is_duallink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { i32, %struct.radeon_connector_atom_dig*, i32 }
%struct.radeon_connector_atom_dig = type { i32 }

@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.radeon_connector*, align 8
  %10 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %7, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %17)
  store %struct.drm_connector* %18, %struct.drm_connector** %8, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %20 = icmp ne %struct.drm_connector* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = call %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder* %22)
  store %struct.drm_connector* %23, %struct.drm_connector** %8, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %26 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %25)
  store %struct.radeon_connector* %26, %struct.radeon_connector** %9, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %92 [
    i32 131, label %30
    i32 128, label %30
    i32 132, label %56
    i32 129, label %56
    i32 130, label %56
  ]

30:                                               ; preds = %24, %24
  %31 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %32 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %37 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %41 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @drm_detect_hdmi_monitor(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 340000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %93

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %93

50:                                               ; preds = %39, %35
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %51, 165000
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %93

54:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %93

55:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %93

56:                                               ; preds = %24, %24, %24
  %57 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %58 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %57, i32 0, i32 1
  %59 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %58, align 8
  store %struct.radeon_connector_atom_dig* %59, %struct.radeon_connector_atom_dig** %10, align 8
  %60 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %61 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %67 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CONNECTOR_OBJECT_ID_eDP, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %56
  store i32 0, i32* %3, align 4
  br label %93

72:                                               ; preds = %65
  %73 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %74 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %78 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @drm_detect_hdmi_monitor(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 340000
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %93

86:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %93

87:                                               ; preds = %76, %72
  %88 = load i32, i32* %5, align 4
  %89 = icmp sgt i32 %88, 165000
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %93

91:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %93

92:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %91, %90, %86, %85, %71, %55, %54, %53, %49, %48
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_hotplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i64, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_connector = type { %struct.TYPE_2__, %struct.radeon_connector_atom_dig* }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_connector_atom_dig = type { i64 }

@RADEON_HPD_NONE = common dso_local global i64 0, align 8
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_connector_hotplug(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_connector*, align 8
  %6 = alloca %struct.radeon_connector_atom_dig*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 2
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %4, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %15 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %14)
  store %struct.radeon_connector* %15, %struct.radeon_connector** %5, align 8
  %16 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RADEON_HPD_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %94

23:                                               ; preds = %1
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @radeon_hpd_set_polarity(%struct.radeon_device* %24, i64 %28)
  %30 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %94

36:                                               ; preds = %23
  %37 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %36
  %43 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %43, i32 0, i32 1
  %45 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %44, align 8
  store %struct.radeon_connector_atom_dig* %45, %struct.radeon_connector_atom_dig** %6, align 8
  %46 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %94

52:                                               ; preds = %42
  %53 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %54 = call i64 @radeon_dp_getsinktype(%struct.radeon_connector* %53)
  %55 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %58 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %52
  %63 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %64 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %7, align 4
  %66 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %67 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @radeon_hpd_sense(%struct.radeon_device* %66, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %62
  %74 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %75 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %76 = call i32 @drm_helper_connector_dpms(%struct.drm_connector* %74, i32 %75)
  br label %89

77:                                               ; preds = %62
  %78 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %79 = call i64 @radeon_dp_needs_link_train(%struct.radeon_connector* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %83 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %84 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %86 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %87 = call i32 @drm_helper_connector_dpms(%struct.drm_connector* %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %77
  br label %89

89:                                               ; preds = %88, %73
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %92 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %52
  br label %94

94:                                               ; preds = %22, %35, %51, %93, %36
  ret void
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_hpd_set_polarity(%struct.radeon_device*, i64) #1

declare dso_local i64 @radeon_dp_getsinktype(%struct.radeon_connector*) #1

declare dso_local i32 @radeon_hpd_sense(%struct.radeon_device*, i64) #1

declare dso_local i32 @drm_helper_connector_dpms(%struct.drm_connector*, i32) #1

declare dso_local i64 @radeon_dp_needs_link_train(%struct.radeon_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

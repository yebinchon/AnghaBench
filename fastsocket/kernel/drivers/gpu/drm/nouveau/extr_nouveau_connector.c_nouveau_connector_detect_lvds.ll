; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_detect_lvds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_detect_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nouveau_connector = type { i32* }
%struct.nouveau_encoder = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.edid = type { i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@DCB_OUTPUT_LVDS = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@nouveau_ignorelid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @nouveau_connector_detect_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_connector_detect_lvds(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_connector*, align 8
  %9 = alloca %struct.nouveau_encoder*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %7, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %17)
  store %struct.nouveau_connector* %18, %struct.nouveau_connector** %8, align 8
  store %struct.nouveau_encoder* null, %struct.nouveau_encoder** %9, align 8
  %19 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %21 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %26 = call i32 @drm_mode_connector_update_edid_property(%struct.drm_connector* %25, i32* null)
  %27 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kfree(i32* %29)
  %31 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %32 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %24, %2
  %34 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %35 = load i32, i32* @DCB_OUTPUT_LVDS, align 4
  %36 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %34, i32 %35)
  store %struct.nouveau_encoder* %36, %struct.nouveau_encoder** %9, align 8
  %37 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %38 = icmp ne %struct.nouveau_encoder* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %40, i32* %3, align 4
  br label %132

41:                                               ; preds = %33
  %42 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %43 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @nouveau_connector_detect(%struct.drm_connector* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @connector_status_connected, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %122

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %58 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %66 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %67 = call i32* @nouveau_acpi_edid(%struct.drm_device* %65, %struct.drm_connector* %66)
  %68 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %69 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = icmp ne i32* %67, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @connector_status_connected, align 4
  store i32 %72, i32* %10, align 4
  br label %122

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %76 = call i64 @nouveau_bios_fp_mode(%struct.drm_device* %75, i32* null)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %80 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %86 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84, %78
  %93 = load i32, i32* @connector_status_connected, align 4
  store i32 %93, i32* %10, align 4
  br label %122

94:                                               ; preds = %84, %74
  %95 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %96 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %121, label %100

100:                                              ; preds = %94
  %101 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %102 = call i64 @nouveau_bios_embedded_edid(%struct.drm_device* %101)
  %103 = inttoptr i64 %102 to %struct.edid*
  store %struct.edid* %103, %struct.edid** %11, align 8
  %104 = load %struct.edid*, %struct.edid** %11, align 8
  %105 = icmp ne %struct.edid* %104, null
  br i1 %105, label %106, label %120

106:                                              ; preds = %100
  %107 = load %struct.edid*, %struct.edid** %11, align 8
  %108 = load i32, i32* @EDID_LENGTH, align 4
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i32* @kmemdup(%struct.edid* %107, i32 %108, i32 %109)
  %111 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %112 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %111, i32 0, i32 0
  store i32* %110, i32** %112, align 8
  %113 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %114 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = load i32, i32* @connector_status_connected, align 4
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %117, %106
  br label %120

120:                                              ; preds = %119, %100
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %92, %71, %54
  %123 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %124 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %125 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @drm_mode_connector_update_edid_property(%struct.drm_connector* %123, i32* %126)
  %128 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %129 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %130 = call i32 @nouveau_connector_set_encoder(%struct.drm_connector* %128, %struct.nouveau_encoder* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %122, %39
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_mode_connector_update_edid_property(%struct.drm_connector*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.nouveau_encoder* @find_encoder(%struct.drm_connector*, i32) #1

declare dso_local i32 @nouveau_connector_detect(%struct.drm_connector*, i32) #1

declare dso_local i32* @nouveau_acpi_edid(%struct.drm_device*, %struct.drm_connector*) #1

declare dso_local i64 @nouveau_bios_fp_mode(%struct.drm_device*, i32*) #1

declare dso_local i64 @nouveau_bios_embedded_edid(%struct.drm_device*) #1

declare dso_local i32* @kmemdup(%struct.edid*, i32, i32) #1

declare dso_local i32 @nouveau_connector_set_encoder(%struct.drm_connector*, %struct.nouveau_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

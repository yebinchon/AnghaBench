; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_get_monitor_bpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_get_monitor_bpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_connector_helper_funcs*, %struct.TYPE_2__, %struct.drm_device* }
%struct.drm_connector_helper_funcs = type { %struct.drm_encoder* (%struct.drm_connector.0*)* }
%struct.drm_encoder = type { i32 }
%struct.drm_connector.0 = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_connector = type { i32, %struct.radeon_connector_atom_dig*, i32 }
%struct.radeon_connector_atom_dig = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }

@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_V13_6BIT_PER_COLOR = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_V13_8BIT_PER_COLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_monitor_bpc(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_connector*, align 8
  %6 = alloca %struct.radeon_connector_atom_dig*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_connector_helper_funcs*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.radeon_encoder*, align 8
  %11 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 3
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %3, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %4, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %19 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %18)
  store %struct.radeon_connector* %19, %struct.radeon_connector** %5, align 8
  store i32 8, i32* %7, align 4
  %20 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %154 [
    i32 133, label %23
    i32 130, label %23
    i32 134, label %48
    i32 131, label %48
    i32 132, label %67
    i32 128, label %101
    i32 129, label %101
  ]

23:                                               ; preds = %1, %1
  %24 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %25 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @drm_detect_hdmi_monitor(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45, %28
  br label %47

47:                                               ; preds = %46, %23
  br label %154

48:                                               ; preds = %1, %1
  %49 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @drm_detect_hdmi_monitor(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %62 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %54
  br label %66

66:                                               ; preds = %65, %48
  br label %154

67:                                               ; preds = %1
  %68 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %69 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %68, i32 0, i32 1
  %70 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %69, align 8
  store %struct.radeon_connector_atom_dig* %70, %struct.radeon_connector_atom_dig** %6, align 8
  %71 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %72 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %67
  %77 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %78 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CONNECTOR_OBJECT_ID_eDP, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @drm_detect_hdmi_monitor(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %82, %76, %67
  %89 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %90 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %96 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %94, %88
  br label %100

100:                                              ; preds = %99, %82
  br label %154

101:                                              ; preds = %1, %1
  %102 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %103 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %109 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %7, align 4
  br label %153

112:                                              ; preds = %101
  %113 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %114 = call i32 @ASIC_IS_DCE41(%struct.radeon_device* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %118 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %152

120:                                              ; preds = %116, %112
  %121 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %122 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %121, i32 0, i32 1
  %123 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %122, align 8
  store %struct.drm_connector_helper_funcs* %123, %struct.drm_connector_helper_funcs** %8, align 8
  %124 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %8, align 8
  %125 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %124, i32 0, i32 0
  %126 = load %struct.drm_encoder* (%struct.drm_connector.0*)*, %struct.drm_encoder* (%struct.drm_connector.0*)** %125, align 8
  %127 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %128 = bitcast %struct.drm_connector* %127 to %struct.drm_connector.0*
  %129 = call %struct.drm_encoder* %126(%struct.drm_connector.0* %128)
  store %struct.drm_encoder* %129, %struct.drm_encoder** %9, align 8
  %130 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %131 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %130)
  store %struct.radeon_encoder* %131, %struct.radeon_encoder** %10, align 8
  %132 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %133 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %132, i32 0, i32 0
  %134 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %133, align 8
  store %struct.radeon_encoder_atom_dig* %134, %struct.radeon_encoder_atom_dig** %11, align 8
  %135 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %11, align 8
  %136 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ATOM_PANEL_MISC_V13_6BIT_PER_COLOR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %120
  store i32 6, i32* %7, align 4
  br label %151

142:                                              ; preds = %120
  %143 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %11, align 8
  %144 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ATOM_PANEL_MISC_V13_8BIT_PER_COLOR, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 8, i32* %7, align 4
  br label %150

150:                                              ; preds = %149, %142
  br label %151

151:                                              ; preds = %150, %141
  br label %152

152:                                              ; preds = %151, %116
  br label %153

153:                                              ; preds = %152, %107
  br label %154

154:                                              ; preds = %1, %153, %100, %66, %47
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

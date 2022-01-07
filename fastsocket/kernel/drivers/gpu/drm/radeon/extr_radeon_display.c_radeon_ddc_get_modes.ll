; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_ddc_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_ddc_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { %struct.TYPE_11__, i32*, %struct.TYPE_10__*, %struct.radeon_connector_atom_dig*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ddc_get_modes(%struct.radeon_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_connector_atom_dig*, align 8
  %8 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.radeon_connector* %0, %struct.radeon_connector** %3, align 8
  %9 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %23 = call i32 @radeon_router_select_ddc_port(%struct.radeon_connector* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %25, i32 0, i32 0
  %27 = call i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.TYPE_11__* %26)
  %28 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %31, i32 0, i32 3
  %33 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %32, align 8
  store %struct.radeon_connector_atom_dig* %33, %struct.radeon_connector_atom_dig** %7, align 8
  %34 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %7, align 8
  %35 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %39, i32 0, i32 0
  %41 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %7, align 8
  %42 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = call i8* @drm_get_edid(%struct.TYPE_11__* %40, i32* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  br label %49

49:                                               ; preds = %38, %30
  br label %141

50:                                               ; preds = %24
  %51 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %118

64:                                               ; preds = %57, %50
  %65 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %65, i32 0, i32 3
  %67 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %66, align 8
  store %struct.radeon_connector_atom_dig* %67, %struct.radeon_connector_atom_dig** %8, align 8
  %68 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %8, align 8
  %69 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %64
  %74 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %8, align 8
  %75 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CONNECTOR_OBJECT_ID_eDP, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %73, %64
  %80 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %8, align 8
  %81 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = icmp ne %struct.TYPE_9__* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %85, i32 0, i32 0
  %87 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %8, align 8
  %88 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = call i8* @drm_get_edid(%struct.TYPE_11__* %86, i32* %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %94 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  br label %117

95:                                               ; preds = %79, %73
  %96 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %96, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = icmp ne %struct.TYPE_10__* %98, null
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %100
  %106 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %106, i32 0, i32 0
  %108 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %108, i32 0, i32 2
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = call i8* @drm_get_edid(%struct.TYPE_11__* %107, i32* %111)
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %114, i32 0, i32 1
  store i32* %113, i32** %115, align 8
  br label %116

116:                                              ; preds = %105, %100, %95
  br label %117

117:                                              ; preds = %116, %84
  br label %140

118:                                              ; preds = %57
  %119 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %119, i32 0, i32 2
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = icmp ne %struct.TYPE_10__* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %139, label %128

128:                                              ; preds = %123
  %129 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %130 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %129, i32 0, i32 0
  %131 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %131, i32 0, i32 2
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = call i8* @drm_get_edid(%struct.TYPE_11__* %130, i32* %134)
  %136 = bitcast i8* %135 to i32*
  %137 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %137, i32 0, i32 1
  store i32* %136, i32** %138, align 8
  br label %139

139:                                              ; preds = %128, %123, %118
  br label %140

140:                                              ; preds = %139, %117
  br label %141

141:                                              ; preds = %140, %49
  %142 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %179, label %146

146:                                              ; preds = %141
  %147 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %146
  %152 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %153 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %165, label %158

158:                                              ; preds = %151
  %159 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %158, %151
  %166 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %167 = call i8* @radeon_bios_get_hardcoded_edid(%struct.radeon_device* %166)
  %168 = bitcast i8* %167 to i32*
  %169 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %170 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %169, i32 0, i32 1
  store i32* %168, i32** %170, align 8
  br label %171

171:                                              ; preds = %165, %158
  br label %178

172:                                              ; preds = %146
  %173 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %174 = call i8* @radeon_bios_get_hardcoded_edid(%struct.radeon_device* %173)
  %175 = bitcast i8* %174 to i32*
  %176 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %177 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %176, i32 0, i32 1
  store i32* %175, i32** %177, align 8
  br label %178

178:                                              ; preds = %172, %171
  br label %179

179:                                              ; preds = %178, %141
  %180 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %181 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %198

184:                                              ; preds = %179
  %185 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %186 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %185, i32 0, i32 0
  %187 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %188 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @drm_mode_connector_update_edid_property(%struct.TYPE_11__* %186, i32* %189)
  %191 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %192 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %191, i32 0, i32 0
  %193 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %194 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @drm_add_edid_modes(%struct.TYPE_11__* %192, i32* %195)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %2, align 4
  br label %202

198:                                              ; preds = %179
  %199 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %200 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %199, i32 0, i32 0
  %201 = call i32 @drm_mode_connector_update_edid_property(%struct.TYPE_11__* %200, i32* null)
  store i32 0, i32* %2, align 4
  br label %202

202:                                              ; preds = %198, %184
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @radeon_router_select_ddc_port(%struct.radeon_connector*) #1

declare dso_local i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.TYPE_11__*) #1

declare dso_local i8* @drm_get_edid(%struct.TYPE_11__*, i32*) #1

declare dso_local i8* @radeon_bios_get_hardcoded_edid(%struct.radeon_device*) #1

declare dso_local i32 @drm_mode_connector_update_edid_property(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

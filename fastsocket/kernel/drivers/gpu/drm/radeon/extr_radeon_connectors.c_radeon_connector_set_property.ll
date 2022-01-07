; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_set_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32, i32, %struct.radeon_encoder_tv_dac* }
%struct.radeon_encoder_tv_dac = type { i32, i32 }
%struct.radeon_encoder_atom_dig = type { i32, i32 }
%struct.radeon_encoder_atom_dac = type { i32, i32 }
%struct.radeon_connector = type { i32 }
%struct.radeon_encoder_int_tmds = type { i32, i32 }

@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TVDAC = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@radeon_r4xx_atom = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i32)* @radeon_connector_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_connector_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca %struct.radeon_encoder*, align 8
  %12 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.radeon_encoder_atom_dac*, align 8
  %15 = alloca %struct.radeon_encoder_tv_dac*, align 8
  %16 = alloca %struct.radeon_connector*, align 8
  %17 = alloca %struct.radeon_encoder_int_tmds*, align 8
  %18 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %8, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.radeon_device*, %struct.radeon_device** %23, align 8
  store %struct.radeon_device* %24, %struct.radeon_device** %9, align 8
  %25 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  %29 = load %struct.drm_property*, %struct.drm_property** %28, align 8
  %30 = icmp eq %struct.drm_property* %25, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %3
  %32 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %33 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %34 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %32, i32 %33)
  store %struct.drm_encoder* %34, %struct.drm_encoder** %10, align 8
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %36 = icmp ne %struct.drm_encoder* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %291

38:                                               ; preds = %31
  %39 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %40 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %39)
  store %struct.radeon_encoder* %40, %struct.radeon_encoder** %11, align 8
  %41 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %42 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %41, i32 0, i32 4
  %43 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %42, align 8
  %44 = icmp ne %struct.radeon_encoder_tv_dac* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %291

46:                                               ; preds = %38
  %47 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %48 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %47, i32 0, i32 4
  %49 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %48, align 8
  %50 = bitcast %struct.radeon_encoder_tv_dac* %49 to %struct.radeon_encoder_atom_dig*
  store %struct.radeon_encoder_atom_dig* %50, %struct.radeon_encoder_atom_dig** %12, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  store i32 %54, i32* %13, align 4
  %55 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %56 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %63 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %65 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %64, i32 0, i32 3
  %66 = call i32 @radeon_property_change_mode(i32* %65)
  br label %67

67:                                               ; preds = %60, %46
  br label %68

68:                                               ; preds = %67, %3
  %69 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %70 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  %73 = load %struct.drm_property*, %struct.drm_property** %72, align 8
  %74 = icmp eq %struct.drm_property* %69, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %68
  %76 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %77 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %78 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %76, i32 %77)
  store %struct.drm_encoder* %78, %struct.drm_encoder** %10, align 8
  %79 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %80 = icmp ne %struct.drm_encoder* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %291

82:                                               ; preds = %75
  %83 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %84 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %83)
  store %struct.radeon_encoder* %84, %struct.radeon_encoder** %11, align 8
  %85 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %86 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %93 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %95 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %94, i32 0, i32 3
  %96 = call i32 @radeon_property_change_mode(i32* %95)
  br label %97

97:                                               ; preds = %90, %82
  br label %98

98:                                               ; preds = %97, %68
  %99 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  %103 = load %struct.drm_property*, %struct.drm_property** %102, align 8
  %104 = icmp eq %struct.drm_property* %99, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %98
  %106 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %107 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %108 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %106, i32 %107)
  store %struct.drm_encoder* %108, %struct.drm_encoder** %10, align 8
  %109 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %110 = icmp ne %struct.drm_encoder* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %291

112:                                              ; preds = %105
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %114 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %113)
  store %struct.radeon_encoder* %114, %struct.radeon_encoder** %11, align 8
  %115 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %116 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %123 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %125 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %124, i32 0, i32 3
  %126 = call i32 @radeon_property_change_mode(i32* %125)
  br label %127

127:                                              ; preds = %120, %112
  br label %128

128:                                              ; preds = %127, %98
  %129 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %130 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  %133 = load %struct.drm_property*, %struct.drm_property** %132, align 8
  %134 = icmp eq %struct.drm_property* %129, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %128
  %136 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %137 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %138 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %136, i32 %137)
  store %struct.drm_encoder* %138, %struct.drm_encoder** %10, align 8
  %139 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %140 = icmp ne %struct.drm_encoder* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %291

142:                                              ; preds = %135
  %143 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %144 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %143)
  store %struct.radeon_encoder* %144, %struct.radeon_encoder** %11, align 8
  %145 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %146 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %142
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %153 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %155 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %154, i32 0, i32 3
  %156 = call i32 @radeon_property_change_mode(i32* %155)
  br label %157

157:                                              ; preds = %150, %142
  br label %158

158:                                              ; preds = %157, %128
  %159 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %160 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load %struct.drm_property*, %struct.drm_property** %162, align 8
  %164 = icmp eq %struct.drm_property* %159, %163
  br i1 %164, label %165, label %213

165:                                              ; preds = %158
  %166 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %167 = load i32, i32* @DRM_MODE_ENCODER_TVDAC, align 4
  %168 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %166, i32 %167)
  store %struct.drm_encoder* %168, %struct.drm_encoder** %10, align 8
  %169 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %170 = icmp ne %struct.drm_encoder* %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %165
  %172 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %173 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %174 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %172, i32 %173)
  store %struct.drm_encoder* %174, %struct.drm_encoder** %10, align 8
  br label %175

175:                                              ; preds = %171, %165
  %176 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %177 = icmp ne %struct.drm_encoder* %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  store i32 0, i32* %4, align 4
  br label %291

179:                                              ; preds = %175
  %180 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %181 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %180)
  store %struct.radeon_encoder* %181, %struct.radeon_encoder** %11, align 8
  %182 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %183 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %182, i32 0, i32 4
  %184 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %183, align 8
  %185 = icmp ne %struct.radeon_encoder_tv_dac* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %179
  store i32 0, i32* %4, align 4
  br label %291

187:                                              ; preds = %179
  %188 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %189 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = load i64, i64* @radeon_r4xx_atom, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %191, %187
  %195 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %196 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %195, i32 0, i32 4
  %197 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %196, align 8
  %198 = bitcast %struct.radeon_encoder_tv_dac* %197 to %struct.radeon_encoder_atom_dac*
  store %struct.radeon_encoder_atom_dac* %198, %struct.radeon_encoder_atom_dac** %14, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %14, align 8
  %201 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  br label %209

202:                                              ; preds = %191
  %203 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %204 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %203, i32 0, i32 4
  %205 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %204, align 8
  store %struct.radeon_encoder_tv_dac* %205, %struct.radeon_encoder_tv_dac** %15, align 8
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %15, align 8
  %208 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %202, %194
  %210 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %211 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %210, i32 0, i32 3
  %212 = call i32 @radeon_property_change_mode(i32* %211)
  br label %213

213:                                              ; preds = %209, %158
  %214 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %215 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load %struct.drm_property*, %struct.drm_property** %217, align 8
  %219 = icmp eq %struct.drm_property* %214, %218
  br i1 %219, label %220, label %232

220:                                              ; preds = %213
  %221 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %222 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %221)
  store %struct.radeon_connector* %222, %struct.radeon_connector** %16, align 8
  %223 = load i32, i32* %7, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.radeon_connector*, %struct.radeon_connector** %16, align 8
  %227 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %226, i32 0, i32 0
  store i32 0, i32* %227, align 4
  br label %231

228:                                              ; preds = %220
  %229 = load %struct.radeon_connector*, %struct.radeon_connector** %16, align 8
  %230 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %229, i32 0, i32 0
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %225
  br label %232

232:                                              ; preds = %231, %213
  %233 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %234 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %235 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load %struct.drm_property*, %struct.drm_property** %236, align 8
  %238 = icmp eq %struct.drm_property* %233, %237
  br i1 %238, label %239, label %290

239:                                              ; preds = %232
  store %struct.radeon_encoder_int_tmds* null, %struct.radeon_encoder_int_tmds** %17, align 8
  store i32 0, i32* %18, align 4
  %240 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %241 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %242 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %240, i32 %241)
  store %struct.drm_encoder* %242, %struct.drm_encoder** %10, align 8
  %243 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %244 = icmp ne %struct.drm_encoder* %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %239
  store i32 0, i32* %4, align 4
  br label %291

246:                                              ; preds = %239
  %247 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %248 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %247)
  store %struct.radeon_encoder* %248, %struct.radeon_encoder** %11, align 8
  %249 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %250 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %249, i32 0, i32 4
  %251 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %250, align 8
  %252 = bitcast %struct.radeon_encoder_tv_dac* %251 to %struct.radeon_encoder_int_tmds*
  store %struct.radeon_encoder_int_tmds* %252, %struct.radeon_encoder_int_tmds** %17, align 8
  %253 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %17, align 8
  %254 = icmp ne %struct.radeon_encoder_int_tmds* %253, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %246
  store i32 0, i32* %4, align 4
  br label %291

256:                                              ; preds = %246
  %257 = load i32, i32* %7, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %275

259:                                              ; preds = %256
  %260 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %261 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %259
  %265 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %266 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %17, align 8
  %267 = bitcast %struct.radeon_encoder_int_tmds* %266 to %struct.radeon_encoder_tv_dac*
  %268 = call i32 @radeon_atombios_get_tmds_info(%struct.radeon_encoder* %265, %struct.radeon_encoder_tv_dac* %267)
  store i32 %268, i32* %18, align 4
  br label %274

269:                                              ; preds = %259
  %270 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %271 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %17, align 8
  %272 = bitcast %struct.radeon_encoder_int_tmds* %271 to %struct.radeon_encoder_tv_dac*
  %273 = call i32 @radeon_legacy_get_tmds_info_from_combios(%struct.radeon_encoder* %270, %struct.radeon_encoder_tv_dac* %272)
  store i32 %273, i32* %18, align 4
  br label %274

274:                                              ; preds = %269, %264
  br label %275

275:                                              ; preds = %274, %256
  %276 = load i32, i32* %7, align 4
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %281, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %18, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %278, %275
  %282 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %283 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %17, align 8
  %284 = bitcast %struct.radeon_encoder_int_tmds* %283 to %struct.radeon_encoder_tv_dac*
  %285 = call i32 @radeon_legacy_get_tmds_info_from_table(%struct.radeon_encoder* %282, %struct.radeon_encoder_tv_dac* %284)
  br label %286

286:                                              ; preds = %281, %278
  %287 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %288 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %287, i32 0, i32 3
  %289 = call i32 @radeon_property_change_mode(i32* %288)
  br label %290

290:                                              ; preds = %286, %232
  store i32 0, i32* %4, align 4
  br label %291

291:                                              ; preds = %290, %255, %245, %186, %178, %141, %111, %81, %45, %37
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector*, i32) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_property_change_mode(i32*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_atombios_get_tmds_info(%struct.radeon_encoder*, %struct.radeon_encoder_tv_dac*) #1

declare dso_local i32 @radeon_legacy_get_tmds_info_from_combios(%struct.radeon_encoder*, %struct.radeon_encoder_tv_dac*) #1

declare dso_local i32 @radeon_legacy_get_tmds_info_from_table(%struct.radeon_encoder*, %struct.radeon_encoder_tv_dac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

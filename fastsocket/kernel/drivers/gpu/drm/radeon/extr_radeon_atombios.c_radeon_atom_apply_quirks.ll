; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_apply_quirks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_apply_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__*, %struct.radeon_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.radeon_device = type { i32 }
%struct.radeon_i2c_bus_rec = type { i32 }
%struct.radeon_hpd = type { i32 }

@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP3_SUPPORT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP2_SUPPORT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVII = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_9PinDIN = common dso_local global i32 0, align 4
@CONNECTOR_7PIN_DIN_ENUM_ID1 = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT_SUPPORT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32*, %struct.radeon_i2c_bus_rec*, i32*, %struct.radeon_hpd*)* @radeon_atom_apply_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atom_apply_quirks(%struct.drm_device* %0, i32 %1, i32* %2, %struct.radeon_i2c_bus_rec* %3, i32* %4, %struct.radeon_hpd* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.radeon_hpd*, align 8
  %14 = alloca %struct.radeon_device*, align 8
  %15 = alloca %struct.radeon_i2c_bus_rec, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store %struct.radeon_i2c_bus_rec* %3, %struct.radeon_i2c_bus_rec** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.radeon_hpd* %5, %struct.radeon_hpd** %13, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 31006
  br i1 %21, label %22, label %49

22:                                               ; preds = %6
  %23 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 4163
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 33389
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ATOM_DEVICE_DFP3_SUPPORT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %41, %36
  br label %49

49:                                               ; preds = %48, %29, %22, %6
  %50 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 31041
  br i1 %55, label %56, label %83

56:                                               ; preds = %49
  %57 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 6217
  br i1 %62, label %63, label %83

63:                                               ; preds = %56
  %64 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 31041
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @ATOM_DEVICE_DFP3_SUPPORT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %75, %70
  br label %83

83:                                               ; preds = %82, %63, %56, %49
  %84 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %85 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 31086
  br i1 %89, label %90, label %114

90:                                               ; preds = %83
  %91 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 5218
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 29442
  br i1 %103, label %104, label %114

104:                                              ; preds = %97
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @ATOM_DEVICE_DFP3_SUPPORT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %104
  store i32 0, i32* %7, align 4
  br label %515

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %97, %90, %83
  %115 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %116 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 31041
  br i1 %120, label %121, label %142

121:                                              ; preds = %114
  %122 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %123 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 5243
  br i1 %127, label %128, label %142

128:                                              ; preds = %121
  %129 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %130 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 9234
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 0, i32* %7, align 4
  br label %515

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %128, %121, %114
  %143 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %144 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 22099
  br i1 %148, label %149, label %173

149:                                              ; preds = %142
  %150 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %151 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 5218
  br i1 %155, label %156, label %173

156:                                              ; preds = %149
  %157 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %158 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 657
  br i1 %162, label %163, label %173

163:                                              ; preds = %156
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %11, align 8
  %170 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %169, i32 0, i32 0
  store i32 0, i32* %170, align 4
  %171 = load i32*, i32** %12, align 8
  store i32 53, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %163
  br label %173

173:                                              ; preds = %172, %156, %149, %142
  %174 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %175 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 28998
  br i1 %179, label %180, label %200

180:                                              ; preds = %173
  %181 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %182 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %181, i32 0, i32 0
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 6063
  br i1 %186, label %187, label %200

187:                                              ; preds = %180
  %188 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %189 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 8280
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 0, i32* %7, align 4
  br label %515

199:                                              ; preds = %194
  br label %200

200:                                              ; preds = %199, %187, %180, %173
  %201 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %202 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %201, i32 0, i32 0
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 28994
  br i1 %206, label %207, label %227

207:                                              ; preds = %200
  %208 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %209 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %208, i32 0, i32 0
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 5208
  br i1 %213, label %214, label %227

214:                                              ; preds = %207
  %215 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %216 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %215, i32 0, i32 0
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 8500
  br i1 %220, label %221, label %227

221:                                              ; preds = %214
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  store i32 0, i32* %7, align 4
  br label %515

226:                                              ; preds = %221
  br label %227

227:                                              ; preds = %226, %214, %207, %200
  %228 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %229 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %228, i32 0, i32 0
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 29125
  br i1 %233, label %234, label %264

234:                                              ; preds = %227
  %235 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %236 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %235, i32 0, i32 0
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 4203
  br i1 %240, label %241, label %264

241:                                              ; preds = %234
  %242 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %243 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %242, i32 0, i32 0
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 128
  br i1 %247, label %248, label %264

248:                                              ; preds = %241
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252, %248
  store i32 0, i32* %7, align 4
  br label %515

257:                                              ; preds = %252
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = load i32*, i32** %12, align 8
  store i32 144, i32* %262, align 4
  br label %263

263:                                              ; preds = %261, %257
  br label %264

264:                                              ; preds = %263, %241, %234, %227
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %278

268:                                              ; preds = %264
  %269 = load i32*, i32** %10, align 8
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load i32, i32* @DRM_MODE_CONNECTOR_9PinDIN, align 4
  %275 = load i32*, i32** %10, align 8
  store i32 %274, i32* %275, align 4
  %276 = load i32, i32* @CONNECTOR_7PIN_DIN_ENUM_ID1, align 4
  %277 = load i32*, i32** %12, align 8
  store i32 %276, i32* %277, align 4
  br label %278

278:                                              ; preds = %273, %268, %264
  %279 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %280 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %279, i32 0, i32 0
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 38296
  br i1 %284, label %285, label %308

285:                                              ; preds = %278
  %286 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %287 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %286, i32 0, i32 0
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 4163
  br i1 %291, label %292, label %308

292:                                              ; preds = %285
  %293 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %294 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %293, i32 0, i32 0
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 474
  br i1 %298, label %299, label %308

299:                                              ; preds = %292
  %300 = load i32*, i32** %10, align 8
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %299
  %305 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %306 = load i32*, i32** %10, align 8
  store i32 %305, i32* %306, align 4
  br label %307

307:                                              ; preds = %304, %299
  br label %308

308:                                              ; preds = %307, %292, %285, %278
  %309 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %310 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %309, i32 0, i32 0
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = icmp eq i32 %313, 38296
  br i1 %314, label %315, label %338

315:                                              ; preds = %308
  %316 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %317 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %316, i32 0, i32 0
  %318 = load %struct.TYPE_2__*, %struct.TYPE_2__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %320, 4163
  br i1 %321, label %322, label %338

322:                                              ; preds = %315
  %323 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %324 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %323, i32 0, i32 0
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 484
  br i1 %328, label %329, label %338

329:                                              ; preds = %322
  %330 = load i32*, i32** %10, align 8
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %336 = load i32*, i32** %10, align 8
  store i32 %335, i32* %336, align 4
  br label %337

337:                                              ; preds = %334, %329
  br label %338

338:                                              ; preds = %337, %322, %315, %308
  %339 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %340 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %339, i32 0, i32 0
  %341 = load %struct.TYPE_2__*, %struct.TYPE_2__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 38341
  br i1 %344, label %345, label %368

345:                                              ; preds = %338
  %346 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %347 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %346, i32 0, i32 0
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = icmp eq i32 %350, 4163
  br i1 %351, label %352, label %368

352:                                              ; preds = %345
  %353 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %354 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %353, i32 0, i32 0
  %355 = load %struct.TYPE_2__*, %struct.TYPE_2__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 482
  br i1 %358, label %359, label %368

359:                                              ; preds = %352
  %360 = load i32*, i32** %10, align 8
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %366 = load i32*, i32** %10, align 8
  store i32 %365, i32* %366, align 4
  br label %367

367:                                              ; preds = %364, %359
  br label %368

368:                                              ; preds = %367, %352, %345, %338
  %369 = load i32*, i32** %10, align 8
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %383

373:                                              ; preds = %368
  %374 = load i32, i32* %9, align 4
  %375 = load i32, i32* @ATOM_DEVICE_CRT_SUPPORT, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %373
  %379 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %380 = load i32*, i32** %10, align 8
  store i32 %379, i32* %380, align 4
  %381 = load i32*, i32** %12, align 8
  store i32 0, i32* %381, align 4
  br label %382

382:                                              ; preds = %378, %373
  br label %383

383:                                              ; preds = %382, %368
  %384 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %385 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %384, i32 0, i32 0
  %386 = load %struct.TYPE_2__*, %struct.TYPE_2__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = icmp eq i32 %388, 38340
  br i1 %389, label %397, label %390

390:                                              ; preds = %383
  %391 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %392 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %391, i32 0, i32 0
  %393 = load %struct.TYPE_2__*, %struct.TYPE_2__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, 38289
  br i1 %396, label %397, label %424

397:                                              ; preds = %390, %383
  %398 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %399 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %398, i32 0, i32 0
  %400 = load %struct.TYPE_2__*, %struct.TYPE_2__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = icmp eq i32 %402, 4133
  br i1 %403, label %404, label %424

404:                                              ; preds = %397
  %405 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %406 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %405, i32 0, i32 0
  %407 = load %struct.TYPE_2__*, %struct.TYPE_2__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = icmp eq i32 %409, 316
  br i1 %410, label %411, label %424

411:                                              ; preds = %404
  %412 = load i32*, i32** %10, align 8
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %416, label %423

416:                                              ; preds = %411
  %417 = load i32, i32* %9, align 4
  %418 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %420, label %423

420:                                              ; preds = %416
  %421 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %422 = load i32*, i32** %10, align 8
  store i32 %421, i32* %422, align 4
  store i32 0, i32* %7, align 4
  br label %515

423:                                              ; preds = %416, %411
  br label %424

424:                                              ; preds = %423, %404, %397, %390
  %425 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %426 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %425, i32 0, i32 0
  %427 = load %struct.TYPE_2__*, %struct.TYPE_2__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = icmp eq i32 %429, 38040
  br i1 %430, label %431, label %467

431:                                              ; preds = %424
  %432 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %433 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %432, i32 0, i32 0
  %434 = load %struct.TYPE_2__*, %struct.TYPE_2__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = icmp eq i32 %436, 5762
  br i1 %437, label %438, label %467

438:                                              ; preds = %431
  %439 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %440 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %439, i32 0, i32 0
  %441 = load %struct.TYPE_2__*, %struct.TYPE_2__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 4
  %444 = icmp eq i32 %443, 9298
  br i1 %444, label %445, label %467

445:                                              ; preds = %438
  %446 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %11, align 8
  %447 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %467

450:                                              ; preds = %445
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %453 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %454 = or i32 %452, %453
  %455 = and i32 %451, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %467, label %457

457:                                              ; preds = %450
  %458 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %459 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %458, i32 0, i32 1
  %460 = load %struct.radeon_device*, %struct.radeon_device** %459, align 8
  store %struct.radeon_device* %460, %struct.radeon_device** %14, align 8
  %461 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %11, align 8
  %462 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %463 = call i32 @radeon_lookup_i2c_gpio(%struct.radeon_device* %462, i32 147)
  %464 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %15, i32 0, i32 0
  store i32 %463, i32* %464, align 4
  %465 = bitcast %struct.radeon_i2c_bus_rec* %461 to i8*
  %466 = bitcast %struct.radeon_i2c_bus_rec* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %465, i8* align 4 %466, i64 4, i1 false)
  br label %467

467:                                              ; preds = %457, %450, %445, %438, %431, %424
  %468 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %469 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %468, i32 0, i32 0
  %470 = load %struct.TYPE_2__*, %struct.TYPE_2__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = icmp eq i32 %472, 38914
  br i1 %473, label %481, label %474

474:                                              ; preds = %467
  %475 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %476 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %475, i32 0, i32 0
  %477 = load %struct.TYPE_2__*, %struct.TYPE_2__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = icmp eq i32 %479, 38918
  br i1 %480, label %481, label %514

481:                                              ; preds = %474, %467
  %482 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %483 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %482, i32 0, i32 0
  %484 = load %struct.TYPE_2__*, %struct.TYPE_2__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = icmp eq i32 %486, 5940
  br i1 %487, label %488, label %514

488:                                              ; preds = %481
  %489 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %490 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %489, i32 0, i32 0
  %491 = load %struct.TYPE_2__*, %struct.TYPE_2__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 4
  %494 = icmp eq i32 %493, 4541
  br i1 %494, label %495, label %514

495:                                              ; preds = %488
  %496 = load i32*, i32** %10, align 8
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %500, label %504

500:                                              ; preds = %495
  %501 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %502 = load i32*, i32** %10, align 8
  store i32 %501, i32* %502, align 4
  %503 = load i32*, i32** %12, align 8
  store i32 12547, i32* %503, align 4
  br label %513

504:                                              ; preds = %495
  %505 = load i32*, i32** %10, align 8
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %512

509:                                              ; preds = %504
  %510 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %511 = load i32*, i32** %10, align 8
  store i32 %510, i32* %511, align 4
  br label %512

512:                                              ; preds = %509, %504
  br label %513

513:                                              ; preds = %512, %500
  br label %514

514:                                              ; preds = %513, %488, %481, %474
  store i32 1, i32* %7, align 4
  br label %515

515:                                              ; preds = %514, %420, %256, %225, %198, %140, %112
  %516 = load i32, i32* %7, align 4
  ret i32 %516
}

declare dso_local i32 @radeon_lookup_i2c_gpio(%struct.radeon_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

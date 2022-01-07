; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_set_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_set_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*, i64)* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.soc_camera_host = type { %struct.mx3_camera_dev* }
%struct.mx3_camera_dev = type { i32 }
%struct.soc_camera_format_xlate = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Format %x not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"requested bus width %d bit: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Flags cam: 0x%lx host: 0x%lx common: 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"no common flags\00", align 1
@SOCAM_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@MX3_CAMERA_HSP = common dso_local global i32 0, align 4
@SOCAM_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@MX3_CAMERA_VSP = common dso_local global i32 0, align 4
@SOCAM_DATA_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_DATA_ACTIVE_LOW = common dso_local global i64 0, align 8
@MX3_CAMERA_DP = common dso_local global i32 0, align 4
@SOCAM_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@SOCAM_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@MX3_CAMERA_PCP = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_15 = common dso_local global i64 0, align 8
@SOCAM_DATAWIDTH_MASK = common dso_local global i64 0, align 8
@SOCAM_DATAWIDTH_10 = common dso_local global i64 0, align 8
@SOCAM_DATAWIDTH_8 = common dso_local global i64 0, align 8
@SOCAM_DATAWIDTH_4 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"camera set_bus_param(%lx) returned %d\0A\00", align 1
@CSI_SENS_CONF = common dso_local global i32 0, align 4
@CSI_SENS_CONF_VSYNC_POL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_HSYNC_POL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_POL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_PIX_CLK_POL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_FMT_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_WIDTH_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_FMT_BAYER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Set SENS_CONF to %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i32)* @mx3_camera_set_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3_camera_set_bus_param(%struct.soc_camera_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.mx3_camera_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.soc_camera_format_xlate*, align 8
  %15 = alloca %struct.device*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %17 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  %20 = call %struct.soc_camera_host* @to_soc_camera_host(%struct.device* %19)
  store %struct.soc_camera_host* %20, %struct.soc_camera_host** %6, align 8
  %21 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %22 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %21, i32 0, i32 0
  %23 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %22, align 8
  store %struct.mx3_camera_dev* %23, %struct.mx3_camera_dev** %7, align 8
  %24 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %7, align 8
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %26 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @test_platform_param(%struct.mx3_camera_dev* %24, i32 %27, i64* %8)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %30 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.device*, %struct.device** %31, align 8
  store %struct.device* %32, %struct.device** %15, align 8
  %33 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %33, i32 %34)
  store %struct.soc_camera_format_xlate* %35, %struct.soc_camera_format_xlate** %14, align 8
  %36 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %14, align 8
  %37 = icmp ne %struct.soc_camera_format_xlate* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %2
  %39 = load %struct.device*, %struct.device** %15, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_warn(%struct.device* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %348

44:                                               ; preds = %2
  %45 = load %struct.device*, %struct.device** %15, align 8
  %46 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %47 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %3, align 4
  br label %348

55:                                               ; preds = %44
  %56 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %57 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64 (%struct.soc_camera_device*)*, i64 (%struct.soc_camera_device*)** %59, align 8
  %61 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %62 = call i64 %60(%struct.soc_camera_device* %61)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i64 @soc_camera_bus_param_compatible(i64 %63, i64 %64)
  store i64 %65, i64* %10, align 8
  %66 = load %struct.device*, %struct.device** %15, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %67, i64 %68, i64 %69)
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %55
  %74 = load %struct.device*, %struct.device** %15, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %348

78:                                               ; preds = %55
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %83
  %89 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %7, align 8
  %90 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MX3_CAMERA_HSP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %97 = xor i64 %96, -1
  %98 = load i64, i64* %10, align 8
  %99 = and i64 %98, %97
  store i64 %99, i64* %10, align 8
  br label %105

100:                                              ; preds = %88
  %101 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %102 = xor i64 %101, -1
  %103 = load i64, i64* %10, align 8
  %104 = and i64 %103, %102
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %105, %83, %78
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %106
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %7, align 8
  %118 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MX3_CAMERA_VSP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %125 = xor i64 %124, -1
  %126 = load i64, i64* %10, align 8
  %127 = and i64 %126, %125
  store i64 %127, i64* %10, align 8
  br label %133

128:                                              ; preds = %116
  %129 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %130 = xor i64 %129, -1
  %131 = load i64, i64* %10, align 8
  %132 = and i64 %131, %130
  store i64 %132, i64* %10, align 8
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133, %111, %106
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* @SOCAM_DATA_ACTIVE_HIGH, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %134
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* @SOCAM_DATA_ACTIVE_LOW, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %139
  %145 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %7, align 8
  %146 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MX3_CAMERA_DP, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load i64, i64* @SOCAM_DATA_ACTIVE_HIGH, align 8
  %153 = xor i64 %152, -1
  %154 = load i64, i64* %10, align 8
  %155 = and i64 %154, %153
  store i64 %155, i64* %10, align 8
  br label %161

156:                                              ; preds = %144
  %157 = load i64, i64* @SOCAM_DATA_ACTIVE_LOW, align 8
  %158 = xor i64 %157, -1
  %159 = load i64, i64* %10, align 8
  %160 = and i64 %159, %158
  store i64 %160, i64* %10, align 8
  br label %161

161:                                              ; preds = %156, %151
  br label %162

162:                                              ; preds = %161, %139, %134
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %165 = and i64 %163, %164
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %162
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %170 = and i64 %168, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %167
  %173 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %7, align 8
  %174 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MX3_CAMERA_PCP, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %181 = xor i64 %180, -1
  %182 = load i64, i64* %10, align 8
  %183 = and i64 %182, %181
  store i64 %183, i64* %10, align 8
  br label %189

184:                                              ; preds = %172
  %185 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %186 = xor i64 %185, -1
  %187 = load i64, i64* %10, align 8
  %188 = and i64 %187, %186
  store i64 %188, i64* %10, align 8
  br label %189

189:                                              ; preds = %184, %179
  br label %190

190:                                              ; preds = %189, %167, %162
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* @SOCAM_DATAWIDTH_15, align 8
  %193 = and i64 %191, %192
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %190
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* @SOCAM_DATAWIDTH_MASK, align 8
  %198 = xor i64 %197, -1
  %199 = and i64 %196, %198
  %200 = load i64, i64* @SOCAM_DATAWIDTH_15, align 8
  %201 = or i64 %199, %200
  store i64 %201, i64* %10, align 8
  br label %235

202:                                              ; preds = %190
  %203 = load i64, i64* %10, align 8
  %204 = load i64, i64* @SOCAM_DATAWIDTH_10, align 8
  %205 = and i64 %203, %204
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load i64, i64* %10, align 8
  %209 = load i64, i64* @SOCAM_DATAWIDTH_MASK, align 8
  %210 = xor i64 %209, -1
  %211 = and i64 %208, %210
  %212 = load i64, i64* @SOCAM_DATAWIDTH_10, align 8
  %213 = or i64 %211, %212
  store i64 %213, i64* %10, align 8
  br label %234

214:                                              ; preds = %202
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* @SOCAM_DATAWIDTH_8, align 8
  %217 = and i64 %215, %216
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load i64, i64* %10, align 8
  %221 = load i64, i64* @SOCAM_DATAWIDTH_MASK, align 8
  %222 = xor i64 %221, -1
  %223 = and i64 %220, %222
  %224 = load i64, i64* @SOCAM_DATAWIDTH_8, align 8
  %225 = or i64 %223, %224
  store i64 %225, i64* %10, align 8
  br label %233

226:                                              ; preds = %214
  %227 = load i64, i64* %10, align 8
  %228 = load i64, i64* @SOCAM_DATAWIDTH_MASK, align 8
  %229 = xor i64 %228, -1
  %230 = and i64 %227, %229
  %231 = load i64, i64* @SOCAM_DATAWIDTH_4, align 8
  %232 = or i64 %230, %231
  store i64 %232, i64* %10, align 8
  br label %233

233:                                              ; preds = %226, %219
  br label %234

234:                                              ; preds = %233, %207
  br label %235

235:                                              ; preds = %234, %195
  %236 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %237 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %236, i32 0, i32 0
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  %240 = load i32 (%struct.soc_camera_device*, i64)*, i32 (%struct.soc_camera_device*, i64)** %239, align 8
  %241 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %242 = load i64, i64* %10, align 8
  %243 = call i32 %240(%struct.soc_camera_device* %241, i64 %242)
  store i32 %243, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %235
  %247 = load %struct.device*, %struct.device** %15, align 8
  %248 = load i64, i64* %10, align 8
  %249 = load i32, i32* %13, align 4
  %250 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %247, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %248, i32 %249)
  %251 = load i32, i32* %13, align 4
  store i32 %251, i32* %3, align 4
  br label %348

252:                                              ; preds = %235
  %253 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %7, align 8
  %254 = load i32, i32* @CSI_SENS_CONF, align 4
  %255 = call i32 @csi_reg_read(%struct.mx3_camera_dev* %253, i32 %254)
  %256 = load i32, i32* @CSI_SENS_CONF_VSYNC_POL_SHIFT, align 4
  %257 = shl i32 1, %256
  %258 = load i32, i32* @CSI_SENS_CONF_HSYNC_POL_SHIFT, align 4
  %259 = shl i32 1, %258
  %260 = or i32 %257, %259
  %261 = load i32, i32* @CSI_SENS_CONF_DATA_POL_SHIFT, align 4
  %262 = shl i32 1, %261
  %263 = or i32 %260, %262
  %264 = load i32, i32* @CSI_SENS_CONF_PIX_CLK_POL_SHIFT, align 4
  %265 = shl i32 1, %264
  %266 = or i32 %263, %265
  %267 = load i32, i32* @CSI_SENS_CONF_DATA_FMT_SHIFT, align 4
  %268 = shl i32 3, %267
  %269 = or i32 %266, %268
  %270 = load i32, i32* @CSI_SENS_CONF_DATA_WIDTH_SHIFT, align 4
  %271 = shl i32 3, %270
  %272 = or i32 %269, %271
  %273 = xor i32 %272, -1
  %274 = and i32 %255, %273
  store i32 %274, i32* %12, align 4
  %275 = load i32, i32* @CSI_SENS_CONF_DATA_FMT_BAYER, align 4
  %276 = load i32, i32* %12, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %12, align 4
  %278 = load i64, i64* %10, align 8
  %279 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %280 = and i64 %278, %279
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %252
  %283 = load i32, i32* @CSI_SENS_CONF_PIX_CLK_POL_SHIFT, align 4
  %284 = shl i32 1, %283
  %285 = load i32, i32* %12, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %12, align 4
  br label %287

287:                                              ; preds = %282, %252
  %288 = load i64, i64* %10, align 8
  %289 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %290 = and i64 %288, %289
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %287
  %293 = load i32, i32* @CSI_SENS_CONF_HSYNC_POL_SHIFT, align 4
  %294 = shl i32 1, %293
  %295 = load i32, i32* %12, align 4
  %296 = or i32 %295, %294
  store i32 %296, i32* %12, align 4
  br label %297

297:                                              ; preds = %292, %287
  %298 = load i64, i64* %10, align 8
  %299 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %300 = and i64 %298, %299
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  %303 = load i32, i32* @CSI_SENS_CONF_VSYNC_POL_SHIFT, align 4
  %304 = shl i32 1, %303
  %305 = load i32, i32* %12, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %12, align 4
  br label %307

307:                                              ; preds = %302, %297
  %308 = load i64, i64* %10, align 8
  %309 = load i64, i64* @SOCAM_DATA_ACTIVE_LOW, align 8
  %310 = and i64 %308, %309
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = load i32, i32* @CSI_SENS_CONF_DATA_POL_SHIFT, align 4
  %314 = shl i32 1, %313
  %315 = load i32, i32* %12, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %12, align 4
  br label %317

317:                                              ; preds = %312, %307
  %318 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %14, align 8
  %319 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %318, i32 0, i32 0
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  switch i32 %322, label %332 [
    i32 4, label %323
    i32 8, label %326
    i32 10, label %329
    i32 15, label %333
  ]

323:                                              ; preds = %317
  %324 = load i32, i32* @CSI_SENS_CONF_DATA_WIDTH_SHIFT, align 4
  %325 = shl i32 0, %324
  store i32 %325, i32* %11, align 4
  br label %336

326:                                              ; preds = %317
  %327 = load i32, i32* @CSI_SENS_CONF_DATA_WIDTH_SHIFT, align 4
  %328 = shl i32 1, %327
  store i32 %328, i32* %11, align 4
  br label %336

329:                                              ; preds = %317
  %330 = load i32, i32* @CSI_SENS_CONF_DATA_WIDTH_SHIFT, align 4
  %331 = shl i32 2, %330
  store i32 %331, i32* %11, align 4
  br label %336

332:                                              ; preds = %317
  br label %333

333:                                              ; preds = %317, %332
  %334 = load i32, i32* @CSI_SENS_CONF_DATA_WIDTH_SHIFT, align 4
  %335 = shl i32 3, %334
  store i32 %335, i32* %11, align 4
  br label %336

336:                                              ; preds = %333, %329, %326, %323
  %337 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %7, align 8
  %338 = load i32, i32* %12, align 4
  %339 = load i32, i32* %11, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* @CSI_SENS_CONF, align 4
  %342 = call i32 @csi_reg_write(%struct.mx3_camera_dev* %337, i32 %340, i32 %341)
  %343 = load %struct.device*, %struct.device** %15, align 8
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* %11, align 4
  %346 = or i32 %344, %345
  %347 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %343, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %346)
  store i32 0, i32* %3, align 4
  br label %348

348:                                              ; preds = %336, %246, %73, %53, %38
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(%struct.device*) #1

declare dso_local i32 @test_platform_param(%struct.mx3_camera_dev*, i32, i64*) #1

declare dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i64 @soc_camera_bus_param_compatible(i64, i64) #1

declare dso_local i32 @csi_reg_read(%struct.mx3_camera_dev*, i32) #1

declare dso_local i32 @csi_reg_write(%struct.mx3_camera_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

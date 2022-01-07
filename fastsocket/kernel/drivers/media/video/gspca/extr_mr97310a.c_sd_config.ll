; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32, %struct.cam }
%struct.cam = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@MR97310A_GAIN_DEFAULT = common dso_local global i32 0, align 4
@vga_mode = common dso_local global i32 0, align 4
@CAM_TYPE_CIF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unknown CIF Sensor id : %02x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"MR97310A CIF camera detected, sensor: %d\00", align 1
@CAM_TYPE_VGA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Unknown VGA Sensor id Byte 0: %02x\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Defaults assumed, may not work\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Please report this\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"sensor_type corrected to 0\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Unknown VGA Sensor id Byte 1: %02x\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"MR97310A VGA camera detected, sensor: %d\00", align 1
@force_sensor_type = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Forcing sensor type to: %d\00", align 1
@NORM_BRIGHTNESS_IDX = common dso_local global i32 0, align 4
@ARGUS_QC_BRIGHTNESS_IDX = common dso_local global i32 0, align 4
@CONTRAST_IDX = common dso_local global i32 0, align 4
@SAKAR_CS_GAIN_IDX = common dso_local global i32 0, align 4
@MIN_CLOCKDIV_IDX = common dso_local global i32 0, align 4
@EXPOSURE_IDX = common dso_local global i32 0, align 4
@GAIN_IDX = common dso_local global i32 0, align 4
@MR97310A_CS_GAIN_DEFAULT = common dso_local global i32 0, align 4
@MR97310A_BRIGHTNESS_DEFAULT = common dso_local global i32 0, align 4
@MR97310A_EXPOSURE_DEFAULT = common dso_local global i32 0, align 4
@MR97310A_CONTRAST_DEFAULT = common dso_local global i32 0, align 4
@MR97310A_MIN_CLOCKDIV_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %6, align 8
  %12 = load i32, i32* @MR97310A_GAIN_DEFAULT, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 2
  store %struct.cam* %14, %struct.cam** %7, align 8
  %15 = load i32, i32* @vga_mode, align 4
  %16 = load %struct.cam*, %struct.cam** %7, align 8
  %17 = getelementptr inbounds %struct.cam, %struct.cam* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @vga_mode, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load %struct.cam*, %struct.cam** %7, align 8
  %21 = getelementptr inbounds %struct.cam, %struct.cam* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sd*, %struct.sd** %6, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %25 = call i32 @zero_the_pointer(%struct.gspca_dev* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %337

30:                                               ; preds = %2
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %32 = call i32 @stream_start(%struct.gspca_dev* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %337

37:                                               ; preds = %30
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %39 = call i32 @cam_get_response16(%struct.gspca_dev* %38, i32 7, i32 1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %337

44:                                               ; preds = %37
  %45 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %46 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 272
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %51 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 270
  br i1 %53, label %54, label %88

54:                                               ; preds = %49, %44
  %55 = load i64, i64* @CAM_TYPE_CIF, align 8
  %56 = load %struct.sd*, %struct.sd** %6, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.cam*, %struct.cam** %7, align 8
  %59 = getelementptr inbounds %struct.cam, %struct.cam* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %63 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %73 [
    i32 2, label %67
    i32 3, label %70
  ]

67:                                               ; preds = %54
  %68 = load %struct.sd*, %struct.sd** %6, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  br label %82

70:                                               ; preds = %54
  %71 = load %struct.sd*, %struct.sd** %6, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  br label %82

73:                                               ; preds = %54
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %75 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %337

82:                                               ; preds = %70, %67
  %83 = load i32, i32* @D_PROBE, align 4
  %84 = load %struct.sd*, %struct.sd** %6, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @PDEBUG(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %185

88:                                               ; preds = %49
  %89 = load i64, i64* @CAM_TYPE_VGA, align 8
  %90 = load %struct.sd*, %struct.sd** %6, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.sd*, %struct.sd** %6, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  %94 = load %struct.sd*, %struct.sd** %6, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.sd*, %struct.sd** %6, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %99 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %88
  %105 = load %struct.sd*, %struct.sd** %6, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 2
  store i32 2, i32* %106, align 8
  br label %131

107:                                              ; preds = %88
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %109 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 3
  br i1 %113, label %114, label %130

114:                                              ; preds = %107
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %116 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 4
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %123 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %129 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %130

130:                                              ; preds = %121, %114, %107
  br label %131

131:                                              ; preds = %130, %104
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %133 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %140 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 80
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load %struct.sd*, %struct.sd** %6, align 8
  %147 = getelementptr inbounds %struct.sd, %struct.sd* %146, i32 0, i32 3
  store i32 1, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %138, %131
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %150 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 4
  br i1 %154, label %155, label %179

155:                                              ; preds = %148
  %156 = load %struct.sd*, %struct.sd** %6, align 8
  %157 = getelementptr inbounds %struct.sd, %struct.sd* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %159 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  switch i32 %162, label %169 [
    i32 80, label %163
    i32 32, label %168
  ]

163:                                              ; preds = %155
  %164 = load %struct.sd*, %struct.sd** %6, align 8
  %165 = getelementptr inbounds %struct.sd, %struct.sd* %164, i32 0, i32 2
  store i32 0, i32* %165, align 8
  %166 = load i32, i32* @D_PROBE, align 4
  %167 = call i32 (i32, i8*, ...) @PDEBUG(i32 %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %178

168:                                              ; preds = %155
  br label %178

169:                                              ; preds = %155
  %170 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %171 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %174)
  %176 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %177 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %178

178:                                              ; preds = %169, %168, %163
  br label %179

179:                                              ; preds = %178, %148
  %180 = load i32, i32* @D_PROBE, align 4
  %181 = load %struct.sd*, %struct.sd** %6, align 8
  %182 = getelementptr inbounds %struct.sd, %struct.sd* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, ...) @PDEBUG(i32 %180, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %179, %82
  %186 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %187 = call i32 @sd_stopN(%struct.gspca_dev* %186)
  %188 = load i32, i32* @force_sensor_type, align 4
  %189 = icmp ne i32 %188, -1
  br i1 %189, label %190, label %203

190:                                              ; preds = %185
  %191 = load i32, i32* @force_sensor_type, align 4
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = load %struct.sd*, %struct.sd** %6, align 8
  %197 = getelementptr inbounds %struct.sd, %struct.sd* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* @D_PROBE, align 4
  %199 = load %struct.sd*, %struct.sd** %6, align 8
  %200 = getelementptr inbounds %struct.sd, %struct.sd* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (i32, i8*, ...) @PDEBUG(i32 %198, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %190, %185
  %204 = load %struct.sd*, %struct.sd** %6, align 8
  %205 = getelementptr inbounds %struct.sd, %struct.sd* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @CAM_TYPE_CIF, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %243

209:                                              ; preds = %203
  %210 = load %struct.sd*, %struct.sd** %6, align 8
  %211 = getelementptr inbounds %struct.sd, %struct.sd* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %228

214:                                              ; preds = %209
  %215 = load i32, i32* @NORM_BRIGHTNESS_IDX, align 4
  %216 = shl i32 1, %215
  %217 = load i32, i32* @ARGUS_QC_BRIGHTNESS_IDX, align 4
  %218 = shl i32 1, %217
  %219 = or i32 %216, %218
  %220 = load i32, i32* @CONTRAST_IDX, align 4
  %221 = shl i32 1, %220
  %222 = or i32 %219, %221
  %223 = load i32, i32* @SAKAR_CS_GAIN_IDX, align 4
  %224 = shl i32 1, %223
  %225 = or i32 %222, %224
  %226 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %227 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 8
  br label %242

228:                                              ; preds = %209
  %229 = load i32, i32* @ARGUS_QC_BRIGHTNESS_IDX, align 4
  %230 = shl i32 1, %229
  %231 = load i32, i32* @CONTRAST_IDX, align 4
  %232 = shl i32 1, %231
  %233 = or i32 %230, %232
  %234 = load i32, i32* @SAKAR_CS_GAIN_IDX, align 4
  %235 = shl i32 1, %234
  %236 = or i32 %233, %235
  %237 = load i32, i32* @MIN_CLOCKDIV_IDX, align 4
  %238 = shl i32 1, %237
  %239 = or i32 %236, %238
  %240 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %241 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 8
  br label %242

242:                                              ; preds = %228, %214
  br label %321

243:                                              ; preds = %203
  %244 = load %struct.sd*, %struct.sd** %6, align 8
  %245 = getelementptr inbounds %struct.sd, %struct.sd* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %271

248:                                              ; preds = %243
  %249 = load i32, i32* @NORM_BRIGHTNESS_IDX, align 4
  %250 = shl i32 1, %249
  %251 = load i32, i32* @ARGUS_QC_BRIGHTNESS_IDX, align 4
  %252 = shl i32 1, %251
  %253 = or i32 %250, %252
  %254 = load i32, i32* @EXPOSURE_IDX, align 4
  %255 = shl i32 1, %254
  %256 = or i32 %253, %255
  %257 = load i32, i32* @GAIN_IDX, align 4
  %258 = shl i32 1, %257
  %259 = or i32 %256, %258
  %260 = load i32, i32* @CONTRAST_IDX, align 4
  %261 = shl i32 1, %260
  %262 = or i32 %259, %261
  %263 = load i32, i32* @SAKAR_CS_GAIN_IDX, align 4
  %264 = shl i32 1, %263
  %265 = or i32 %262, %264
  %266 = load i32, i32* @MIN_CLOCKDIV_IDX, align 4
  %267 = shl i32 1, %266
  %268 = or i32 %265, %267
  %269 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %270 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 8
  br label %320

271:                                              ; preds = %243
  %272 = load %struct.sd*, %struct.sd** %6, align 8
  %273 = getelementptr inbounds %struct.sd, %struct.sd* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = icmp eq i32 %274, 2
  br i1 %275, label %276, label %291

276:                                              ; preds = %271
  %277 = load i32, i32* @NORM_BRIGHTNESS_IDX, align 4
  %278 = shl i32 1, %277
  %279 = load i32, i32* @ARGUS_QC_BRIGHTNESS_IDX, align 4
  %280 = shl i32 1, %279
  %281 = or i32 %278, %280
  %282 = load i32, i32* @GAIN_IDX, align 4
  %283 = shl i32 1, %282
  %284 = or i32 %281, %283
  %285 = load i32, i32* @MIN_CLOCKDIV_IDX, align 4
  %286 = shl i32 1, %285
  %287 = or i32 %284, %286
  %288 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %289 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 8
  %290 = load i32, i32* @MR97310A_CS_GAIN_DEFAULT, align 4
  store i32 %290, i32* %8, align 4
  br label %319

291:                                              ; preds = %271
  %292 = load %struct.sd*, %struct.sd** %6, align 8
  %293 = getelementptr inbounds %struct.sd, %struct.sd* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %307

296:                                              ; preds = %291
  %297 = load i32, i32* @NORM_BRIGHTNESS_IDX, align 4
  %298 = shl i32 1, %297
  %299 = load i32, i32* @CONTRAST_IDX, align 4
  %300 = shl i32 1, %299
  %301 = or i32 %298, %300
  %302 = load i32, i32* @SAKAR_CS_GAIN_IDX, align 4
  %303 = shl i32 1, %302
  %304 = or i32 %301, %303
  %305 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %306 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %305, i32 0, i32 1
  store i32 %304, i32* %306, align 8
  br label %318

307:                                              ; preds = %291
  %308 = load i32, i32* @ARGUS_QC_BRIGHTNESS_IDX, align 4
  %309 = shl i32 1, %308
  %310 = load i32, i32* @CONTRAST_IDX, align 4
  %311 = shl i32 1, %310
  %312 = or i32 %309, %311
  %313 = load i32, i32* @SAKAR_CS_GAIN_IDX, align 4
  %314 = shl i32 1, %313
  %315 = or i32 %312, %314
  %316 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %317 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 8
  br label %318

318:                                              ; preds = %307, %296
  br label %319

319:                                              ; preds = %318, %276
  br label %320

320:                                              ; preds = %319, %248
  br label %321

321:                                              ; preds = %320, %242
  %322 = load i32, i32* @MR97310A_BRIGHTNESS_DEFAULT, align 4
  %323 = load %struct.sd*, %struct.sd** %6, align 8
  %324 = getelementptr inbounds %struct.sd, %struct.sd* %323, i32 0, i32 8
  store i32 %322, i32* %324, align 8
  %325 = load i32, i32* @MR97310A_EXPOSURE_DEFAULT, align 4
  %326 = load %struct.sd*, %struct.sd** %6, align 8
  %327 = getelementptr inbounds %struct.sd, %struct.sd* %326, i32 0, i32 7
  store i32 %325, i32* %327, align 4
  %328 = load i32, i32* %8, align 4
  %329 = load %struct.sd*, %struct.sd** %6, align 8
  %330 = getelementptr inbounds %struct.sd, %struct.sd* %329, i32 0, i32 4
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* @MR97310A_CONTRAST_DEFAULT, align 4
  %332 = load %struct.sd*, %struct.sd** %6, align 8
  %333 = getelementptr inbounds %struct.sd, %struct.sd* %332, i32 0, i32 6
  store i32 %331, i32* %333, align 8
  %334 = load i32, i32* @MR97310A_MIN_CLOCKDIV_DEFAULT, align 4
  %335 = load %struct.sd*, %struct.sd** %6, align 8
  %336 = getelementptr inbounds %struct.sd, %struct.sd* %335, i32 0, i32 5
  store i32 %334, i32* %336, align 4
  store i32 0, i32* %3, align 4
  br label %337

337:                                              ; preds = %321, %73, %42, %35, %28
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @zero_the_pointer(%struct.gspca_dev*) #1

declare dso_local i32 @stream_start(%struct.gspca_dev*) #1

declare dso_local i32 @cam_get_response16(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @sd_stopN(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, %struct.cam }
%struct.cam = type { i8*, i8* }
%struct.sd = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@OV7xx0_SID = common dso_local global i32 0, align 4
@OV6xx0_SID = common dso_local global i32 0, align 4
@OV8xx0_SID = common dso_local global i32 0, align 4
@OV_HIRES_SID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Can't determine sensor slave IDs\00", align 1
@ov511_sif_mode = common dso_local global i8* null, align 8
@ov518_sif_mode = common dso_local global i8* null, align 8
@ov519_sif_mode = common dso_local global i8* null, align 8
@ovfx2_ov2610_mode = common dso_local global i8* null, align 8
@ovfx2_ov3610_mode = common dso_local global i8* null, align 8
@w9968cf_vga_mode = common dso_local global i8* null, align 8
@ctrl_dis = common dso_local global i32* null, align 8
@norm_2610 = common dso_local global i8* null, align 8
@norm_3620b = common dso_local global i8* null, align 8
@norm_6x20 = common dso_local global i8* null, align 8
@CONTRAST = common dso_local global i64 0, align 8
@norm_6x30 = common dso_local global i8* null, align 8
@norm_7610 = common dso_local global i8* null, align 8
@norm_7620 = common dso_local global i8* null, align 8
@norm_7640 = common dso_local global i8* null, align 8
@OV7670_R12_COM7 = common dso_local global i32 0, align 4
@OV7670_COM7_RESET = common dso_local global i32 0, align 4
@OV519_R57_SNAPSHOT = common dso_local global i32 0, align 4
@init_519_ov7660 = common dso_local global i8* null, align 8
@norm_7660 = common dso_local global i8* null, align 8
@COLORS = common dso_local global i64 0, align 8
@BRIGHTNESS = common dso_local global i64 0, align 8
@FREQ = common dso_local global i64 0, align 8
@norm_7670 = common dso_local global i8* null, align 8
@norm_8610 = common dso_local global i8* null, align 8
@D_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"OV519 Config failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 2
  store %struct.cam* %9, %struct.cam** %5, align 8
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %28 [
    i32 146, label %13
    i32 145, label %13
    i32 144, label %16
    i32 143, label %16
    i32 142, label %19
    i32 141, label %22
    i32 140, label %25
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @ov511_configure(%struct.gspca_dev* %14)
  br label %28

16:                                               ; preds = %1, %1
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = call i32 @ov518_configure(%struct.gspca_dev* %17)
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.sd*, %struct.sd** %4, align 8
  %21 = call i32 @ov519_configure(%struct.sd* %20)
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.sd*, %struct.sd** %4, align 8
  %24 = call i32 @ovfx2_configure(%struct.sd* %23)
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = call i32 @w9968cf_configure(%struct.sd* %26)
  br label %28

28:                                               ; preds = %1, %25, %22, %19, %16, %13
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 1
  store i32 -1, i32* %30, align 4
  %31 = load %struct.sd*, %struct.sd** %4, align 8
  %32 = load i32, i32* @OV7xx0_SID, align 4
  %33 = call i64 @init_ov_sensor(%struct.sd* %31, i32 %32)
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.sd*, %struct.sd** %4, align 8
  %37 = call i32 @ov7xx0_configure(%struct.sd* %36)
  br label %67

38:                                               ; preds = %28
  %39 = load %struct.sd*, %struct.sd** %4, align 8
  %40 = load i32, i32* @OV6xx0_SID, align 4
  %41 = call i64 @init_ov_sensor(%struct.sd* %39, i32 %40)
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.sd*, %struct.sd** %4, align 8
  %45 = call i32 @ov6xx0_configure(%struct.sd* %44)
  br label %66

46:                                               ; preds = %38
  %47 = load %struct.sd*, %struct.sd** %4, align 8
  %48 = load i32, i32* @OV8xx0_SID, align 4
  %49 = call i64 @init_ov_sensor(%struct.sd* %47, i32 %48)
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.sd*, %struct.sd** %4, align 8
  %53 = call i32 @ov8xx0_configure(%struct.sd* %52)
  br label %65

54:                                               ; preds = %46
  %55 = load %struct.sd*, %struct.sd** %4, align 8
  %56 = load i32, i32* @OV_HIRES_SID, align 4
  %57 = call i64 @init_ov_sensor(%struct.sd* %55, i32 %56)
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.sd*, %struct.sd** %4, align 8
  %61 = call i32 @ov_hires_configure(%struct.sd* %60)
  br label %64

62:                                               ; preds = %54
  %63 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %368

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %35
  %68 = load %struct.sd*, %struct.sd** %4, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %368

73:                                               ; preds = %67
  %74 = load %struct.sd*, %struct.sd** %4, align 8
  %75 = call i32 @ov51x_led_control(%struct.sd* %74, i32 0)
  %76 = load %struct.sd*, %struct.sd** %4, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %177 [
    i32 146, label %79
    i32 145, label %79
    i32 144, label %93
    i32 143, label %93
    i32 142, label %107
    i32 141, label %121
    i32 140, label %163
  ]

79:                                               ; preds = %73, %73
  %80 = load %struct.sd*, %struct.sd** %4, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i8*, i8** @ov511_sif_mode, align 8
  %86 = load %struct.cam*, %struct.cam** %5, align 8
  %87 = getelementptr inbounds %struct.cam, %struct.cam* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @ov511_sif_mode, align 8
  %89 = call i8* @ARRAY_SIZE(i8* %88)
  %90 = load %struct.cam*, %struct.cam** %5, align 8
  %91 = getelementptr inbounds %struct.cam, %struct.cam* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %84, %79
  br label %177

93:                                               ; preds = %73, %73
  %94 = load %struct.sd*, %struct.sd** %4, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load i8*, i8** @ov518_sif_mode, align 8
  %100 = load %struct.cam*, %struct.cam** %5, align 8
  %101 = getelementptr inbounds %struct.cam, %struct.cam* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @ov518_sif_mode, align 8
  %103 = call i8* @ARRAY_SIZE(i8* %102)
  %104 = load %struct.cam*, %struct.cam** %5, align 8
  %105 = getelementptr inbounds %struct.cam, %struct.cam* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %98, %93
  br label %177

107:                                              ; preds = %73
  %108 = load %struct.sd*, %struct.sd** %4, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i8*, i8** @ov519_sif_mode, align 8
  %114 = load %struct.cam*, %struct.cam** %5, align 8
  %115 = getelementptr inbounds %struct.cam, %struct.cam* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @ov519_sif_mode, align 8
  %117 = call i8* @ARRAY_SIZE(i8* %116)
  %118 = load %struct.cam*, %struct.cam** %5, align 8
  %119 = getelementptr inbounds %struct.cam, %struct.cam* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %112, %107
  br label %177

121:                                              ; preds = %73
  %122 = load %struct.sd*, %struct.sd** %4, align 8
  %123 = getelementptr inbounds %struct.sd, %struct.sd* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 139
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i8*, i8** @ovfx2_ov2610_mode, align 8
  %128 = load %struct.cam*, %struct.cam** %5, align 8
  %129 = getelementptr inbounds %struct.cam, %struct.cam* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** @ovfx2_ov2610_mode, align 8
  %131 = call i8* @ARRAY_SIZE(i8* %130)
  %132 = load %struct.cam*, %struct.cam** %5, align 8
  %133 = getelementptr inbounds %struct.cam, %struct.cam* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  br label %162

134:                                              ; preds = %121
  %135 = load %struct.sd*, %struct.sd** %4, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 138
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load i8*, i8** @ovfx2_ov3610_mode, align 8
  %141 = load %struct.cam*, %struct.cam** %5, align 8
  %142 = getelementptr inbounds %struct.cam, %struct.cam* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load i8*, i8** @ovfx2_ov3610_mode, align 8
  %144 = call i8* @ARRAY_SIZE(i8* %143)
  %145 = load %struct.cam*, %struct.cam** %5, align 8
  %146 = getelementptr inbounds %struct.cam, %struct.cam* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %161

147:                                              ; preds = %134
  %148 = load %struct.sd*, %struct.sd** %4, align 8
  %149 = getelementptr inbounds %struct.sd, %struct.sd* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load i8*, i8** @ov519_sif_mode, align 8
  %154 = load %struct.cam*, %struct.cam** %5, align 8
  %155 = getelementptr inbounds %struct.cam, %struct.cam* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i8*, i8** @ov519_sif_mode, align 8
  %157 = call i8* @ARRAY_SIZE(i8* %156)
  %158 = load %struct.cam*, %struct.cam** %5, align 8
  %159 = getelementptr inbounds %struct.cam, %struct.cam* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %152, %147
  br label %161

161:                                              ; preds = %160, %139
  br label %162

162:                                              ; preds = %161, %126
  br label %177

163:                                              ; preds = %73
  %164 = load %struct.sd*, %struct.sd** %4, align 8
  %165 = getelementptr inbounds %struct.sd, %struct.sd* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i8*, i8** @w9968cf_vga_mode, align 8
  %170 = call i8* @ARRAY_SIZE(i8* %169)
  %171 = getelementptr i8, i8* %170, i64 -1
  %172 = load %struct.cam*, %struct.cam** %5, align 8
  %173 = getelementptr inbounds %struct.cam, %struct.cam* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %168, %163
  %175 = load %struct.sd*, %struct.sd** %4, align 8
  %176 = call i32 @w9968cf_init(%struct.sd* %175)
  br label %177

177:                                              ; preds = %73, %174, %162, %120, %106, %92
  %178 = load i32*, i32** @ctrl_dis, align 8
  %179 = load %struct.sd*, %struct.sd** %4, align 8
  %180 = getelementptr inbounds %struct.sd, %struct.sd* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %186 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.sd*, %struct.sd** %4, align 8
  %188 = getelementptr inbounds %struct.sd, %struct.sd* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  switch i32 %189, label %224 [
    i32 139, label %190
    i32 138, label %198
    i32 137, label %206
    i32 136, label %212
    i32 135, label %212
    i32 134, label %232
    i32 133, label %232
    i32 132, label %238
    i32 131, label %238
    i32 130, label %244
    i32 129, label %340
    i32 128, label %358
  ]

190:                                              ; preds = %177
  %191 = load %struct.sd*, %struct.sd** %4, align 8
  %192 = load i8*, i8** @norm_2610, align 8
  %193 = load i8*, i8** @norm_2610, align 8
  %194 = call i8* @ARRAY_SIZE(i8* %193)
  %195 = call i32 @write_i2c_regvals(%struct.sd* %191, i8* %192, i8* %194)
  %196 = load %struct.sd*, %struct.sd** %4, align 8
  %197 = call i32 @i2c_w_mask(%struct.sd* %196, i32 19, i32 39, i32 39)
  br label %364

198:                                              ; preds = %177
  %199 = load %struct.sd*, %struct.sd** %4, align 8
  %200 = load i8*, i8** @norm_3620b, align 8
  %201 = load i8*, i8** @norm_3620b, align 8
  %202 = call i8* @ARRAY_SIZE(i8* %201)
  %203 = call i32 @write_i2c_regvals(%struct.sd* %199, i8* %200, i8* %202)
  %204 = load %struct.sd*, %struct.sd** %4, align 8
  %205 = call i32 @i2c_w_mask(%struct.sd* %204, i32 19, i32 39, i32 39)
  br label %364

206:                                              ; preds = %177
  %207 = load %struct.sd*, %struct.sd** %4, align 8
  %208 = load i8*, i8** @norm_6x20, align 8
  %209 = load i8*, i8** @norm_6x20, align 8
  %210 = call i8* @ARRAY_SIZE(i8* %209)
  %211 = call i32 @write_i2c_regvals(%struct.sd* %207, i8* %208, i8* %210)
  br label %364

212:                                              ; preds = %177, %177
  %213 = load %struct.sd*, %struct.sd** %4, align 8
  %214 = getelementptr inbounds %struct.sd, %struct.sd* %213, i32 0, i32 3
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = load i64, i64* @CONTRAST, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  store i32 200, i32* %218, align 4
  %219 = load %struct.sd*, %struct.sd** %4, align 8
  %220 = load i8*, i8** @norm_6x30, align 8
  %221 = load i8*, i8** @norm_6x30, align 8
  %222 = call i8* @ARRAY_SIZE(i8* %221)
  %223 = call i32 @write_i2c_regvals(%struct.sd* %219, i8* %220, i8* %222)
  br label %364

224:                                              ; preds = %177
  %225 = load %struct.sd*, %struct.sd** %4, align 8
  %226 = load i8*, i8** @norm_7610, align 8
  %227 = load i8*, i8** @norm_7610, align 8
  %228 = call i8* @ARRAY_SIZE(i8* %227)
  %229 = call i32 @write_i2c_regvals(%struct.sd* %225, i8* %226, i8* %228)
  %230 = load %struct.sd*, %struct.sd** %4, align 8
  %231 = call i32 @i2c_w_mask(%struct.sd* %230, i32 14, i32 0, i32 64)
  br label %364

232:                                              ; preds = %177, %177
  %233 = load %struct.sd*, %struct.sd** %4, align 8
  %234 = load i8*, i8** @norm_7620, align 8
  %235 = load i8*, i8** @norm_7620, align 8
  %236 = call i8* @ARRAY_SIZE(i8* %235)
  %237 = call i32 @write_i2c_regvals(%struct.sd* %233, i8* %234, i8* %236)
  br label %364

238:                                              ; preds = %177, %177
  %239 = load %struct.sd*, %struct.sd** %4, align 8
  %240 = load i8*, i8** @norm_7640, align 8
  %241 = load i8*, i8** @norm_7640, align 8
  %242 = call i8* @ARRAY_SIZE(i8* %241)
  %243 = call i32 @write_i2c_regvals(%struct.sd* %239, i8* %240, i8* %242)
  br label %364

244:                                              ; preds = %177
  %245 = load %struct.sd*, %struct.sd** %4, align 8
  %246 = load i32, i32* @OV7670_R12_COM7, align 4
  %247 = load i32, i32* @OV7670_COM7_RESET, align 4
  %248 = call i32 @i2c_w(%struct.sd* %245, i32 %246, i32 %247)
  %249 = call i32 @msleep(i32 14)
  %250 = load %struct.sd*, %struct.sd** %4, align 8
  %251 = load i32, i32* @OV519_R57_SNAPSHOT, align 4
  %252 = call i32 @reg_w(%struct.sd* %250, i32 %251, i32 35)
  %253 = load %struct.sd*, %struct.sd** %4, align 8
  %254 = load i8*, i8** @init_519_ov7660, align 8
  %255 = load i8*, i8** @init_519_ov7660, align 8
  %256 = call i8* @ARRAY_SIZE(i8* %255)
  %257 = call i32 @write_regvals(%struct.sd* %253, i8* %254, i8* %256)
  %258 = load %struct.sd*, %struct.sd** %4, align 8
  %259 = load i8*, i8** @norm_7660, align 8
  %260 = load i8*, i8** @norm_7660, align 8
  %261 = call i8* @ARRAY_SIZE(i8* %260)
  %262 = call i32 @write_i2c_regvals(%struct.sd* %258, i8* %259, i8* %261)
  %263 = load %struct.sd*, %struct.sd** %4, align 8
  %264 = getelementptr inbounds %struct.sd, %struct.sd* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  store i32 1, i32* %265, align 8
  %266 = load %struct.sd*, %struct.sd** %4, align 8
  %267 = getelementptr inbounds %struct.sd, %struct.sd* %266, i32 0, i32 2
  store i32 15, i32* %267, align 8
  %268 = load %struct.sd*, %struct.sd** %4, align 8
  %269 = call i32 @ov519_set_mode(%struct.sd* %268)
  %270 = load %struct.sd*, %struct.sd** %4, align 8
  %271 = call i32 @ov519_set_fr(%struct.sd* %270)
  %272 = load %struct.sd*, %struct.sd** %4, align 8
  %273 = getelementptr inbounds %struct.sd, %struct.sd* %272, i32 0, i32 3
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = load i64, i64* @COLORS, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  store i32 4, i32* %277, align 4
  %278 = load %struct.sd*, %struct.sd** %4, align 8
  %279 = getelementptr inbounds %struct.sd, %struct.sd* %278, i32 0, i32 3
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = load i64, i64* @COLORS, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  store i32 2, i32* %283, align 4
  %284 = load %struct.sd*, %struct.sd** %4, align 8
  %285 = getelementptr inbounds %struct.sd, %struct.sd* %284, i32 0, i32 3
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = load i64, i64* @COLORS, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 2
  store i32 2, i32* %289, align 4
  %290 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %291 = call i32 @setcolors(%struct.gspca_dev* %290)
  %292 = load %struct.sd*, %struct.sd** %4, align 8
  %293 = getelementptr inbounds %struct.sd, %struct.sd* %292, i32 0, i32 3
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = load i64, i64* @CONTRAST, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 1
  store i32 6, i32* %297, align 4
  %298 = load %struct.sd*, %struct.sd** %4, align 8
  %299 = getelementptr inbounds %struct.sd, %struct.sd* %298, i32 0, i32 3
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %299, align 8
  %301 = load i64, i64* @CONTRAST, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  store i32 3, i32* %303, align 4
  %304 = load %struct.sd*, %struct.sd** %4, align 8
  %305 = getelementptr inbounds %struct.sd, %struct.sd* %304, i32 0, i32 3
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %305, align 8
  %307 = load i64, i64* @CONTRAST, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 2
  store i32 3, i32* %309, align 4
  %310 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %311 = call i32 @setcontrast(%struct.gspca_dev* %310)
  %312 = load %struct.sd*, %struct.sd** %4, align 8
  %313 = getelementptr inbounds %struct.sd, %struct.sd* %312, i32 0, i32 3
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = load i64, i64* @BRIGHTNESS, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  store i32 6, i32* %317, align 4
  %318 = load %struct.sd*, %struct.sd** %4, align 8
  %319 = getelementptr inbounds %struct.sd, %struct.sd* %318, i32 0, i32 3
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = load i64, i64* @BRIGHTNESS, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  store i32 3, i32* %323, align 4
  %324 = load %struct.sd*, %struct.sd** %4, align 8
  %325 = getelementptr inbounds %struct.sd, %struct.sd* %324, i32 0, i32 3
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %325, align 8
  %327 = load i64, i64* @BRIGHTNESS, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 2
  store i32 3, i32* %329, align 4
  %330 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %331 = call i32 @setbrightness(%struct.gspca_dev* %330)
  %332 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %333 = call i32 @sd_reset_snapshot(%struct.gspca_dev* %332)
  %334 = load %struct.sd*, %struct.sd** %4, align 8
  %335 = call i32 @ov51x_restart(%struct.sd* %334)
  %336 = load %struct.sd*, %struct.sd** %4, align 8
  %337 = call i32 @ov51x_stop(%struct.sd* %336)
  %338 = load %struct.sd*, %struct.sd** %4, align 8
  %339 = call i32 @ov51x_led_control(%struct.sd* %338, i32 0)
  br label %364

340:                                              ; preds = %177
  %341 = load %struct.sd*, %struct.sd** %4, align 8
  %342 = getelementptr inbounds %struct.sd, %struct.sd* %341, i32 0, i32 3
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %342, align 8
  %344 = load i64, i64* @FREQ, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 1
  store i32 3, i32* %346, align 4
  %347 = load %struct.sd*, %struct.sd** %4, align 8
  %348 = getelementptr inbounds %struct.sd, %struct.sd* %347, i32 0, i32 3
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %348, align 8
  %350 = load i64, i64* @FREQ, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 0
  store i32 3, i32* %352, align 4
  %353 = load %struct.sd*, %struct.sd** %4, align 8
  %354 = load i8*, i8** @norm_7670, align 8
  %355 = load i8*, i8** @norm_7670, align 8
  %356 = call i8* @ARRAY_SIZE(i8* %355)
  %357 = call i32 @write_i2c_regvals(%struct.sd* %353, i8* %354, i8* %356)
  br label %364

358:                                              ; preds = %177
  %359 = load %struct.sd*, %struct.sd** %4, align 8
  %360 = load i8*, i8** @norm_8610, align 8
  %361 = load i8*, i8** @norm_8610, align 8
  %362 = call i8* @ARRAY_SIZE(i8* %361)
  %363 = call i32 @write_i2c_regvals(%struct.sd* %359, i8* %360, i8* %362)
  br label %364

364:                                              ; preds = %358, %340, %244, %238, %232, %224, %212, %206, %198, %190
  %365 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %366 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  store i32 %367, i32* %2, align 4
  br label %373

368:                                              ; preds = %72, %62
  %369 = load i32, i32* @D_ERR, align 4
  %370 = call i32 @PDEBUG(i32 %369, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %371 = load i32, i32* @EINVAL, align 4
  %372 = sub nsw i32 0, %371
  store i32 %372, i32* %2, align 4
  br label %373

373:                                              ; preds = %368, %364
  %374 = load i32, i32* %2, align 4
  ret i32 %374
}

declare dso_local i32 @ov511_configure(%struct.gspca_dev*) #1

declare dso_local i32 @ov518_configure(%struct.gspca_dev*) #1

declare dso_local i32 @ov519_configure(%struct.sd*) #1

declare dso_local i32 @ovfx2_configure(%struct.sd*) #1

declare dso_local i32 @w9968cf_configure(%struct.sd*) #1

declare dso_local i64 @init_ov_sensor(%struct.sd*, i32) #1

declare dso_local i32 @ov7xx0_configure(%struct.sd*) #1

declare dso_local i32 @ov6xx0_configure(%struct.sd*) #1

declare dso_local i32 @ov8xx0_configure(%struct.sd*) #1

declare dso_local i32 @ov_hires_configure(%struct.sd*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @ov51x_led_control(%struct.sd*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @w9968cf_init(%struct.sd*) #1

declare dso_local i32 @write_i2c_regvals(%struct.sd*, i8*, i8*) #1

declare dso_local i32 @i2c_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @write_regvals(%struct.sd*, i8*, i8*) #1

declare dso_local i32 @ov519_set_mode(%struct.sd*) #1

declare dso_local i32 @ov519_set_fr(%struct.sd*) #1

declare dso_local i32 @setcolors(%struct.gspca_dev*) #1

declare dso_local i32 @setcontrast(%struct.gspca_dev*) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

declare dso_local i32 @sd_reset_snapshot(%struct.gspca_dev*) #1

declare dso_local i32 @ov51x_restart(%struct.sd*) #1

declare dso_local i32 @ov51x_stop(%struct.sd*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

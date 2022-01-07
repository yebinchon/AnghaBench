; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stv0680.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stv0680.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, %struct.cam }
%struct.cam = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, %struct.TYPE_2__ }

@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"STV(e): camera ping failed!!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not get descriptor 0200.\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Camera supports neither CIF nor QVGA mode\00", align 1
@D_PROBE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Camera supports CIF mode\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Camera supports VGA mode\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Camera supports QCIF mode\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Camera supports QVGA mode\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Firmware rev is %i.%i\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"ASIC rev is %i.%i\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Sensor ID is %i\00", align 1
@EIO = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_STV0680 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Could not get descriptor 0100.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 1
  store %struct.cam* %12, %struct.cam** %8, align 8
  %13 = call i32 @msleep(i32 1000)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %15 = call i32 @stv_sndctrl(%struct.gspca_dev* %14, i32 0, i32 136, i32 22136, i32 2)
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 86
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 120
  br i1 %30, label %31, label %38

31:                                               ; preds = %24, %17, %2
  %32 = load i32, i32* @D_ERR, align 4
  %33 = call i32 (i32, i8*, ...) @PDEBUG(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @stv0680_handle_error(%struct.gspca_dev* %34, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %368

38:                                               ; preds = %24
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = call i32 @stv_sndctrl(%struct.gspca_dev* %39, i32 2, i32 6, i32 512, i32 9)
  %41 = icmp ne i32 %40, 9
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @stv0680_handle_error(%struct.gspca_dev* %43, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %368

47:                                               ; preds = %38
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = call i32 @stv_sndctrl(%struct.gspca_dev* %48, i32 2, i32 6, i32 512, i32 34)
  %50 = icmp ne i32 %49, 34
  br i1 %50, label %65, label %51

51:                                               ; preds = %47
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 160
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 35
  br i1 %64, label %65, label %72

65:                                               ; preds = %58, %51, %47
  %66 = load i32, i32* @D_ERR, align 4
  %67 = call i32 (i32, i8*, ...) @PDEBUG(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 @stv0680_handle_error(%struct.gspca_dev* %68, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %368

72:                                               ; preds = %58
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %74 = call i32 @stv_sndctrl(%struct.gspca_dev* %73, i32 0, i32 138, i32 0, i32 2)
  %75 = icmp ne i32 %74, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  %80 = call i32 @stv0680_handle_error(%struct.gspca_dev* %77, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %368

81:                                               ; preds = %72
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %83 = call i32 @stv_sndctrl(%struct.gspca_dev* %82, i32 0, i32 139, i32 0, i32 36)
  %84 = icmp ne i32 %83, 36
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @stv0680_handle_error(%struct.gspca_dev* %86, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %368

90:                                               ; preds = %81
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %92 = call i32 @stv_sndctrl(%struct.gspca_dev* %91, i32 0, i32 133, i32 0, i32 16)
  %93 = icmp ne i32 %92, 16
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  %98 = call i32 @stv0680_handle_error(%struct.gspca_dev* %95, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %368

99:                                               ; preds = %90
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %101 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 9
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @D_ERR, align 4
  %109 = call i32 (i32, i8*, ...) @PDEBUG(i32 %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %368

112:                                              ; preds = %99
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %114 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 7
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* @D_PROBE, align 4
  %122 = call i32 (i32, i8*, ...) @PDEBUG(i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %112
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %125 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 7
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 2
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* @D_PROBE, align 4
  %133 = call i32 (i32, i8*, ...) @PDEBUG(i32 %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %123
  %135 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %136 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 7
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32, i32* @D_PROBE, align 4
  %144 = call i32 (i32, i8*, ...) @PDEBUG(i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %134
  %146 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %147 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 7
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* @D_PROBE, align 4
  %155 = call i32 (i32, i8*, ...) @PDEBUG(i32 %154, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %145
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %158 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 7
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 1
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load %struct.sd*, %struct.sd** %7, align 8
  %166 = getelementptr inbounds %struct.sd, %struct.sd* %165, i32 0, i32 0
  store i32 0, i32* %166, align 4
  br label %170

167:                                              ; preds = %156
  %168 = load %struct.sd*, %struct.sd** %7, align 8
  %169 = getelementptr inbounds %struct.sd, %struct.sd* %168, i32 0, i32 0
  store i32 3, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i32, i32* @D_PROBE, align 4
  %172 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %173 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %178 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @PDEBUG(i32 %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %176, i32 %181)
  %183 = load i32, i32* @D_PROBE, align 4
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %185 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %190 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32, i8*, ...) @PDEBUG(i32 %183, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %188, i32 %193)
  %195 = load i32, i32* @D_PROBE, align 4
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %197 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 4
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %200, 16
  %202 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %203 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 5
  %206 = load i32, i32* %205, align 4
  %207 = ashr i32 %206, 4
  %208 = add nsw i32 %201, %207
  %209 = call i32 (i32, i8*, ...) @PDEBUG(i32 %195, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %208)
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %211 = call i32 @stv0680_get_video_mode(%struct.gspca_dev* %210)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %170
  %215 = load i32, i32* %6, align 4
  store i32 %215, i32* %3, align 4
  br label %368

216:                                              ; preds = %170
  %217 = load i32, i32* %6, align 4
  %218 = load %struct.sd*, %struct.sd** %7, align 8
  %219 = getelementptr inbounds %struct.sd, %struct.sd* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load %struct.sd*, %struct.sd** %7, align 8
  %221 = getelementptr inbounds %struct.sd, %struct.sd* %220, i32 0, i32 1
  store i32 %217, i32* %221, align 4
  %222 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %223 = load %struct.sd*, %struct.sd** %7, align 8
  %224 = getelementptr inbounds %struct.sd, %struct.sd* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @stv0680_set_video_mode(%struct.gspca_dev* %222, i32 %225)
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %6, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %216
  %230 = load i32, i32* %6, align 4
  store i32 %230, i32* %3, align 4
  br label %368

231:                                              ; preds = %216
  %232 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %233 = call i32 @stv_sndctrl(%struct.gspca_dev* %232, i32 0, i32 143, i32 0, i32 16)
  %234 = icmp ne i32 %233, 16
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %237 = load i32, i32* @EIO, align 4
  %238 = sub nsw i32 0, %237
  %239 = call i32 @stv0680_handle_error(%struct.gspca_dev* %236, i32 %238)
  store i32 %239, i32* %3, align 4
  br label %368

240:                                              ; preds = %231
  %241 = load %struct.cam*, %struct.cam** %8, align 8
  %242 = getelementptr inbounds %struct.cam, %struct.cam* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = load %struct.cam*, %struct.cam** %8, align 8
  %244 = getelementptr inbounds %struct.cam, %struct.cam* %243, i32 0, i32 1
  store i32 1, i32* %244, align 4
  %245 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %246 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = shl i32 %249, 24
  %251 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %252 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 %255, 16
  %257 = or i32 %250, %256
  %258 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %259 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  %262 = load i32, i32* %261, align 4
  %263 = shl i32 %262, 8
  %264 = or i32 %257, %263
  %265 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %266 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 3
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %264, %269
  %271 = load %struct.cam*, %struct.cam** %8, align 8
  %272 = getelementptr inbounds %struct.cam, %struct.cam* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 8
  %273 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %274 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 4
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %277, 8
  %279 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %280 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 5
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %278, %283
  %285 = load %struct.sd*, %struct.sd** %7, align 8
  %286 = getelementptr inbounds %struct.sd, %struct.sd* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 0
  store i32 %284, i32* %287, align 4
  %288 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %289 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 6
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 %292, 8
  %294 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %295 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 7
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %293, %298
  %300 = load %struct.sd*, %struct.sd** %7, align 8
  %301 = getelementptr inbounds %struct.sd, %struct.sd* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 1
  store i32 %299, i32* %302, align 4
  %303 = load i32, i32* @V4L2_PIX_FMT_STV0680, align 4
  %304 = load %struct.sd*, %struct.sd** %7, align 8
  %305 = getelementptr inbounds %struct.sd, %struct.sd* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 6
  store i32 %303, i32* %306, align 4
  %307 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %308 = load %struct.sd*, %struct.sd** %7, align 8
  %309 = getelementptr inbounds %struct.sd, %struct.sd* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 5
  store i32 %307, i32* %310, align 4
  %311 = load %struct.sd*, %struct.sd** %7, align 8
  %312 = getelementptr inbounds %struct.sd, %struct.sd* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.sd*, %struct.sd** %7, align 8
  %316 = getelementptr inbounds %struct.sd, %struct.sd* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 2
  store i32 %314, i32* %317, align 4
  %318 = load %struct.cam*, %struct.cam** %8, align 8
  %319 = getelementptr inbounds %struct.cam, %struct.cam* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.sd*, %struct.sd** %7, align 8
  %322 = getelementptr inbounds %struct.sd, %struct.sd* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 3
  store i32 %320, i32* %323, align 4
  %324 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %325 = load %struct.sd*, %struct.sd** %7, align 8
  %326 = getelementptr inbounds %struct.sd, %struct.sd* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 4
  store i32 %324, i32* %327, align 4
  %328 = load %struct.sd*, %struct.sd** %7, align 8
  %329 = getelementptr inbounds %struct.sd, %struct.sd* %328, i32 0, i32 3
  %330 = load %struct.cam*, %struct.cam** %8, align 8
  %331 = getelementptr inbounds %struct.cam, %struct.cam* %330, i32 0, i32 4
  store %struct.TYPE_2__* %329, %struct.TYPE_2__** %331, align 8
  %332 = load %struct.cam*, %struct.cam** %8, align 8
  %333 = getelementptr inbounds %struct.cam, %struct.cam* %332, i32 0, i32 3
  store i32 1, i32* %333, align 4
  %334 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %335 = load %struct.sd*, %struct.sd** %7, align 8
  %336 = getelementptr inbounds %struct.sd, %struct.sd* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @stv0680_set_video_mode(%struct.gspca_dev* %334, i32 %337)
  store i32 %338, i32* %6, align 4
  %339 = load i32, i32* %6, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %240
  %342 = load i32, i32* %6, align 4
  store i32 %342, i32* %3, align 4
  br label %368

343:                                              ; preds = %240
  %344 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %345 = call i32 @stv_sndctrl(%struct.gspca_dev* %344, i32 2, i32 6, i32 256, i32 18)
  %346 = icmp ne i32 %345, 18
  br i1 %346, label %361, label %347

347:                                              ; preds = %343
  %348 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %349 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 8
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %352, 83
  br i1 %353, label %361, label %354

354:                                              ; preds = %347
  %355 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %356 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 9
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 5
  br i1 %360, label %361, label %367

361:                                              ; preds = %354, %347, %343
  %362 = call i32 @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %363 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %364 = load i32, i32* @EIO, align 4
  %365 = sub nsw i32 0, %364
  %366 = call i32 @stv0680_handle_error(%struct.gspca_dev* %363, i32 %365)
  store i32 %366, i32* %3, align 4
  br label %368

367:                                              ; preds = %354
  store i32 0, i32* %3, align 4
  br label %368

368:                                              ; preds = %367, %361, %341, %235, %229, %214, %107, %94, %85, %76, %65, %42, %31
  %369 = load i32, i32* %3, align 4
  ret i32 %369
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stv_sndctrl(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @stv0680_handle_error(%struct.gspca_dev*, i32) #1

declare dso_local i32 @stv0680_get_video_mode(%struct.gspca_dev*) #1

declare dso_local i32 @stv0680_set_video_mode(%struct.gspca_dev*, i32) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

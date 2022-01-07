; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_sensor_if_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_sensor_if_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_device = type { i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_ifparm = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"vidioc_int_g_ifparm failed with %d\0A\00", align 1
@CC_CTRL_CC_EN = common dso_local global i32 0, align 4
@CC_CTRL_NOBT_SYNCHRO = common dso_local global i32 0, align 4
@CC_CTRL_BT_CORRECT = common dso_local global i32 0, align 4
@CC_CTRL_PAR_ORDERCAM = common dso_local global i32 0, align 4
@CC_CTRL_PAR_CLK_POL = common dso_local global i32 0, align 4
@CC_CTRL_NOBT_HS_POL = common dso_local global i32 0, align 4
@CC_CTRL_NOBT_VS_POL = common dso_local global i32 0, align 4
@CC_CTRL_PAR_MODE_NOBT8 = common dso_local global i32 0, align 4
@CC_CTRL_PAR_MODE_NOBT10 = common dso_local global i32 0, align 4
@CC_CTRL_PAR_MODE_NOBT12 = common dso_local global i32 0, align 4
@CC_CTRL_PAR_MODE_BT8 = common dso_local global i32 0, align 4
@CC_CTRL_PAR_MODE_BT10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"bt656 interface mode %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CAM_MCLK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"interface type %d not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap24xxcam_device*)* @omap24xxcam_sensor_if_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_sensor_if_enable(%struct.omap24xxcam_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap24xxcam_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_ifparm, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap24xxcam_device* %0, %struct.omap24xxcam_device** %3, align 8
  %8 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %9 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @vidioc_int_g_ifparm(i32 %10, %struct.v4l2_ifparm* %5)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %16 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %251

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %25 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @CC_CTRL_CC_EN, align 4
  %27 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %28 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %241 [
    i32 133, label %31
  ]

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @CC_CTRL_NOBT_SYNCHRO, align 4
  %39 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %40 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* @CC_CTRL_BT_CORRECT, align 4
  %51 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %52 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* @CC_CTRL_PAR_ORDERCAM, align 4
  %63 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %64 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %55
  %68 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @CC_CTRL_PAR_CLK_POL, align 4
  %75 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %76 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i32, i32* @CC_CTRL_NOBT_HS_POL, align 4
  %87 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %88 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %79
  %92 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32, i32* @CC_CTRL_NOBT_VS_POL, align 4
  %99 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %100 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %91
  %104 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %138 [
    i32 128, label %108
    i32 130, label %114
    i32 129, label %120
    i32 131, label %126
    i32 132, label %132
  ]

108:                                              ; preds = %103
  %109 = load i32, i32* @CC_CTRL_PAR_MODE_NOBT8, align 4
  %110 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %111 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %149

114:                                              ; preds = %103
  %115 = load i32, i32* @CC_CTRL_PAR_MODE_NOBT10, align 4
  %116 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %117 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %149

120:                                              ; preds = %103
  %121 = load i32, i32* @CC_CTRL_PAR_MODE_NOBT12, align 4
  %122 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %123 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %149

126:                                              ; preds = %103
  %127 = load i32, i32* @CC_CTRL_PAR_MODE_BT8, align 4
  %128 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %129 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %149

132:                                              ; preds = %103
  %133 = load i32, i32* @CC_CTRL_PAR_MODE_BT10, align 4
  %134 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %135 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %149

138:                                              ; preds = %103
  %139 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %140 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dev_err(i32 %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %251

149:                                              ; preds = %132, %126, %120, %114, %108
  %150 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %155 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %153, %158
  br i1 %159, label %160, label %233

160:                                              ; preds = %149
  %161 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %251

170:                                              ; preds = %160
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @CAM_MCLK, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @CAM_MCLK, align 4
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i32, i32* @CAM_MCLK, align 4
  %178 = load i32, i32* %6, align 4
  %179 = sdiv i32 %177, %178
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %6, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* @CAM_MCLK, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %176
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %185, %176
  %189 = load i32, i32* @CAM_MCLK, align 4
  %190 = load i32, i32* %7, align 4
  %191 = sdiv i32 %189, %190
  %192 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %191, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %188
  %198 = load i32, i32* %7, align 4
  %199 = icmp sgt i32 %198, 1
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %200, %197, %188
  %204 = load i32, i32* %7, align 4
  %205 = icmp sgt i32 %204, 30
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 30, i32* %7, align 4
  br label %207

207:                                              ; preds = %206, %203
  %208 = load i32, i32* @CAM_MCLK, align 4
  %209 = load i32, i32* %7, align 4
  %210 = sdiv i32 %208, %209
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %211, %215
  br i1 %216, label %224, label %217

217:                                              ; preds = %207
  %218 = load i32, i32* %6, align 4
  %219 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = icmp sgt i32 %218, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %217, %207
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %2, align 4
  br label %251

227:                                              ; preds = %217
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %230 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  store i32 %228, i32* %232, align 4
  br label %233

233:                                              ; preds = %227, %149
  %234 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %235 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %236 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @omap24xxcam_core_xclk_set(%struct.omap24xxcam_device* %234, i32 %239)
  br label %250

241:                                              ; preds = %21
  %242 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %243 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %5, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @dev_err(i32 %244, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %246)
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %2, align 4
  br label %251

250:                                              ; preds = %233
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %250, %241, %224, %167, %138, %14
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32 @vidioc_int_g_ifparm(i32, %struct.v4l2_ifparm*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @omap24xxcam_core_xclk_set(%struct.omap24xxcam_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

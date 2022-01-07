; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_ctrl_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_ctrl_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7134_fh = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32 }
%struct.v4l2_priv_tun_config = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"set_control name=%s val=%d\0A\00", align 1
@SAA7134_DEC_LUMA_BRIGHT = common dso_local global i32 0, align 4
@SAA7134_DEC_CHROMA_HUE = common dso_local global i32 0, align 4
@SAA7134_DEC_LUMA_CONTRAST = common dso_local global i32 0, align 4
@SAA7134_DEC_CHROMA_SATURATION = common dso_local global i32 0, align 4
@TUNER_TDA9887 = common dso_local global i32 0, align 4
@TDA9887_AUTOMUTE = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_config = common dso_local global i32 0, align 4
@RESOURCE_OVERLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_s_ctrl_internal(%struct.saa7134_dev* %0, %struct.saa7134_fh* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca %struct.saa7134_fh*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.v4l2_queryctrl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_priv_tun_config, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store %struct.saa7134_fh* %1, %struct.saa7134_fh** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %14 = icmp ne %struct.saa7134_fh* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %17 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %16, i32 0, i32 14
  %18 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %19 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @v4l2_prio_check(i32* %17, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 0, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %302

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %31 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.v4l2_queryctrl* @ctrl_by_id(i32 %35)
  store %struct.v4l2_queryctrl* %36, %struct.v4l2_queryctrl** %8, align 8
  %37 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %38 = icmp eq %struct.v4l2_queryctrl* null, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %297

40:                                               ; preds = %27
  %41 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %42 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %49 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %80 [
    i32 130, label %51
    i32 128, label %51
    i32 129, label %51
  ]

51:                                               ; preds = %40, %40, %40
  %52 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %51
  %66 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %70 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %75 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %65
  br label %81

80:                                               ; preds = %40
  br label %81

81:                                               ; preds = %80, %79
  %82 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %269 [
    i32 139, label %85
    i32 136, label %96
    i32 138, label %107
    i32 131, label %130
    i32 141, label %153
    i32 140, label %161
    i32 134, label %172
    i32 137, label %212
    i32 133, label %218
    i32 132, label %224
    i32 135, label %230
  ]

85:                                               ; preds = %81
  %86 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %90 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %89, i32 0, i32 13
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @SAA7134_DEC_LUMA_BRIGHT, align 4
  %92 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %93 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %92, i32 0, i32 13
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @saa_writeb(i32 %91, i32 %94)
  br label %270

96:                                               ; preds = %81
  %97 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %101 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %100, i32 0, i32 12
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @SAA7134_DEC_CHROMA_HUE, align 4
  %103 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %104 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %103, i32 0, i32 12
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @saa_writeb(i32 %102, i32 %105)
  br label %270

107:                                              ; preds = %81
  %108 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %112 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @SAA7134_DEC_LUMA_CONTRAST, align 4
  %114 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %115 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %107
  %119 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %120 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 0, %121
  br label %127

123:                                              ; preds = %107
  %124 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %125 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  br label %127

127:                                              ; preds = %123, %118
  %128 = phi i32 [ %122, %118 ], [ %126, %123 ]
  %129 = call i32 @saa_writeb(i32 %113, i32 %128)
  br label %270

130:                                              ; preds = %81
  %131 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %132 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %135 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @SAA7134_DEC_CHROMA_SATURATION, align 4
  %137 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %138 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %130
  %142 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %143 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 0, %144
  br label %150

146:                                              ; preds = %130
  %147 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %148 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  br label %150

150:                                              ; preds = %146, %141
  %151 = phi i32 [ %145, %141 ], [ %149, %146 ]
  %152 = call i32 @saa_writeb(i32 %136, i32 %151)
  br label %270

153:                                              ; preds = %81
  %154 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %155 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %158 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %157, i32 0, i32 11
  store i32 %156, i32* %158, align 4
  %159 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %160 = call i32 @saa7134_tvaudio_setmute(%struct.saa7134_dev* %159)
  br label %270

161:                                              ; preds = %81
  %162 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %163 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %166 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %165, i32 0, i32 10
  store i32 %164, i32* %166, align 4
  %167 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %168 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %169 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %168, i32 0, i32 10
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @saa7134_tvaudio_setvolume(%struct.saa7134_dev* %167, i32 %170)
  br label %270

172:                                              ; preds = %81
  %173 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %174 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %177 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %176, i32 0, i32 8
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @SAA7134_DEC_LUMA_CONTRAST, align 4
  %179 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %180 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %172
  %184 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %185 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 0, %186
  br label %192

188:                                              ; preds = %172
  %189 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %190 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 4
  br label %192

192:                                              ; preds = %188, %183
  %193 = phi i32 [ %187, %183 ], [ %191, %188 ]
  %194 = call i32 @saa_writeb(i32 %178, i32 %193)
  %195 = load i32, i32* @SAA7134_DEC_CHROMA_SATURATION, align 4
  %196 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %197 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %192
  %201 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %202 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 0, %203
  br label %209

205:                                              ; preds = %192
  %206 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %207 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  br label %209

209:                                              ; preds = %205, %200
  %210 = phi i32 [ %204, %200 ], [ %208, %205 ]
  %211 = call i32 @saa_writeb(i32 %195, i32 %210)
  br label %270

212:                                              ; preds = %81
  %213 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %214 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %217 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %216, i32 0, i32 6
  store i32 %215, i32* %217, align 4
  store i32 1, i32* %10, align 4
  br label %270

218:                                              ; preds = %81
  %219 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %220 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %223 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  store i32 1, i32* %10, align 4
  br label %270

224:                                              ; preds = %81
  %225 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %226 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %229 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %228, i32 0, i32 4
  store i32 %227, i32* %229, align 4
  store i32 1, i32* %10, align 4
  br label %270

230:                                              ; preds = %81
  %231 = load i32, i32* @TUNER_TDA9887, align 4
  %232 = getelementptr inbounds %struct.v4l2_priv_tun_config, %struct.v4l2_priv_tun_config* %12, i32 0, i32 1
  store i32 %231, i32* %232, align 8
  %233 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %234 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.v4l2_priv_tun_config, %struct.v4l2_priv_tun_config* %12, i32 0, i32 0
  store i32* %234, i32** %235, align 8
  %236 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %237 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %240 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 4
  %241 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %242 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %268

245:                                              ; preds = %230
  %246 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %247 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load i32, i32* @TDA9887_AUTOMUTE, align 4
  %252 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %253 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %263

256:                                              ; preds = %245
  %257 = load i32, i32* @TDA9887_AUTOMUTE, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %260 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %256, %250
  %264 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %265 = load i32, i32* @tuner, align 4
  %266 = load i32, i32* @s_config, align 4
  %267 = call i32 @saa_call_all(%struct.saa7134_dev* %264, i32 %265, i32 %266, %struct.v4l2_priv_tun_config* %12)
  br label %268

268:                                              ; preds = %263, %230
  br label %270

269:                                              ; preds = %81
  br label %297

270:                                              ; preds = %268, %224, %218, %212, %209, %161, %153, %150, %127, %96, %85
  %271 = load i32, i32* %10, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %296

273:                                              ; preds = %270
  %274 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %275 = icmp ne %struct.saa7134_fh* %274, null
  br i1 %275, label %276, label %296

276:                                              ; preds = %273
  %277 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %278 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %279 = call i64 @res_check(%struct.saa7134_fh* %277, i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %296

281:                                              ; preds = %276
  %282 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %283 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %282, i32 0, i32 1
  %284 = load i64, i64* %9, align 8
  %285 = call i32 @spin_lock_irqsave(i32* %283, i64 %284)
  %286 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %287 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %288 = call i32 @stop_preview(%struct.saa7134_dev* %286, %struct.saa7134_fh* %287)
  %289 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %290 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %291 = call i32 @start_preview(%struct.saa7134_dev* %289, %struct.saa7134_fh* %290)
  %292 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %293 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %292, i32 0, i32 1
  %294 = load i64, i64* %9, align 8
  %295 = call i32 @spin_unlock_irqrestore(i32* %293, i64 %294)
  br label %296

296:                                              ; preds = %281, %276, %273, %270
  store i32 0, i32* %11, align 4
  br label %297

297:                                              ; preds = %296, %269, %39
  %298 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %299 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %298, i32 0, i32 0
  %300 = call i32 @mutex_unlock(i32* %299)
  %301 = load i32, i32* %11, align 4
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %297, %24
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_queryctrl* @ctrl_by_id(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @saa7134_tvaudio_setmute(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_tvaudio_setvolume(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, %struct.v4l2_priv_tun_config*) #1

declare dso_local i64 @res_check(%struct.saa7134_fh*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stop_preview(%struct.saa7134_dev*, %struct.saa7134_fh*) #1

declare dso_local i32 @start_preview(%struct.saa7134_dev*, %struct.saa7134_fh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

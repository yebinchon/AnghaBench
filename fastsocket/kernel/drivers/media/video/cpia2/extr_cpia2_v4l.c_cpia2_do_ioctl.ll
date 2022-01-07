; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_cpia2_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_cpia2_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cpia2_fh* }
%struct.cpia2_fh = type { i32 }
%struct.camera_data = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOTTY = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@V4L2_PRIORITY_RECORD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"VIDIOC_STREAMON, streaming=%d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"VIDIOC_STREAMOFF, streaming=%d\0A\00", align 1
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i8*)* @cpia2_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpia2_do_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.camera_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cpia2_fh*, align 8
  %11 = alloca %struct.cpia2_fh*, align 8
  %12 = alloca %struct.cpia2_fh*, align 8
  %13 = alloca %struct.cpia2_fh*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call %struct.camera_data* @video_drvdata(%struct.file* %17)
  store %struct.camera_data* %18, %struct.camera_data** %8, align 8
  store i64 0, i64* %9, align 8
  %19 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %20 = icmp ne %struct.camera_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* @ENOTTY, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %357

24:                                               ; preds = %3
  %25 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %26 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %25, i32 0, i32 0
  %27 = call i64 @mutex_lock_interruptible(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* @ERESTARTSYS, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %357

32:                                               ; preds = %24
  %33 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %34 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %39 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i64, i64* @ENODEV, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %4, align 8
  br label %357

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %78 [
    i32 178, label %45
    i32 185, label %45
    i32 138, label %45
    i32 190, label %62
    i32 177, label %62
  ]

45:                                               ; preds = %43, %43, %43
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load %struct.cpia2_fh*, %struct.cpia2_fh** %47, align 8
  store %struct.cpia2_fh* %48, %struct.cpia2_fh** %10, align 8
  %49 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %50 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %49, i32 0, i32 4
  %51 = load %struct.cpia2_fh*, %struct.cpia2_fh** %10, align 8
  %52 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %51, i32 0, i32 0
  %53 = call i64 @v4l2_prio_check(i32* %50, i32* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %58 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %4, align 8
  br label %357

61:                                               ; preds = %45
  br label %79

62:                                               ; preds = %43, %43
  %63 = load %struct.file*, %struct.file** %5, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  %65 = load %struct.cpia2_fh*, %struct.cpia2_fh** %64, align 8
  store %struct.cpia2_fh* %65, %struct.cpia2_fh** %11, align 8
  %66 = load %struct.cpia2_fh*, %struct.cpia2_fh** %11, align 8
  %67 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @V4L2_PRIORITY_RECORD, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %73 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i64, i64* @EBUSY, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %4, align 8
  br label %357

77:                                               ; preds = %62
  br label %79

78:                                               ; preds = %43
  br label %79

79:                                               ; preds = %78, %77, %61
  %80 = load i32, i32* %6, align 4
  switch i32 %80, label %349 [
    i32 194, label %81
    i32 193, label %85
    i32 183, label %88
    i32 189, label %91
    i32 180, label %96
    i32 187, label %100
    i32 178, label %105
    i32 190, label %112
    i32 185, label %116
    i32 177, label %123
    i32 196, label %127
    i32 192, label %127
    i32 182, label %127
    i32 186, label %127
    i32 188, label %130
    i32 179, label %130
    i32 191, label %130
    i32 181, label %130
    i32 195, label %133
    i32 184, label %133
    i32 197, label %136
    i32 150, label %140
    i32 172, label %144
    i32 161, label %144
    i32 136, label %144
    i32 169, label %149
    i32 128, label %153
    i32 163, label %157
    i32 138, label %161
    i32 176, label %168
    i32 166, label %172
    i32 141, label %172
    i32 149, label %175
    i32 148, label %179
    i32 165, label %183
    i32 140, label %187
    i32 160, label %191
    i32 135, label %195
    i32 156, label %199
    i32 131, label %208
    i32 146, label %262
    i32 151, label %266
    i32 152, label %270
    i32 175, label %274
    i32 144, label %279
    i32 145, label %315
    i32 171, label %346
    i32 158, label %346
    i32 133, label %346
    i32 159, label %346
    i32 134, label %346
    i32 174, label %346
    i32 168, label %346
    i32 143, label %346
    i32 173, label %346
    i32 167, label %346
    i32 142, label %346
    i32 170, label %346
    i32 147, label %346
    i32 155, label %346
    i32 130, label %346
    i32 154, label %346
    i32 129, label %346
    i32 162, label %346
    i32 137, label %346
    i32 153, label %346
    i32 164, label %346
    i32 139, label %346
    i32 157, label %346
    i32 132, label %346
  ]

81:                                               ; preds = %79
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %84 = call i64 @ioctl_cap_query(i8* %82, %struct.camera_data* %83)
  store i64 %84, i64* %9, align 8
  br label %352

85:                                               ; preds = %79
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @ioctl_get_channel(i8* %86)
  store i64 %87, i64* %9, align 8
  br label %352

88:                                               ; preds = %79
  %89 = load i8*, i8** %7, align 8
  %90 = call i64 @ioctl_set_channel(i8* %89)
  store i64 %90, i64* %9, align 8
  br label %352

91:                                               ; preds = %79
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %94 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %93, i32 0, i32 6
  %95 = call i32 @memcpy(i8* %92, i32* %94, i32 4)
  br label %352

96:                                               ; preds = %79
  %97 = load i8*, i8** %7, align 8
  %98 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %99 = call i64 @ioctl_set_image_prop(i8* %97, %struct.camera_data* %98)
  store i64 %99, i64* %9, align 8
  br label %352

100:                                              ; preds = %79
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %103 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %102, i32 0, i32 5
  %104 = call i32 @memcpy(i8* %101, i32* %103, i32 4)
  br label %352

105:                                              ; preds = %79
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %108 = load %struct.file*, %struct.file** %5, align 8
  %109 = getelementptr inbounds %struct.file, %struct.file* %108, i32 0, i32 0
  %110 = load %struct.cpia2_fh*, %struct.cpia2_fh** %109, align 8
  %111 = call i64 @ioctl_set_window_size(i8* %106, %struct.camera_data* %107, %struct.cpia2_fh* %110)
  store i64 %111, i64* %9, align 8
  br label %352

112:                                              ; preds = %79
  %113 = load i8*, i8** %7, align 8
  %114 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %115 = call i64 @ioctl_get_mbuf(i8* %113, %struct.camera_data* %114)
  store i64 %115, i64* %9, align 8
  br label %352

116:                                              ; preds = %79
  %117 = load i8*, i8** %7, align 8
  %118 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %119 = load %struct.file*, %struct.file** %5, align 8
  %120 = getelementptr inbounds %struct.file, %struct.file* %119, i32 0, i32 0
  %121 = load %struct.cpia2_fh*, %struct.cpia2_fh** %120, align 8
  %122 = call i64 @ioctl_mcapture(i8* %117, %struct.camera_data* %118, %struct.cpia2_fh* %121)
  store i64 %122, i64* %9, align 8
  br label %352

123:                                              ; preds = %79
  %124 = load i8*, i8** %7, align 8
  %125 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %126 = call i64 @ioctl_sync(i8* %124, %struct.camera_data* %125)
  store i64 %126, i64* %9, align 8
  br label %352

127:                                              ; preds = %79, %79, %79, %79
  %128 = load i64, i64* @EINVAL, align 8
  %129 = sub nsw i64 0, %128
  store i64 %129, i64* %9, align 8
  br label %352

130:                                              ; preds = %79, %79, %79, %79
  %131 = load i64, i64* @EINVAL, align 8
  %132 = sub nsw i64 0, %131
  store i64 %132, i64* %9, align 8
  br label %352

133:                                              ; preds = %79, %79
  %134 = load i64, i64* @EINVAL, align 8
  %135 = sub nsw i64 0, %134
  store i64 %135, i64* %9, align 8
  br label %352

136:                                              ; preds = %79
  %137 = load i8*, i8** %7, align 8
  %138 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %139 = call i64 @ioctl_set_gpio(i8* %137, %struct.camera_data* %138)
  store i64 %139, i64* %9, align 8
  br label %352

140:                                              ; preds = %79
  %141 = load i8*, i8** %7, align 8
  %142 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %143 = call i64 @ioctl_querycap(i8* %141, %struct.camera_data* %142)
  store i64 %143, i64* %9, align 8
  br label %352

144:                                              ; preds = %79, %79, %79
  %145 = load i32, i32* %6, align 4
  %146 = load i8*, i8** %7, align 8
  %147 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %148 = call i64 @ioctl_input(i32 %145, i8* %146, %struct.camera_data* %147)
  store i64 %148, i64* %9, align 8
  br label %352

149:                                              ; preds = %79
  %150 = load i8*, i8** %7, align 8
  %151 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %152 = call i64 @ioctl_enum_fmt(i8* %150, %struct.camera_data* %151)
  store i64 %152, i64* %9, align 8
  br label %352

153:                                              ; preds = %79
  %154 = load i8*, i8** %7, align 8
  %155 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %156 = call i64 @ioctl_try_fmt(i8* %154, %struct.camera_data* %155)
  store i64 %156, i64* %9, align 8
  br label %352

157:                                              ; preds = %79
  %158 = load i8*, i8** %7, align 8
  %159 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %160 = call i64 @ioctl_get_fmt(i8* %158, %struct.camera_data* %159)
  store i64 %160, i64* %9, align 8
  br label %352

161:                                              ; preds = %79
  %162 = load i8*, i8** %7, align 8
  %163 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %164 = load %struct.file*, %struct.file** %5, align 8
  %165 = getelementptr inbounds %struct.file, %struct.file* %164, i32 0, i32 0
  %166 = load %struct.cpia2_fh*, %struct.cpia2_fh** %165, align 8
  %167 = call i64 @ioctl_set_fmt(i8* %162, %struct.camera_data* %163, %struct.cpia2_fh* %166)
  store i64 %167, i64* %9, align 8
  br label %352

168:                                              ; preds = %79
  %169 = load i8*, i8** %7, align 8
  %170 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %171 = call i64 @ioctl_cropcap(i8* %169, %struct.camera_data* %170)
  store i64 %171, i64* %9, align 8
  br label %352

172:                                              ; preds = %79, %79
  %173 = load i64, i64* @EINVAL, align 8
  %174 = sub nsw i64 0, %173
  store i64 %174, i64* %9, align 8
  br label %352

175:                                              ; preds = %79
  %176 = load i8*, i8** %7, align 8
  %177 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %178 = call i64 @ioctl_queryctrl(i8* %176, %struct.camera_data* %177)
  store i64 %178, i64* %9, align 8
  br label %352

179:                                              ; preds = %79
  %180 = load i8*, i8** %7, align 8
  %181 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %182 = call i64 @ioctl_querymenu(i8* %180, %struct.camera_data* %181)
  store i64 %182, i64* %9, align 8
  br label %352

183:                                              ; preds = %79
  %184 = load i8*, i8** %7, align 8
  %185 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %186 = call i64 @ioctl_g_ctrl(i8* %184, %struct.camera_data* %185)
  store i64 %186, i64* %9, align 8
  br label %352

187:                                              ; preds = %79
  %188 = load i8*, i8** %7, align 8
  %189 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %190 = call i64 @ioctl_s_ctrl(i8* %188, %struct.camera_data* %189)
  store i64 %190, i64* %9, align 8
  br label %352

191:                                              ; preds = %79
  %192 = load i8*, i8** %7, align 8
  %193 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %194 = call i64 @ioctl_g_jpegcomp(i8* %192, %struct.camera_data* %193)
  store i64 %194, i64* %9, align 8
  br label %352

195:                                              ; preds = %79
  %196 = load i8*, i8** %7, align 8
  %197 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %198 = call i64 @ioctl_s_jpegcomp(i8* %196, %struct.camera_data* %197)
  store i64 %198, i64* %9, align 8
  br label %352

199:                                              ; preds = %79
  %200 = load %struct.file*, %struct.file** %5, align 8
  %201 = getelementptr inbounds %struct.file, %struct.file* %200, i32 0, i32 0
  %202 = load %struct.cpia2_fh*, %struct.cpia2_fh** %201, align 8
  store %struct.cpia2_fh* %202, %struct.cpia2_fh** %12, align 8
  %203 = load %struct.cpia2_fh*, %struct.cpia2_fh** %12, align 8
  %204 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i8*, i8** %7, align 8
  %207 = bitcast i8* %206 to i32*
  store i32 %205, i32* %207, align 4
  br label %352

208:                                              ; preds = %79
  %209 = load %struct.file*, %struct.file** %5, align 8
  %210 = getelementptr inbounds %struct.file, %struct.file* %209, i32 0, i32 0
  %211 = load %struct.cpia2_fh*, %struct.cpia2_fh** %210, align 8
  store %struct.cpia2_fh* %211, %struct.cpia2_fh** %13, align 8
  %212 = load i8*, i8** %7, align 8
  %213 = bitcast i8* %212 to i32*
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %14, align 4
  %215 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %216 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %208
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.cpia2_fh*, %struct.cpia2_fh** %13, align 8
  %222 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %220, %223
  br i1 %224, label %225, label %234

225:                                              ; preds = %219
  %226 = load %struct.cpia2_fh*, %struct.cpia2_fh** %13, align 8
  %227 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @V4L2_PRIORITY_RECORD, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load i64, i64* @EBUSY, align 8
  %233 = sub nsw i64 0, %232
  store i64 %233, i64* %9, align 8
  br label %261

234:                                              ; preds = %225, %219, %208
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* @V4L2_PRIORITY_RECORD, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %253

238:                                              ; preds = %234
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.cpia2_fh*, %struct.cpia2_fh** %13, align 8
  %241 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %239, %242
  br i1 %243, label %244, label %253

244:                                              ; preds = %238
  %245 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %246 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %245, i32 0, i32 4
  %247 = call i32 @v4l2_prio_max(i32* %246)
  %248 = load i32, i32* @V4L2_PRIORITY_RECORD, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %244
  %251 = load i64, i64* @EBUSY, align 8
  %252 = sub nsw i64 0, %251
  store i64 %252, i64* %9, align 8
  br label %260

253:                                              ; preds = %244, %238, %234
  %254 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %255 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %254, i32 0, i32 4
  %256 = load %struct.cpia2_fh*, %struct.cpia2_fh** %13, align 8
  %257 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %256, i32 0, i32 0
  %258 = load i32, i32* %14, align 4
  %259 = call i64 @v4l2_prio_change(i32* %255, i32* %257, i32 %258)
  store i64 %259, i64* %9, align 8
  br label %260

260:                                              ; preds = %253, %250
  br label %261

261:                                              ; preds = %260, %231
  br label %352

262:                                              ; preds = %79
  %263 = load i8*, i8** %7, align 8
  %264 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %265 = call i64 @ioctl_reqbufs(i8* %263, %struct.camera_data* %264)
  store i64 %265, i64* %9, align 8
  br label %352

266:                                              ; preds = %79
  %267 = load i8*, i8** %7, align 8
  %268 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %269 = call i64 @ioctl_querybuf(i8* %267, %struct.camera_data* %268)
  store i64 %269, i64* %9, align 8
  br label %352

270:                                              ; preds = %79
  %271 = load i8*, i8** %7, align 8
  %272 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %273 = call i64 @ioctl_qbuf(i8* %271, %struct.camera_data* %272)
  store i64 %273, i64* %9, align 8
  br label %352

274:                                              ; preds = %79
  %275 = load i8*, i8** %7, align 8
  %276 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %277 = load %struct.file*, %struct.file** %5, align 8
  %278 = call i64 @ioctl_dqbuf(i8* %275, %struct.camera_data* %276, %struct.file* %277)
  store i64 %278, i64* %9, align 8
  br label %352

279:                                              ; preds = %79
  %280 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %281 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %282)
  %284 = load i8*, i8** %7, align 8
  %285 = bitcast i8* %284 to i32*
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %15, align 4
  %287 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %288 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %279
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %294 = icmp ne i32 %292, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %291, %279
  %296 = load i64, i64* @EINVAL, align 8
  %297 = sub nsw i64 0, %296
  store i64 %297, i64* %9, align 8
  br label %298

298:                                              ; preds = %295, %291
  %299 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %300 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %311, label %303

303:                                              ; preds = %298
  %304 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %305 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %306 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i64 @cpia2_usb_stream_start(%struct.camera_data* %304, i32 %309)
  store i64 %310, i64* %9, align 8
  br label %314

311:                                              ; preds = %298
  %312 = load i64, i64* @EINVAL, align 8
  %313 = sub nsw i64 0, %312
  store i64 %313, i64* %9, align 8
  br label %314

314:                                              ; preds = %311, %303
  br label %352

315:                                              ; preds = %79
  %316 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %317 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %318)
  %320 = load i8*, i8** %7, align 8
  %321 = bitcast i8* %320 to i32*
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %16, align 4
  %323 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %324 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %315
  %328 = load i32, i32* %16, align 4
  %329 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %327, %315
  %332 = load i64, i64* @EINVAL, align 8
  %333 = sub nsw i64 0, %332
  store i64 %333, i64* %9, align 8
  br label %334

334:                                              ; preds = %331, %327
  %335 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %336 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %334
  %340 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %341 = call i64 @cpia2_usb_stream_stop(%struct.camera_data* %340)
  store i64 %341, i64* %9, align 8
  br label %345

342:                                              ; preds = %334
  %343 = load i64, i64* @EINVAL, align 8
  %344 = sub nsw i64 0, %343
  store i64 %344, i64* %9, align 8
  br label %345

345:                                              ; preds = %342, %339
  br label %352

346:                                              ; preds = %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79
  %347 = load i64, i64* @EINVAL, align 8
  %348 = sub nsw i64 0, %347
  store i64 %348, i64* %9, align 8
  br label %352

349:                                              ; preds = %79
  %350 = load i64, i64* @ENOIOCTLCMD, align 8
  %351 = sub nsw i64 0, %350
  store i64 %351, i64* %9, align 8
  br label %352

352:                                              ; preds = %349, %346, %345, %314, %274, %270, %266, %262, %261, %199, %195, %191, %187, %183, %179, %175, %172, %168, %161, %157, %153, %149, %144, %140, %136, %133, %130, %127, %123, %116, %112, %105, %100, %96, %91, %88, %85, %81
  %353 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %354 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %353, i32 0, i32 0
  %355 = call i32 @mutex_unlock(i32* %354)
  %356 = load i64, i64* %9, align 8
  store i64 %356, i64* %4, align 8
  br label %357

357:                                              ; preds = %352, %71, %56, %37, %29, %21
  %358 = load i64, i64* %4, align 8
  ret i64 %358
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @v4l2_prio_check(i32*, i32*) #1

declare dso_local i64 @ioctl_cap_query(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_get_channel(i8*) #1

declare dso_local i64 @ioctl_set_channel(i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @ioctl_set_image_prop(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_set_window_size(i8*, %struct.camera_data*, %struct.cpia2_fh*) #1

declare dso_local i64 @ioctl_get_mbuf(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_mcapture(i8*, %struct.camera_data*, %struct.cpia2_fh*) #1

declare dso_local i64 @ioctl_sync(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_set_gpio(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_querycap(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_input(i32, i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_enum_fmt(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_try_fmt(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_get_fmt(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_set_fmt(i8*, %struct.camera_data*, %struct.cpia2_fh*) #1

declare dso_local i64 @ioctl_cropcap(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_queryctrl(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_querymenu(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_g_ctrl(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_s_ctrl(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_g_jpegcomp(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_s_jpegcomp(i8*, %struct.camera_data*) #1

declare dso_local i32 @v4l2_prio_max(i32*) #1

declare dso_local i64 @v4l2_prio_change(i32*, i32*, i32) #1

declare dso_local i64 @ioctl_reqbufs(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_querybuf(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_qbuf(i8*, %struct.camera_data*) #1

declare dso_local i64 @ioctl_dqbuf(i8*, %struct.camera_data*, %struct.file*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @cpia2_usb_stream_start(%struct.camera_data*, i32) #1

declare dso_local i64 @cpia2_usb_stream_stop(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_int_in_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_int_in_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, %struct.si470x_device* }
%struct.si470x_device = type { i32*, i64, i32, i32, i64, %struct.TYPE_2__*, i32, i64, i32, i32*, i32*, i64 }
%struct.TYPE_2__ = type { i32 }

@RDS_REPORT_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"non-zero urb status (%d)\0A\00", align 1
@SYSCONFIG1 = common dso_local global i64 0, align 8
@SYSCONFIG1_RDS = common dso_local global i32 0, align 4
@RDS_REPORT = common dso_local global i8 0, align 1
@RDS_REGISTER_NUM = common dso_local global i8 0, align 1
@RADIO_REGISTER_SIZE = common dso_local global i8 0, align 1
@STATUSRSSI = common dso_local global i8 0, align 1
@STATUSRSSI_RDSR = common dso_local global i32 0, align 4
@STATUSRSSI_RDSS = common dso_local global i32 0, align 4
@STATUSRSSI_BLERA = common dso_local global i32 0, align 4
@RDSA = common dso_local global i64 0, align 8
@READCHAN = common dso_local global i64 0, align 8
@READCHAN_BLERB = common dso_local global i32 0, align 4
@RDSB = common dso_local global i64 0, align 8
@READCHAN_BLERC = common dso_local global i32 0, align 4
@RDSC = common dso_local global i64 0, align 8
@READCHAN_BLERD = common dso_local global i32 0, align 4
@RDSD = common dso_local global i64 0, align 8
@max_rds_errors = common dso_local global i16 0, align 2
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"resubmitting urb failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @si470x_int_in_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si470x_int_in_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.si470x_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 2
  %15 = load %struct.si470x_device*, %struct.si470x_device** %14, align 8
  store %struct.si470x_device* %15, %struct.si470x_device** %3, align 8
  %16 = load i32, i32* @RDS_REPORT_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %1
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %24
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ECONNRESET, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.urb*, %struct.urb** %2, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ESHUTDOWN, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %31, %24
  store i32 1, i32* %12, align 4
  br label %351

46:                                               ; preds = %38
  %47 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %48 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.urb*, %struct.urb** %2, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %322

55:                                               ; preds = %1
  %56 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %57 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %56, i32 0, i32 11
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  br label %351

61:                                               ; preds = %55
  %62 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %63 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @SYSCONFIG1, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SYSCONFIG1_RDS, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %322

72:                                               ; preds = %61
  %73 = load %struct.urb*, %struct.urb** %2, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %321

77:                                               ; preds = %72
  %78 = load i8, i8* @RDS_REPORT, align 1
  %79 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %78, i8* %79, align 16
  store i8 0, i8* %7, align 1
  br label %80

80:                                               ; preds = %109, %77
  %81 = load i8, i8* %7, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* @RDS_REGISTER_NUM, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %88 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %87, i32 0, i32 10
  %89 = load i32*, i32** %88, align 8
  %90 = load i8, i8* %7, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @RADIO_REGISTER_SIZE, align 1
  %93 = zext i8 %92 to i32
  %94 = mul nsw i32 %91, %93
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %89, i64 %96
  %98 = call i32 @get_unaligned_be16(i32* %97)
  %99 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %100 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i8, i8* @STATUSRSSI, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* %7, align 1
  %105 = zext i8 %104 to i32
  %106 = add nsw i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %101, i64 %107
  store i32 %98, i32* %108, align 4
  br label %109

109:                                              ; preds = %86
  %110 = load i8, i8* %7, align 1
  %111 = add i8 %110, 1
  store i8 %111, i8* %7, align 1
  br label %80

112:                                              ; preds = %80
  %113 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %114 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i8, i8* @STATUSRSSI, align 1
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @STATUSRSSI_RDSR, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %322

124:                                              ; preds = %112
  %125 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %126 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i8, i8* @STATUSRSSI, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @STATUSRSSI_RDSS, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %322

136:                                              ; preds = %124
  store i8 0, i8* %8, align 1
  br label %137

137:                                              ; preds = %304, %136
  %138 = load i8, i8* %8, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp slt i32 %139, 4
  br i1 %140, label %141, label %307

141:                                              ; preds = %137
  %142 = load i8, i8* %8, align 1
  %143 = zext i8 %142 to i32
  switch i32 %143, label %144 [
    i32 1, label %163
    i32 2, label %181
    i32 3, label %199
  ]

144:                                              ; preds = %141
  %145 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %146 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i8, i8* @STATUSRSSI, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @STATUSRSSI_BLERA, align 4
  %153 = and i32 %151, %152
  %154 = ashr i32 %153, 9
  %155 = trunc i32 %154 to i16
  store i16 %155, i16* %9, align 2
  %156 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %157 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @RDSA, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = trunc i32 %161 to i16
  store i16 %162, i16* %10, align 2
  br label %217

163:                                              ; preds = %141
  %164 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %165 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @READCHAN, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @READCHAN_BLERB, align 4
  %171 = and i32 %169, %170
  %172 = ashr i32 %171, 14
  %173 = trunc i32 %172 to i16
  store i16 %173, i16* %9, align 2
  %174 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %175 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @RDSB, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = trunc i32 %179 to i16
  store i16 %180, i16* %10, align 2
  br label %217

181:                                              ; preds = %141
  %182 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %183 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @READCHAN, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @READCHAN_BLERC, align 4
  %189 = and i32 %187, %188
  %190 = ashr i32 %189, 12
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %9, align 2
  %192 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %193 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @RDSC, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = trunc i32 %197 to i16
  store i16 %198, i16* %10, align 2
  br label %217

199:                                              ; preds = %141
  %200 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %201 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* @READCHAN, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @READCHAN_BLERD, align 4
  %207 = and i32 %205, %206
  %208 = ashr i32 %207, 10
  %209 = trunc i32 %208 to i16
  store i16 %209, i16* %9, align 2
  %210 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %211 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* @RDSD, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = trunc i32 %215 to i16
  store i16 %216, i16* %10, align 2
  br label %217

217:                                              ; preds = %199, %181, %163, %144
  %218 = load i16, i16* %10, align 2
  %219 = bitcast [3 x i8]* %11 to i8**
  %220 = call i32 @put_unaligned_le16(i16 zeroext %218, i8** %219)
  %221 = load i8, i8* %8, align 1
  %222 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  store i8 %221, i8* %222, align 1
  %223 = load i8, i8* %8, align 1
  %224 = zext i8 %223 to i32
  %225 = shl i32 %224, 3
  %226 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = or i32 %228, %225
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %226, align 1
  %231 = load i16, i16* %9, align 2
  %232 = zext i16 %231 to i32
  %233 = load i16, i16* @max_rds_errors, align 2
  %234 = zext i16 %233 to i32
  %235 = icmp sgt i32 %232, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %217
  %237 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = or i32 %239, 128
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %237, align 1
  br label %253

242:                                              ; preds = %217
  %243 = load i16, i16* %9, align 2
  %244 = zext i16 %243 to i32
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %242
  %247 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = or i32 %249, 64
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %247, align 1
  br label %252

252:                                              ; preds = %246, %242
  br label %253

253:                                              ; preds = %252, %236
  %254 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %255 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %254, i32 0, i32 9
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %258 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = bitcast [3 x i8]* %11 to i8**
  %262 = call i32 @memcpy(i32* %260, i8** %261, i32 3)
  %263 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %264 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, 3
  store i64 %266, i64* %264, align 8
  %267 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %268 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %271 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = icmp uge i64 %269, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %253
  %276 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %277 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %276, i32 0, i32 1
  store i64 0, i64* %277, align 8
  br label %278

278:                                              ; preds = %275, %253
  %279 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %280 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %283 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = icmp eq i64 %281, %285
  br i1 %286, label %287, label %303

287:                                              ; preds = %278
  %288 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %289 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 3
  store i32 %291, i32* %289, align 4
  %292 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %293 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %296 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = icmp sge i32 %294, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %287
  %300 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %301 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %300, i32 0, i32 3
  store i32 0, i32* %301, align 4
  br label %302

302:                                              ; preds = %299, %287
  br label %303

303:                                              ; preds = %302, %278
  br label %304

304:                                              ; preds = %303
  %305 = load i8, i8* %8, align 1
  %306 = add i8 %305, 1
  store i8 %306, i8* %8, align 1
  br label %137

307:                                              ; preds = %137
  %308 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %309 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %312 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = icmp ne i64 %310, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %307
  %317 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %318 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %317, i32 0, i32 8
  %319 = call i32 @wake_up_interruptible(i32* %318)
  br label %320

320:                                              ; preds = %316, %307
  br label %321

321:                                              ; preds = %320, %72
  br label %322

322:                                              ; preds = %321, %135, %123, %71, %46
  %323 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %324 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %323, i32 0, i32 4
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %350

327:                                              ; preds = %322
  %328 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %329 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %328, i32 0, i32 7
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %350

332:                                              ; preds = %327
  %333 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %334 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @GFP_ATOMIC, align 4
  %337 = call i32 @usb_submit_urb(i32 %335, i32 %336)
  store i32 %337, i32* %6, align 4
  %338 = load i32, i32* %6, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %332
  %341 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %342 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %341, i32 0, i32 5
  %343 = load %struct.TYPE_2__*, %struct.TYPE_2__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 0
  %345 = load i32, i32* %6, align 4
  %346 = call i32 @dev_warn(i32* %344, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %345)
  %347 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %348 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %347, i32 0, i32 4
  store i64 0, i64* %348, align 8
  br label %349

349:                                              ; preds = %340, %332
  br label %350

350:                                              ; preds = %349, %327, %322
  store i32 0, i32* %12, align 4
  br label %351

351:                                              ; preds = %350, %60, %45
  %352 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %352)
  %353 = load i32, i32* %12, align 4
  switch i32 %353, label %355 [
    i32 0, label %354
    i32 1, label %354
  ]

354:                                              ; preds = %351, %351
  ret void

355:                                              ; preds = %351
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #2

declare dso_local i32 @get_unaligned_be16(i32*) #2

declare dso_local i32 @put_unaligned_le16(i16 zeroext, i8**) #2

declare dso_local i32 @memcpy(i32*, i8**, i32) #2

declare dso_local i32 @wake_up_interruptible(i32*) #2

declare dso_local i32 @usb_submit_urb(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

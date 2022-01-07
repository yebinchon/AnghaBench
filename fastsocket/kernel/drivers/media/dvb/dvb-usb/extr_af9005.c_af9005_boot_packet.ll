; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_boot_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_boot_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@FW_BULKOUT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"boot packet invalid boot packet type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"boot packet bulk message failed: %d (%d/%d)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"boot packet recv bulk message failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"<<< \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"boot bad config header.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"boot bad config size.\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"boot bad config sequence.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"boot bad config subtype.\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"boot bad config checksum.\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"boot bad confirm header.\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"boot bad confirm size.\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"boot bad confirm sequence.\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"boot bad confirm subtype.\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"boot bad confirm checksum.\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"boot bad boot header.\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"boot bad boot size.\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"boot bad boot sequence.\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"boot bad boot pattern 01.\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"boot bad boot pattern 10.\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"boot bad boot checksum.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32*)* @af9005_boot_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_boot_packet(%struct.usb_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %16 = add nsw i32 %15, 2
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = mul nuw i64 4, %17
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %19, i32 0, i32 %21)
  %23 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %95 [
    i32 129, label %31
    i32 128, label %48
    i32 130, label %65
  ]

31:                                               ; preds = %3
  %32 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 17, i32* %32, align 8
  %33 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 4, i32* %33, align 4
  %34 = getelementptr inbounds i32, i32* %19, i64 4
  store i32 0, i32* %34, align 16
  %35 = getelementptr inbounds i32, i32* %19, i64 5
  store i32 3, i32* %35, align 4
  %36 = getelementptr inbounds i32, i32* %19, i64 4
  %37 = load i32, i32* %36, align 16
  %38 = getelementptr inbounds i32, i32* %19, i64 5
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds i32, i32* %19, i64 6
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds i32, i32* %19, i64 7
  store i32 %46, i32* %47, align 4
  br label %99

48:                                               ; preds = %3
  %49 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 17, i32* %49, align 8
  %50 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 4, i32* %50, align 4
  %51 = getelementptr inbounds i32, i32* %19, i64 4
  store i32 0, i32* %51, align 16
  %52 = getelementptr inbounds i32, i32* %19, i64 5
  store i32 1, i32* %52, align 4
  %53 = getelementptr inbounds i32, i32* %19, i64 4
  %54 = load i32, i32* %53, align 16
  %55 = getelementptr inbounds i32, i32* %19, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  %61 = getelementptr inbounds i32, i32* %19, i64 6
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 255
  %64 = getelementptr inbounds i32, i32* %19, i64 7
  store i32 %63, i32* %64, align 4
  br label %99

65:                                               ; preds = %3
  %66 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 16, i32* %66, align 8
  %67 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 8, i32* %67, align 4
  %68 = getelementptr inbounds i32, i32* %19, i64 4
  store i32 0, i32* %68, align 16
  %69 = getelementptr inbounds i32, i32* %19, i64 5
  store i32 151, i32* %69, align 4
  %70 = getelementptr inbounds i32, i32* %19, i64 6
  store i32 170, i32* %70, align 8
  %71 = getelementptr inbounds i32, i32* %19, i64 7
  store i32 85, i32* %71, align 4
  %72 = getelementptr inbounds i32, i32* %19, i64 8
  store i32 165, i32* %72, align 16
  %73 = getelementptr inbounds i32, i32* %19, i64 9
  store i32 90, i32* %73, align 4
  store i32 0, i32* %10, align 4
  store i32 4, i32* %12, align 4
  br label %74

74:                                               ; preds = %84, %65
  %75 = load i32, i32* %12, align 4
  %76 = icmp sle i32 %75, 9
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %19, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %74

87:                                               ; preds = %74
  %88 = load i32, i32* %10, align 4
  %89 = ashr i32 %88, 8
  %90 = and i32 %89, 255
  %91 = getelementptr inbounds i32, i32* %19, i64 10
  store i32 %90, i32* %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 255
  %94 = getelementptr inbounds i32, i32* %19, i64 11
  store i32 %93, i32* %94, align 4
  br label %99

95:                                               ; preds = %3
  %96 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

99:                                               ; preds = %87, %48, %31
  %100 = call i32 @deb_fw(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %102 = add nsw i32 %101, 2
  %103 = call i32 @debug_dump(i32* %19, i32 %102, i32 (i8*)* @deb_fw)
  %104 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %105 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %106 = call i32 @usb_sndbulkpipe(%struct.usb_device* %105, i32 2)
  %107 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %108 = add nsw i32 %107, 2
  %109 = call i32 @usb_bulk_msg(%struct.usb_device* %104, i32 %106, i32* %19, i32 %108, i32* %11, i32 2000)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %99
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %115 = add nsw i32 %114, 2
  %116 = load i32, i32* %11, align 4
  %117 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %115, i32 %116)
  br label %125

118:                                              ; preds = %99
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %121 = add nsw i32 %120, 2
  %122 = icmp ne i32 %119, %121
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 -1, i32 0
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %118, %112
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

130:                                              ; preds = %125
  %131 = call i32 @memset(i32* %19, i32 0, i32 9)
  %132 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %133 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %134 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %133, i32 1)
  %135 = call i32 @usb_bulk_msg(%struct.usb_device* %132, i32 %134, i32* %19, i32 9, i32* %11, i32 2000)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* %13, align 4
  %140 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

142:                                              ; preds = %130
  %143 = call i32 @deb_fw(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @debug_dump(i32* %19, i32 %144, i32 (i8*)* @deb_fw)
  store i32 0, i32* %10, align 4
  %146 = load i32, i32* %6, align 4
  switch i32 %146, label %341 [
    i32 129, label %147
    i32 128, label %210
    i32 130, label %273
  ]

147:                                              ; preds = %142
  %148 = getelementptr inbounds i32, i32* %19, i64 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 17
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %153 = load i32, i32* @EIO, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

155:                                              ; preds = %147
  %156 = getelementptr inbounds i32, i32* %19, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 5
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %161 = load i32, i32* @EIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

163:                                              ; preds = %155
  %164 = getelementptr inbounds i32, i32* %19, i64 4
  %165 = load i32, i32* %164, align 16
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %169 = load i32, i32* @EIO, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

171:                                              ; preds = %163
  %172 = getelementptr inbounds i32, i32* %19, i64 5
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 4
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

179:                                              ; preds = %171
  store i32 4, i32* %12, align 4
  br label %180

180:                                              ; preds = %190, %179
  %181 = load i32, i32* %12, align 4
  %182 = icmp sle i32 %181, 6
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %19, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %183
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %180

193:                                              ; preds = %180
  %194 = getelementptr inbounds i32, i32* %19, i64 7
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %195, 256
  %197 = getelementptr inbounds i32, i32* %19, i64 8
  %198 = load i32, i32* %197, align 16
  %199 = add nsw i32 %196, %198
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %193
  %203 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %204 = load i32, i32* @EIO, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

206:                                              ; preds = %193
  %207 = getelementptr inbounds i32, i32* %19, i64 6
  %208 = load i32, i32* %207, align 8
  %209 = load i32*, i32** %7, align 8
  store i32 %208, i32* %209, align 4
  br label %341

210:                                              ; preds = %142
  %211 = getelementptr inbounds i32, i32* %19, i64 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 17
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %216 = load i32, i32* @EIO, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

218:                                              ; preds = %210
  %219 = getelementptr inbounds i32, i32* %19, i64 3
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 5
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %224 = load i32, i32* @EIO, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

226:                                              ; preds = %218
  %227 = getelementptr inbounds i32, i32* %19, i64 4
  %228 = load i32, i32* %227, align 16
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %232 = load i32, i32* @EIO, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

234:                                              ; preds = %226
  %235 = getelementptr inbounds i32, i32* %19, i64 5
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 2
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %240 = load i32, i32* @EIO, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

242:                                              ; preds = %234
  store i32 4, i32* %12, align 4
  br label %243

243:                                              ; preds = %253, %242
  %244 = load i32, i32* %12, align 4
  %245 = icmp sle i32 %244, 6
  br i1 %245, label %246, label %256

246:                                              ; preds = %243
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %19, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %10, align 4
  br label %253

253:                                              ; preds = %246
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %12, align 4
  br label %243

256:                                              ; preds = %243
  %257 = getelementptr inbounds i32, i32* %19, i64 7
  %258 = load i32, i32* %257, align 4
  %259 = mul nsw i32 %258, 256
  %260 = getelementptr inbounds i32, i32* %19, i64 8
  %261 = load i32, i32* %260, align 16
  %262 = add nsw i32 %259, %261
  %263 = load i32, i32* %10, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %256
  %266 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %267 = load i32, i32* @EIO, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

269:                                              ; preds = %256
  %270 = getelementptr inbounds i32, i32* %19, i64 6
  %271 = load i32, i32* %270, align 8
  %272 = load i32*, i32** %7, align 8
  store i32 %271, i32* %272, align 4
  br label %341

273:                                              ; preds = %142
  %274 = getelementptr inbounds i32, i32* %19, i64 2
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 16
  br i1 %276, label %277, label %281

277:                                              ; preds = %273
  %278 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %279 = load i32, i32* @EIO, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

281:                                              ; preds = %273
  %282 = getelementptr inbounds i32, i32* %19, i64 3
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 5
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %287 = load i32, i32* @EIO, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

289:                                              ; preds = %281
  %290 = getelementptr inbounds i32, i32* %19, i64 4
  %291 = load i32, i32* %290, align 16
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %289
  %294 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %295 = load i32, i32* @EIO, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

297:                                              ; preds = %289
  %298 = getelementptr inbounds i32, i32* %19, i64 5
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 1
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %303 = load i32, i32* @EIO, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

305:                                              ; preds = %297
  %306 = getelementptr inbounds i32, i32* %19, i64 6
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 16
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %311 = load i32, i32* @EIO, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

313:                                              ; preds = %305
  store i32 4, i32* %12, align 4
  br label %314

314:                                              ; preds = %324, %313
  %315 = load i32, i32* %12, align 4
  %316 = icmp sle i32 %315, 6
  br i1 %316, label %317, label %327

317:                                              ; preds = %314
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %19, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %10, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %10, align 4
  br label %324

324:                                              ; preds = %317
  %325 = load i32, i32* %12, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %12, align 4
  br label %314

327:                                              ; preds = %314
  %328 = getelementptr inbounds i32, i32* %19, i64 7
  %329 = load i32, i32* %328, align 4
  %330 = mul nsw i32 %329, 256
  %331 = getelementptr inbounds i32, i32* %19, i64 8
  %332 = load i32, i32* %331, align 16
  %333 = add nsw i32 %330, %332
  %334 = load i32, i32* %10, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %327
  %337 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %338 = load i32, i32* @EIO, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

340:                                              ; preds = %327
  br label %341

341:                                              ; preds = %142, %340, %269, %206
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %342

342:                                              ; preds = %341, %336, %309, %301, %293, %285, %277, %265, %238, %230, %222, %214, %202, %175, %167, %159, %151, %138, %128, %95
  %343 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %343)
  %344 = load i32, i32* %4, align 4
  ret i32 %344
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @err(i8*, ...) #2

declare dso_local i32 @deb_fw(i8*) #2

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #2

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #2

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

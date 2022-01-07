; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_dev_printdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_dev_printdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mceusb_dev = type { i32, i32, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@USB_BUFLEN = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%sx data: %s(length=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Request\00\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Got\00\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Device reset requested\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Unknown command 0x%02x 0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Get hw/sw rev?\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"hw/sw rev 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Previous command not supported\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"End of signal\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Ping\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Resp to 9f 05 of 0x%02x 0x%02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"%s carrier mode and freq of 0x%02x 0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Get carrier mode and freq\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"%s transmit blaster mask of 0x%02x\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"%s receive timeout of %d ms\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Get receive timeout\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Get transmit blaster mask\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"%s %s-range receive sensor in use\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Get receive sensor\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"RX pulse count: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Error! Hardware is likely wedged...\0A\00", align 1
@MCE_IRDATA_TRAILER = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [20 x i8] c"End of raw IR data\0A\00", align 1
@MCE_COMMAND_MASK = common dso_local global i32 0, align 4
@MCE_COMMAND_IRDATA = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [37 x i8] c"Raw IR data, %d pulse/space samples\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mceusb_dev*, i8*, i32, i32, i32)* @mceusb_dev_printdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mceusb_dev_printdata(%struct.mceusb_dev* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mceusb_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [9 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.device*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mceusb_dev* %0, %struct.mceusb_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* @USB_BUFLEN, align 4
  %24 = mul nsw i32 %23, 3
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %30 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %29, i32 0, i32 3
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %18, align 8
  store i32 0, i32* %21, align 4
  %32 = load i32, i32* @debug, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  store i32 1, i32* %22, align 4
  br label %296

35:                                               ; preds = %5
  %36 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %37 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 2, i32* %21, align 4
  br label %48

48:                                               ; preds = %47, %44, %41, %35
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %21, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %22, align 4
  br label %296

53:                                               ; preds = %48
  store i32 0, i32* %19, align 4
  br label %54

54:                                               ; preds = %80, %53
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* @USB_BUFLEN, align 4
  %61 = icmp slt i32 %59, %60
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i1 [ false, %54 ], [ %61, %58 ]
  br i1 %63, label %64, label %83

64:                                               ; preds = %62
  %65 = load i32, i32* %19, align 4
  %66 = mul nsw i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %28, i64 %67
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = and i32 %76, 255
  %78 = trunc i32 %77 to i8
  %79 = call i32 @snprintf(i8* %68, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 signext %78)
  br label %80

80:                                               ; preds = %64
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %54

83:                                               ; preds = %62
  %84 = load %struct.device*, %struct.device** %18, align 8
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %88, i8* %28, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %95 = call i32 @strcpy(i8* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %99

96:                                               ; preds = %83
  %97 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %98 = call i32 @strcpy(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %21, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %20, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %20, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = and i32 %108, 255
  store i32 %109, i32* %14, align 4
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = and i32 %116, 255
  store i32 %117, i32* %15, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* %20, align 4
  %120 = add nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = and i32 %124, 255
  store i32 %125, i32* %16, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %127, 3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = and i32 %132, 255
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %14, align 4
  switch i32 %134, label %271 [
    i32 130, label %135
    i32 129, label %150
    i32 131, label %191
  ]

135:                                              ; preds = %99
  %136 = load i32, i32* %15, align 4
  %137 = icmp eq i32 %136, 129
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32, i32* %16, align 4
  %140 = icmp eq i32 %139, 149
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.device*, %struct.device** %18, align 8
  %143 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %149

144:                                              ; preds = %138, %135
  %145 = load %struct.device*, %struct.device** %18, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %141
  br label %272

150:                                              ; preds = %99
  %151 = load i32, i32* %15, align 4
  switch i32 %151, label %185 [
    i32 147, label %152
    i32 149, label %178
    i32 128, label %181
    i32 133, label %184
    i32 132, label %184
  ]

152:                                              ; preds = %150
  %153 = load i32, i32* %9, align 4
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.device*, %struct.device** %18, align 8
  %157 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %156, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %177

158:                                              ; preds = %152
  %159 = load %struct.device*, %struct.device** %18, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %20, align 4
  %164 = add nsw i32 %163, 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %170, 5
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %159, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %160, i32 %161, i32 %168, i32 %175)
  br label %177

177:                                              ; preds = %158, %155
  br label %190

178:                                              ; preds = %150
  %179 = load %struct.device*, %struct.device** %18, align 8
  %180 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %190

181:                                              ; preds = %150
  %182 = load %struct.device*, %struct.device** %18, align 8
  %183 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %182, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %190

184:                                              ; preds = %150, %150
  br label %185

185:                                              ; preds = %150, %184
  %186 = load %struct.device*, %struct.device** %18, align 8
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %186, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %181, %178, %177
  br label %272

191:                                              ; preds = %99
  %192 = load i32, i32* %15, align 4
  switch i32 %192, label %265 [
    i32 142, label %193
    i32 143, label %196
    i32 137, label %199
    i32 141, label %204
    i32 148, label %210
    i32 138, label %213
    i32 139, label %218
    i32 145, label %227
    i32 144, label %230
    i32 140, label %233
    i32 146, label %241
    i32 128, label %261
    i32 136, label %264
    i32 135, label %264
    i32 134, label %264
  ]

193:                                              ; preds = %191
  %194 = load %struct.device*, %struct.device** %18, align 8
  %195 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %194, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %270

196:                                              ; preds = %191
  %197 = load %struct.device*, %struct.device** %18, align 8
  %198 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %270

199:                                              ; preds = %191
  %200 = load %struct.device*, %struct.device** %18, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %17, align 4
  %203 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %201, i32 %202)
  br label %270

204:                                              ; preds = %191
  %205 = load %struct.device*, %struct.device** %18, align 8
  %206 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %17, align 4
  %209 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %205, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* %206, i32 %207, i32 %208)
  br label %270

210:                                              ; preds = %191
  %211 = load %struct.device*, %struct.device** %18, align 8
  %212 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  br label %270

213:                                              ; preds = %191
  %214 = load %struct.device*, %struct.device** %18, align 8
  %215 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %216 = load i32, i32* %16, align 4
  %217 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %214, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i8* %215, i32 %216)
  br label %270

218:                                              ; preds = %191
  %219 = load %struct.device*, %struct.device** %18, align 8
  %220 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %221 = load i32, i32* %16, align 4
  %222 = shl i32 %221, 8
  %223 = load i32, i32* %17, align 4
  %224 = or i32 %222, %223
  %225 = sdiv i32 %224, 2
  %226 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %220, i32 %225)
  br label %270

227:                                              ; preds = %191
  %228 = load %struct.device*, %struct.device** %18, align 8
  %229 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  br label %270

230:                                              ; preds = %191
  %231 = load %struct.device*, %struct.device** %18, align 8
  %232 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %231, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  br label %270

233:                                              ; preds = %191
  %234 = load %struct.device*, %struct.device** %18, align 8
  %235 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %236 = load i32, i32* %16, align 4
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)
  %240 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i8* %235, i8* %239)
  br label %270

241:                                              ; preds = %191
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load %struct.device*, %struct.device** %18, align 8
  %246 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %245, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  br label %260

247:                                              ; preds = %241
  %248 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %249 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  %253 = load %struct.device*, %struct.device** %18, align 8
  %254 = load i32, i32* %16, align 4
  %255 = shl i32 %254, 8
  %256 = load i32, i32* %17, align 4
  %257 = or i32 %255, %256
  %258 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %253, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %252, %247
  br label %260

260:                                              ; preds = %259, %244
  br label %270

261:                                              ; preds = %191
  %262 = load %struct.device*, %struct.device** %18, align 8
  %263 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %262, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0))
  br label %270

264:                                              ; preds = %191, %191, %191
  br label %265

265:                                              ; preds = %191, %264
  %266 = load %struct.device*, %struct.device** %18, align 8
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* %15, align 4
  %269 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %266, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %265, %261, %260, %233, %230, %227, %218, %213, %210, %204, %199, %196, %193
  br label %272

271:                                              ; preds = %99
  br label %272

272:                                              ; preds = %271, %270, %190, %149
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* @MCE_IRDATA_TRAILER, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load %struct.device*, %struct.device** %18, align 8
  %278 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %277, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  br label %295

279:                                              ; preds = %272
  %280 = load i32, i32* %14, align 4
  %281 = icmp ne i32 %280, 131
  br i1 %281, label %282, label %294

282:                                              ; preds = %279
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* @MCE_COMMAND_MASK, align 4
  %285 = and i32 %283, %284
  %286 = load i32, i32* @MCE_COMMAND_IRDATA, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %294

288:                                              ; preds = %282
  %289 = load %struct.device*, %struct.device** %18, align 8
  %290 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %291 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %289, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %288, %282, %279
  br label %295

295:                                              ; preds = %294, %276
  store i32 0, i32* %22, align 4
  br label %296

296:                                              ; preds = %295, %52, %34
  %297 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %297)
  %298 = load i32, i32* %22, align 4
  switch i32 %298, label %300 [
    i32 0, label %299
    i32 1, label %299
  ]

299:                                              ; preds = %296, %296
  ret void

300:                                              ; preds = %296
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

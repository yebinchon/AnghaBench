; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@USB_VID_MEDION = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@CMD_I2C_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"i2c read failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"i2c read may have failed\0A\00", align 1
@CMD_I2C_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"i2c write may have failed\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @cxusb_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %21 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %20)
  store %struct.dvb_usb_device* %21, %struct.dvb_usb_device** %8, align 8
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %22, i32 0, i32 0
  %24 = call i64 @mutex_lock_interruptible(i32* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %343

29:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %326, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %329

34:                                               ; preds = %30
  %35 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB_VID_MEDION, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %34
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 %46
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %53 [
    i32 99, label %50
  ]

50:                                               ; preds = %43
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %52 = call i32 @cxusb_gpio_tuner(%struct.dvb_usb_device* %51, i32 0)
  br label %56

53:                                               ; preds = %43
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %55 = call i32 @cxusb_gpio_tuner(%struct.dvb_usb_device* %54, i32 1)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i64 %60
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @I2C_M_RD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %126

67:                                               ; preds = %57
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i64 %70
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 1, %73
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %11, align 8
  %77 = alloca i32, i64 %75, align 16
  store i64 %75, i64* %12, align 8
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 %81
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i64 %88
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %91, i32* %92, align 4
  %93 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %94 = load i32, i32* @CMD_I2C_READ, align 4
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i64 %98
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 1, %101
  %103 = call i64 @cxusb_ctrl_msg(%struct.dvb_usb_device* %93, i32 %94, i32* %95, i32 3, i32* %77, i32 %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %67
  %106 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %13, align 4
  br label %122

107:                                              ; preds = %67
  %108 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i64 %110
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %77, i64 1
  %115 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i64 %117
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @memcpy(i32* %113, i32* %114, i32 %120)
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %107, %105
  %123 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %13, align 4
  switch i32 %124, label %345 [
    i32 0, label %125
    i32 2, label %329
  ]

125:                                              ; preds = %122
  br label %325

126:                                              ; preds = %57
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %263

131:                                              ; preds = %126
  %132 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i64 %135
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @I2C_M_RD, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %263

142:                                              ; preds = %131
  %143 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i64 %145
  %147 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i64 %152
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %148, %155
  br i1 %156, label %157, label %263

157:                                              ; preds = %142
  %158 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %158, i64 %160
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 3, %163
  %165 = zext i32 %164 to i64
  %166 = call i8* @llvm.stacksave()
  store i8* %166, i8** %14, align 8
  %167 = alloca i32, i64 %165, align 16
  store i64 %165, i64* %15, align 8
  %168 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %168, i64 %171
  %173 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 1, %174
  %176 = zext i32 %175 to i64
  %177 = alloca i32, i64 %176, align 16
  store i64 %176, i64* %16, align 8
  %178 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %178, i64 %180
  %182 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds i32, i32* %167, i64 0
  store i32 %183, i32* %184, align 16
  %185 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %185, i64 %188
  %190 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %191, i32* %192, align 4
  %193 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %193, i64 %195
  %197 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds i32, i32* %167, i64 2
  store i32 %198, i32* %199, align 8
  %200 = getelementptr inbounds i32, i32* %167, i64 3
  %201 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %201, i64 %203
  %205 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %207, i64 %209
  %211 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @memcpy(i32* %200, i32* %206, i32 %212)
  %214 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %215 = load i32, i32* @CMD_I2C_READ, align 4
  %216 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %216, i64 %218
  %220 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 3, %221
  %223 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %223, i64 %226
  %228 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = add nsw i32 1, %229
  %231 = call i64 @cxusb_ctrl_msg(%struct.dvb_usb_device* %214, i32 %215, i32* %167, i32 %222, i32* %177, i32 %230)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %157
  store i32 2, i32* %13, align 4
  br label %259

234:                                              ; preds = %157
  %235 = getelementptr inbounds i32, i32* %177, i64 0
  %236 = load i32, i32* %235, align 16
  %237 = icmp ne i32 %236, 8
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = call i32 @deb_i2c(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %240

240:                                              ; preds = %238, %234
  %241 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %241, i64 %244
  %246 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %177, i64 1
  %249 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %249, i64 %252
  %254 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @memcpy(i32* %247, i32* %248, i32 %255)
  %257 = load i32, i32* %9, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %259

259:                                              ; preds = %240, %233
  %260 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %260)
  %261 = load i32, i32* %13, align 4
  switch i32 %261, label %345 [
    i32 0, label %262
    i32 2, label %329
  ]

262:                                              ; preds = %259
  br label %324

263:                                              ; preds = %142, %131, %126
  %264 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %264, i64 %266
  %268 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 2, %269
  %271 = zext i32 %270 to i64
  %272 = call i8* @llvm.stacksave()
  store i8* %272, i8** %17, align 8
  %273 = alloca i32, i64 %271, align 16
  store i64 %271, i64* %18, align 8
  %274 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %274, i64 %276
  %278 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = getelementptr inbounds i32, i32* %273, i64 0
  store i32 %279, i32* %280, align 16
  %281 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %281, i64 %283
  %285 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = getelementptr inbounds i32, i32* %273, i64 1
  store i32 %286, i32* %287, align 4
  %288 = getelementptr inbounds i32, i32* %273, i64 2
  %289 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %289, i64 %291
  %293 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %292, i32 0, i32 3
  %294 = load i32*, i32** %293, align 8
  %295 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %295, i64 %297
  %299 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @memcpy(i32* %288, i32* %294, i32 %300)
  %302 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %303 = load i32, i32* @CMD_I2C_WRITE, align 4
  %304 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %304, i64 %306
  %308 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 2, %309
  %311 = call i64 @cxusb_ctrl_msg(%struct.dvb_usb_device* %302, i32 %303, i32* %273, i32 %310, i32* %19, i32 1)
  %312 = icmp slt i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %263
  store i32 2, i32* %13, align 4
  br label %320

314:                                              ; preds = %263
  %315 = load i32, i32* %19, align 4
  %316 = icmp ne i32 %315, 8
  br i1 %316, label %317, label %319

317:                                              ; preds = %314
  %318 = call i32 @deb_i2c(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %319

319:                                              ; preds = %317, %314
  store i32 0, i32* %13, align 4
  br label %320

320:                                              ; preds = %319, %313
  %321 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %321)
  %322 = load i32, i32* %13, align 4
  switch i32 %322, label %345 [
    i32 0, label %323
    i32 2, label %329
  ]

323:                                              ; preds = %320
  br label %324

324:                                              ; preds = %323, %262
  br label %325

325:                                              ; preds = %324, %125
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %9, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %9, align 4
  br label %30

329:                                              ; preds = %320, %259, %122, %30
  %330 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %331 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %330, i32 0, i32 0
  %332 = call i32 @mutex_unlock(i32* %331)
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* %7, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %338

336:                                              ; preds = %329
  %337 = load i32, i32* %7, align 4
  br label %341

338:                                              ; preds = %329
  %339 = load i32, i32* @EREMOTEIO, align 4
  %340 = sub nsw i32 0, %339
  br label %341

341:                                              ; preds = %338, %336
  %342 = phi i32 [ %337, %336 ], [ %340, %338 ]
  store i32 %342, i32* %4, align 4
  br label %343

343:                                              ; preds = %341, %26
  %344 = load i32, i32* %4, align 4
  ret i32 %344

345:                                              ; preds = %320, %259, %122
  unreachable
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @cxusb_gpio_tuner(%struct.dvb_usb_device*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @deb_i2c(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

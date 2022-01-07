; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_az6027.c_az6027_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_az6027.c_az6027_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }
%struct.dvb_usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"more than 2 i2c messages at a time is not handled yet. TODO.\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @az6027_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6027_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %18)
  store %struct.dvb_usb_device* %19, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8** @kmalloc(i32 256, i32 %20)
  store i8** %21, i8*** %17, align 8
  %22 = load i8**, i8*** %17, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %403

27:                                               ; preds = %3
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %28, i32 0, i32 0
  %30 = call i64 @mutex_lock_interruptible(i32* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8**, i8*** %17, align 8
  %34 = call i32 @kfree(i8** %33)
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %403

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %393, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %396

47:                                               ; preds = %43
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i64 %50
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 153
  br i1 %54, label %55, label %72

55:                                               ; preds = %47
  store i8* inttoptr (i64 190 to i8*), i8** %16, align 8
  store i32 0, i32* %13, align 4
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 %58
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 255
  store i32 %64, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %65 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i8**, i8*** %17, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @az6027_usb_out_op(%struct.dvb_usb_device* %65, i8* %66, i32 %67, i32 %68, i8** %69, i32 %70)
  br label %72

72:                                               ; preds = %55, %47
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i64 %75
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 208
  br i1 %79, label %80, label %257

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %181

85:                                               ; preds = %80
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i64 %89
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @I2C_M_RD, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %181

96:                                               ; preds = %85
  store i8* inttoptr (i64 185 to i8*), i8** %16, align 8
  %97 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i64 %99
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = and i32 %105, 65280
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i64 %109
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 255
  %116 = or i32 %106, %115
  store i32 %116, i32* %13, align 4
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i64 %119
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i64 %125
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = add nsw i32 %122, %129
  store i32 %130, i32* %14, align 4
  %131 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %131, i64 %134
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 6
  store i32 %138, i32* %15, align 4
  %139 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i8**, i8*** %17, align 8
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @az6027_usb_in_op(%struct.dvb_usb_device* %139, i8* %140, i32 %141, i32 %142, i8** %143, i32 %144)
  store i32 %145, i32* %12, align 4
  %146 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %146, i64 %149
  %151 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %175, %96
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %153
  %158 = load i8**, i8*** %17, align 8
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 5
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %158, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %165, i64 %168
  %170 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %164, i32* %174, align 4
  br label %175

175:                                              ; preds = %157
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %153

178:                                              ; preds = %153
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %256

181:                                              ; preds = %85, %80
  store i8* inttoptr (i64 189 to i8*), i8** %16, align 8
  %182 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %182, i64 %184
  %186 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 8
  %191 = and i32 %190, 65280
  %192 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %192, i64 %194
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 255
  %201 = or i32 %191, %200
  store i32 %201, i32* %13, align 4
  %202 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %202, i64 %204
  %206 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 512
  store i32 %208, i32* %14, align 4
  %209 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %209, i64 %211
  %213 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %214, 2
  store i32 %215, i32* %15, align 4
  %216 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %216, i64 %218
  %220 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %221, 2
  store i32 %222, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %223

223:                                              ; preds = %245, %181
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %11, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %248

227:                                              ; preds = %223
  %228 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %228, i64 %230
  %232 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 2
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  %241 = load i8**, i8*** %17, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  store i8* %240, i8** %244, align 8
  br label %245

245:                                              ; preds = %227
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %10, align 4
  br label %223

248:                                              ; preds = %223
  %249 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %250 = load i8*, i8** %16, align 8
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %13, align 4
  %253 = load i8**, i8*** %17, align 8
  %254 = load i32, i32* %15, align 4
  %255 = call i32 @az6027_usb_out_op(%struct.dvb_usb_device* %249, i8* %250, i32 %251, i32 %252, i8** %253, i32 %254)
  br label %256

256:                                              ; preds = %248, %178
  br label %257

257:                                              ; preds = %256, %72
  %258 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %258, i64 %260
  %262 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 192
  br i1 %264, label %265, label %392

265:                                              ; preds = %257
  %266 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %266, i64 %268
  %270 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @I2C_M_RD, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %327

275:                                              ; preds = %265
  store i8* inttoptr (i64 185 to i8*), i8** %16, align 8
  store i32 0, i32* %13, align 4
  %276 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %276, i64 %278
  %280 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  store i32 %281, i32* %14, align 4
  %282 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %283 = load i32, i32* %9, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %282, i64 %284
  %286 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, 6
  store i32 %288, i32* %15, align 4
  %289 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %290 = load i8*, i8** %16, align 8
  %291 = load i32, i32* %14, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load i8**, i8*** %17, align 8
  %294 = load i32, i32* %15, align 4
  %295 = call i32 @az6027_usb_in_op(%struct.dvb_usb_device* %289, i8* %290, i32 %291, i32 %292, i8** %293, i32 %294)
  store i32 %295, i32* %12, align 4
  %296 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %296, i64 %298
  %300 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %302

302:                                              ; preds = %323, %275
  %303 = load i32, i32* %10, align 4
  %304 = load i32, i32* %11, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %326

306:                                              ; preds = %302
  %307 = load i8**, i8*** %17, align 8
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 %308, 5
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8*, i8** %307, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = ptrtoint i8* %312 to i32
  %314 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %314, i64 %316
  %318 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %10, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32 %313, i32* %322, align 4
  br label %323

323:                                              ; preds = %306
  %324 = load i32, i32* %10, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %10, align 4
  br label %302

326:                                              ; preds = %302
  br label %391

327:                                              ; preds = %265
  store i8* inttoptr (i64 189 to i8*), i8** %16, align 8
  %328 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %329 = load i32, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %328, i64 %330
  %332 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %331, i32 0, i32 1
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = and i32 %335, 255
  store i32 %336, i32* %13, align 4
  %337 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %337, i64 %339
  %341 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = add nsw i32 %342, 256
  store i32 %343, i32* %14, align 4
  %344 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %344, i64 %346
  %348 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = sub nsw i32 %349, 1
  store i32 %350, i32* %15, align 4
  %351 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %351, i64 %353
  %355 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %356, 1
  store i32 %357, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %358

358:                                              ; preds = %380, %327
  %359 = load i32, i32* %10, align 4
  %360 = load i32, i32* %11, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %362, label %383

362:                                              ; preds = %358
  %363 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %364 = load i32, i32* %9, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %363, i64 %365
  %367 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %366, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = inttoptr i64 %374 to i8*
  %376 = load i8**, i8*** %17, align 8
  %377 = load i32, i32* %10, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8*, i8** %376, i64 %378
  store i8* %375, i8** %379, align 8
  br label %380

380:                                              ; preds = %362
  %381 = load i32, i32* %10, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %10, align 4
  br label %358

383:                                              ; preds = %358
  %384 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %385 = load i8*, i8** %16, align 8
  %386 = load i32, i32* %14, align 4
  %387 = load i32, i32* %13, align 4
  %388 = load i8**, i8*** %17, align 8
  %389 = load i32, i32* %15, align 4
  %390 = call i32 @az6027_usb_out_op(%struct.dvb_usb_device* %384, i8* %385, i32 %386, i32 %387, i8** %388, i32 %389)
  br label %391

391:                                              ; preds = %383, %326
  br label %392

392:                                              ; preds = %391, %257
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %9, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %9, align 4
  br label %43

396:                                              ; preds = %43
  %397 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %398 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %397, i32 0, i32 0
  %399 = call i32 @mutex_unlock(i32* %398)
  %400 = load i8**, i8*** %17, align 8
  %401 = call i32 @kfree(i8** %400)
  %402 = load i32, i32* %9, align 4
  store i32 %402, i32* %4, align 4
  br label %403

403:                                              ; preds = %396, %32, %24
  %404 = load i32, i32* %4, align 4
  ret i32 %404
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i8** @kmalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @az6027_usb_out_op(%struct.dvb_usb_device*, i8*, i32, i32, i8**, i32) #1

declare dso_local i32 @az6027_usb_in_op(%struct.dvb_usb_device*, i8*, i32, i32, i8**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

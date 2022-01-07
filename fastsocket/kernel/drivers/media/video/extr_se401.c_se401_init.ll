; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i8, i8*, i8*, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32*, %struct.TYPE_3__*, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@SE401_REQ_LED_CONTROL = common dso_local global i32 0, align 4
@SE401_REQ_GET_CAMERA_DESCRIPTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Wrong descriptor type\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ExtraFeatures: %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" Sizes:\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %dx%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@SE401_REQ_GET_WIDTH = common dso_local global i32 0, align 4
@SE401_REQ_GET_HEIGHT = common dso_local global i32 0, align 4
@SE401_FORMAT_BAYER = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Bayer format not supported!\00", align 1
@SE401_REQ_SET_OUTPUT_MODE = common dso_local global i32 0, align 4
@SE401_REQ_GET_BRT = common dso_local global i32 0, align 4
@VIDEO_PALETTE_RGB24 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Allocation of inturb failed\0A\00", align 1
@SE401_BUTTON_ENDPOINT = common dso_local global i32 0, align 4
@se401_button_irq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"int urb burned down\0A\00", align 1
@SE401_REQ_CAMERA_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_se401*, i32)* @se401_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se401_init(%struct.usb_se401* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_se401*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca [200 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.usb_se401* %0, %struct.usb_se401** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %12 = load i32, i32* @SE401_REQ_LED_CONTROL, align 4
  %13 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %11, i32 %12, i32 1, i8* null, i32 0)
  %14 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %15 = load i32, i32* @SE401_REQ_GET_CAMERA_DESCRIPTOR, align 4
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %17 = call i32 @se401_sndctrl(i32 0, %struct.usb_se401* %14, i32 %15, i32 0, i8* %16, i32 64)
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 65
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %365

24:                                               ; preds = %2
  %25 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %25, i32 200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 4
  %31 = load i8, i8* %30, align 4
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 5
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = mul nsw i32 %35, 256
  %37 = add nsw i32 %32, %36
  %38 = trunc i32 %37 to i8
  %39 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %40 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %39, i32 0, i32 0
  store i8 %38, i8* %40, align 8
  %41 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %42 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kmalloc(i32 %46, i32 %47)
  %49 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %50 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %52 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %365

56:                                               ; preds = %24
  %57 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %58 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = zext i8 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kmalloc(i32 %62, i32 %63)
  %65 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %66 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %68 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %56
  %72 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %73 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @kfree(i8* %74)
  store i32 1, i32* %3, align 4
  br label %365

76:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %135, %76
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %80 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 8
  %82 = zext i8 %81 to i32
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %138

84:                                               ; preds = %77
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %85, 4
  %87 = add nsw i32 6, %86
  %88 = add nsw i32 %87, 0
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i32, i32* %6, align 4
  %94 = mul nsw i32 %93, 4
  %95 = add nsw i32 6, %94
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = mul nsw i32 %100, 256
  %102 = add nsw i32 %92, %101
  %103 = trunc i32 %102 to i8
  %104 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %105 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 %103, i8* %109, align 1
  %110 = load i32, i32* %6, align 4
  %111 = mul nsw i32 %110, 4
  %112 = add nsw i32 6, %111
  %113 = add nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i32, i32* %6, align 4
  %119 = mul nsw i32 %118, 4
  %120 = add nsw i32 6, %119
  %121 = add nsw i32 %120, 3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = mul nsw i32 %125, 256
  %127 = add nsw i32 %117, %126
  %128 = trunc i32 %127 to i8
  %129 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %130 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 %128, i8* %134, align 1
  br label %135

135:                                              ; preds = %84
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %77

138:                                              ; preds = %77
  %139 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i32, i32* %10, align 4
  %144 = sub nsw i32 200, %143
  %145 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %142, i32 %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %181, %138
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %151 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %150, i32 0, i32 0
  %152 = load i8, i8* %151, align 8
  %153 = zext i8 %152 to i32
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %148
  %156 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i32, i32* %10, align 4
  %161 = sub nsw i32 200, %160
  %162 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %163 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %171 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %159, i32 %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %169, i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %155
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %148

184:                                              ; preds = %148
  %185 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %186 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %185, i32 0, i32 13
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %190 = call i32 (i32*, i8*, ...) @dev_info(i32* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %189)
  %191 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %192 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %195 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %194, i32 0, i32 0
  %196 = load i8, i8* %195, align 8
  %197 = zext i8 %196 to i32
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %193, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %204 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %207 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %206, i32 0, i32 0
  %208 = load i8, i8* %207, align 8
  %209 = zext i8 %208 to i32
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %205, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = mul nsw i32 %202, %214
  %216 = mul nsw i32 %215, 3
  %217 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %218 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 8
  %219 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %220 = load i32, i32* @SE401_REQ_GET_WIDTH, align 4
  %221 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %222 = call i32 @se401_sndctrl(i32 0, %struct.usb_se401* %219, i32 %220, i32 0, i8* %221, i32 64)
  store i32 %222, i32* %7, align 4
  %223 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %224 = load i8, i8* %223, align 16
  %225 = zext i8 %224 to i32
  %226 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = mul nsw i32 %228, 256
  %230 = add nsw i32 %225, %229
  %231 = trunc i32 %230 to i8
  %232 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %233 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %232, i32 0, i32 4
  store i8 %231, i8* %233, align 4
  %234 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %235 = load i32, i32* @SE401_REQ_GET_HEIGHT, align 4
  %236 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %237 = call i32 @se401_sndctrl(i32 0, %struct.usb_se401* %234, i32 %235, i32 0, i8* %236, i32 64)
  store i32 %237, i32* %7, align 4
  %238 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %239 = load i8, i8* %238, align 16
  %240 = zext i8 %239 to i32
  %241 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = mul nsw i32 %243, 256
  %245 = add nsw i32 %240, %244
  %246 = trunc i32 %245 to i8
  %247 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %248 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %247, i32 0, i32 5
  store i8 %246, i8* %248, align 1
  %249 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 2
  %250 = load i8, i8* %249, align 2
  %251 = zext i8 %250 to i32
  %252 = load i8, i8* @SE401_FORMAT_BAYER, align 1
  %253 = zext i8 %252 to i32
  %254 = and i32 %251, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %184
  %257 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %365

258:                                              ; preds = %184
  %259 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %260 = load i32, i32* @SE401_REQ_SET_OUTPUT_MODE, align 4
  %261 = load i8, i8* @SE401_FORMAT_BAYER, align 1
  %262 = zext i8 %261 to i32
  %263 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %259, i32 %260, i32 %262, i8* null, i32 0)
  %264 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %265 = load i32, i32* @SE401_REQ_GET_BRT, align 4
  %266 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %267 = call i32 @se401_sndctrl(i32 0, %struct.usb_se401* %264, i32 %265, i32 0, i8* %266, i32 64)
  store i32 %267, i32* %7, align 4
  %268 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %269 = load i8, i8* %268, align 16
  %270 = zext i8 %269 to i32
  %271 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = mul nsw i32 %273, 256
  %275 = add nsw i32 %270, %274
  %276 = trunc i32 %275 to i8
  %277 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %278 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %277, i32 0, i32 6
  store i8 %276, i8* %278, align 2
  %279 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %280 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %279, i32 0, i32 7
  store i32 45, i32* %280, align 8
  %281 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %282 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %281, i32 0, i32 8
  store i32 32, i32* %282, align 4
  %283 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %284 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %283, i32 0, i32 9
  store i32 32, i32* %284, align 8
  %285 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %286 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %285, i32 0, i32 10
  store i32 32, i32* %286, align 4
  %287 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %288 = call i32 @se401_set_exposure(%struct.usb_se401* %287, i32 20000)
  %289 = load i32, i32* @VIDEO_PALETTE_RGB24, align 4
  %290 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %291 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %290, i32 0, i32 19
  store i32 %289, i32* %291, align 8
  %292 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %293 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %292, i32 0, i32 11
  store i32 1, i32* %293, align 8
  %294 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %295 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %294, i32 0, i32 18
  store i64 0, i64* %295, align 8
  %296 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %297 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %296, i32 0, i32 17
  store i64 0, i64* %297, align 8
  %298 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %299 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %298, i32 0, i32 16
  store i64 0, i64* %299, align 8
  %300 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %301 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %300, i32 0, i32 15
  store i64 0, i64* %301, align 8
  %302 = load i32, i32* %5, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %349

304:                                              ; preds = %258
  %305 = load i32, i32* @GFP_KERNEL, align 4
  %306 = call i32* @usb_alloc_urb(i32 0, i32 %305)
  %307 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %308 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %307, i32 0, i32 12
  store i32* %306, i32** %308, align 8
  %309 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %310 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %309, i32 0, i32 12
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %319, label %313

313:                                              ; preds = %304
  %314 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %315 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %314, i32 0, i32 13
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 0
  %318 = call i32 (i32*, i8*, ...) @dev_info(i32* %317, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %365

319:                                              ; preds = %304
  %320 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %321 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %320, i32 0, i32 12
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %324 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %323, i32 0, i32 13
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %324, align 8
  %326 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %327 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %326, i32 0, i32 13
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %327, align 8
  %329 = load i32, i32* @SE401_BUTTON_ENDPOINT, align 4
  %330 = call i32 @usb_rcvintpipe(%struct.TYPE_3__* %328, i32 %329)
  %331 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %332 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %331, i32 0, i32 14
  %333 = load i32, i32* @se401_button_irq, align 4
  %334 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %335 = call i32 @usb_fill_int_urb(i32* %322, %struct.TYPE_3__* %325, i32 %330, i32* %332, i32 4, i32 %333, %struct.usb_se401* %334, i32 8)
  %336 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %337 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %336, i32 0, i32 12
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* @GFP_KERNEL, align 4
  %340 = call i64 @usb_submit_urb(i32* %338, i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %319
  %343 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %344 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %343, i32 0, i32 13
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 0
  %347 = call i32 (i32*, i8*, ...) @dev_info(i32* %346, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %365

348:                                              ; preds = %319
  br label %352

349:                                              ; preds = %258
  %350 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %351 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %350, i32 0, i32 12
  store i32* null, i32** %351, align 8
  br label %352

352:                                              ; preds = %349, %348
  %353 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %354 = load i32, i32* @SE401_REQ_CAMERA_POWER, align 4
  %355 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %353, i32 %354, i32 1, i8* null, i32 0)
  %356 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %357 = load i32, i32* @SE401_REQ_LED_CONTROL, align 4
  %358 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %356, i32 %357, i32 1, i8* null, i32 0)
  %359 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %360 = load i32, i32* @SE401_REQ_CAMERA_POWER, align 4
  %361 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %359, i32 %360, i32 0, i8* null, i32 0)
  %362 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %363 = load i32, i32* @SE401_REQ_LED_CONTROL, align 4
  %364 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %362, i32 %363, i32 0, i8* null, i32 0)
  store i32 0, i32* %3, align 4
  br label %365

365:                                              ; preds = %352, %342, %313, %256, %71, %55, %22
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local i32 @se401_sndctrl(i32, %struct.usb_se401*, i32, i32, i8*, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @se401_set_exposure(%struct.usb_se401*, i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32*, %struct.TYPE_3__*, i32, i32*, i32, i32, %struct.usb_se401*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @usb_submit_urb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

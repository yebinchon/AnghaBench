; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_init_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_init_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.cx231xx_dmaqueue }
%struct.TYPE_5__ = type { i32 (%struct.cx231xx.0*, %struct.urb*)*, i32, i32, %struct.urb**, i32*, i32* }
%struct.cx231xx.0 = type opaque
%struct.urb = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cx231xx_dmaqueue = type { i32, i32, i32, i32*, i32, i64*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"out of mem\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CX231XX_NEED_ADD_PS_PACKAGE_HEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot alloc memory for usb buffers\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot allocate memory for usbtransfer\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot alloc isoc_ctl.urb %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"unable to allocate %i bytes for transfer buffer %i%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" while in int\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cx231xx_isoc_irq_callback = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", align 1
@Raw_Video = common dso_local global i32 0, align 4
@TS1_serial_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_init_isoc(%struct.cx231xx* %0, i32 %1, i32 %2, i32 %3, i32 (%struct.cx231xx*, %struct.urb*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.cx231xx*, %struct.urb*)*, align 8
  %12 = alloca %struct.cx231xx_dmaqueue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.urb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (%struct.cx231xx*, %struct.urb*)* %4, i32 (%struct.cx231xx*, %struct.urb*)** %11, align 8
  %20 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store %struct.cx231xx_dmaqueue* %22, %struct.cx231xx_dmaqueue** %12, align 8
  %23 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %24 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 4096, i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %29 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %28, i32 0, i32 15
  store i32* %27, i32** %29, align 8
  %30 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %31 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %30, i32 0, i32 15
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = call i32 @cx231xx_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %395

38:                                               ; preds = %5
  %39 = load i32 (%struct.cx231xx*, %struct.urb*)*, i32 (%struct.cx231xx*, %struct.urb*)** %11, align 8
  %40 = bitcast i32 (%struct.cx231xx*, %struct.urb*)* %39 to i32 (%struct.cx231xx.0*, %struct.urb*)*
  %41 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 (%struct.cx231xx.0*, %struct.urb*)* %40, i32 (%struct.cx231xx.0*, %struct.urb*)** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %47 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 8
  %50 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %51 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %50, i32 0, i32 14
  store i64 0, i64* %51, align 8
  %52 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %53 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %52, i32 0, i32 13
  store i64 0, i64* %53, align 8
  %54 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %55 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %54, i32 0, i32 12
  store i64 0, i64* %55, align 8
  %56 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %57 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  %58 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %59 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %58, i32 0, i32 11
  store i64 0, i64* %59, align 8
  %60 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %61 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sdiv i32 %62, 2
  %64 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %65 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %67 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 1
  %70 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %71 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %73 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %72, i32 0, i32 10
  store i64 0, i64* %73, align 8
  %74 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %75 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %74, i32 0, i32 9
  store i64 0, i64* %75, align 8
  %76 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %77 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %76, i32 0, i32 8
  store i64 0, i64* %77, align 8
  %78 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %79 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %78, i32 0, i32 7
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @CX231XX_NEED_ADD_PS_PACKAGE_HEAD, align 4
  %81 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %82 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %84 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 0, i32* %86, align 4
  %87 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %88 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %92 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 1, i32* %94, align 4
  %95 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %96 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  store i32 186, i32* %98, align 4
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %109, %38
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %104 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %103, i32 0, i32 5
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %99

112:                                              ; preds = %99
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 8, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call i8* @kzalloc(i32 %116, i32 %117)
  %119 = bitcast i8* %118 to %struct.urb**
  %120 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %121 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  store %struct.urb** %119, %struct.urb*** %123, align 8
  %124 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %125 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load %struct.urb**, %struct.urb*** %127, align 8
  %129 = icmp ne %struct.urb** %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %112
  %131 = call i32 @cx231xx_errdev(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %395

134:                                              ; preds = %112
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 8, %136
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call i8* @kzalloc(i32 %138, i32 %139)
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %143 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 4
  store i32* %141, i32** %145, align 8
  %146 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %147 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %162, label %152

152:                                              ; preds = %134
  %153 = call i32 @cx231xx_errdev(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %154 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %155 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  %158 = load %struct.urb**, %struct.urb*** %157, align 8
  %159 = call i32 @kfree(%struct.urb** %158)
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %6, align 4
  br label %395

162:                                              ; preds = %134
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %165 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 2
  store i32 %163, i32* %167, align 4
  %168 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %169 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 5
  store i32* null, i32** %171, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %174 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %172, %177
  store i32 %178, i32* %14, align 4
  %179 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %180 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %187

183:                                              ; preds = %162
  %184 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %185 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  store i32 129, i32* %186, align 8
  br label %191

187:                                              ; preds = %162
  %188 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %189 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i32 132, i32* %190, align 8
  br label %191

191:                                              ; preds = %187, %183
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %341, %191
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %195 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %193, %198
  br i1 %199, label %200, label %344

200:                                              ; preds = %192
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* @GFP_KERNEL, align 4
  %203 = call %struct.urb* @usb_alloc_urb(i32 %201, i32 %202)
  store %struct.urb* %203, %struct.urb** %16, align 8
  %204 = load %struct.urb*, %struct.urb** %16, align 8
  %205 = icmp ne %struct.urb* %204, null
  br i1 %205, label %213, label %206

206:                                              ; preds = %200
  %207 = load i32, i32* %13, align 4
  %208 = call i32 (i8*, i32, ...) @cx231xx_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  %209 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %210 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %209)
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %6, align 4
  br label %395

213:                                              ; preds = %200
  %214 = load %struct.urb*, %struct.urb** %16, align 8
  %215 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %216 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  %219 = load %struct.urb**, %struct.urb*** %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.urb*, %struct.urb** %219, i64 %221
  store %struct.urb* %214, %struct.urb** %222, align 8
  %223 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %224 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* @GFP_KERNEL, align 4
  %228 = load %struct.urb*, %struct.urb** %16, align 8
  %229 = getelementptr inbounds %struct.urb, %struct.urb* %228, i32 0, i32 3
  %230 = call i32 @usb_buffer_alloc(i32 %225, i32 %226, i32 %227, i32* %229)
  %231 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %232 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 4
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %230, i32* %238, align 4
  %239 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %240 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 4
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %261, label %249

249:                                              ; preds = %213
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* %13, align 4
  %252 = call i64 (...) @in_interrupt()
  %253 = icmp ne i64 %252, 0
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %256 = call i32 (i8*, i32, ...) @cx231xx_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %250, i32 %251, i8* %255)
  %257 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %258 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %257)
  %259 = load i32, i32* @ENOMEM, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %6, align 4
  br label %395

261:                                              ; preds = %213
  %262 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %263 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 4
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %14, align 4
  %272 = call i32 @memset(i32 %270, i32 0, i32 %271)
  %273 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %274 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %277 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @usb_rcvisocpipe(i32 %275, i32 %279)
  store i32 %280, i32* %15, align 4
  %281 = load %struct.urb*, %struct.urb** %16, align 8
  %282 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %283 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %15, align 4
  %286 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %287 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 4
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* @cx231xx_isoc_irq_callback, align 4
  %297 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %298 = call i32 @usb_fill_int_urb(%struct.urb* %281, i32 %284, i32 %285, i32 %294, i32 %295, i32 %296, %struct.cx231xx_dmaqueue* %297, i32 1)
  %299 = load i32, i32* %8, align 4
  %300 = load %struct.urb*, %struct.urb** %16, align 8
  %301 = getelementptr inbounds %struct.urb, %struct.urb* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 8
  %302 = load i32, i32* @URB_ISO_ASAP, align 4
  %303 = load %struct.urb*, %struct.urb** %16, align 8
  %304 = getelementptr inbounds %struct.urb, %struct.urb* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %305

305:                                              ; preds = %337, %261
  %306 = load i32, i32* %17, align 4
  %307 = load i32, i32* %8, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %340

309:                                              ; preds = %305
  %310 = load i32, i32* %18, align 4
  %311 = load %struct.urb*, %struct.urb** %16, align 8
  %312 = getelementptr inbounds %struct.urb, %struct.urb* %311, i32 0, i32 1
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %312, align 8
  %314 = load i32, i32* %17, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  store i32 %310, i32* %317, align 4
  %318 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %319 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.urb*, %struct.urb** %16, align 8
  %324 = getelementptr inbounds %struct.urb, %struct.urb* %323, i32 0, i32 1
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = load i32, i32* %17, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 1
  store i32 %322, i32* %329, align 4
  %330 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %331 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %18, align 4
  %336 = add nsw i32 %335, %334
  store i32 %336, i32* %18, align 4
  br label %337

337:                                              ; preds = %309
  %338 = load i32, i32* %17, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %17, align 4
  br label %305

340:                                              ; preds = %305
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %13, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %13, align 4
  br label %192

344:                                              ; preds = %192
  %345 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %346 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %345, i32 0, i32 4
  %347 = call i32 @init_waitqueue_head(i32* %346)
  store i32 0, i32* %13, align 4
  br label %348

348:                                              ; preds = %378, %344
  %349 = load i32, i32* %13, align 4
  %350 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %351 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %349, %354
  br i1 %355, label %356, label %381

356:                                              ; preds = %348
  %357 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %358 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 3
  %361 = load %struct.urb**, %struct.urb*** %360, align 8
  %362 = load i32, i32* %13, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.urb*, %struct.urb** %361, i64 %363
  %365 = load %struct.urb*, %struct.urb** %364, align 8
  %366 = load i32, i32* @GFP_ATOMIC, align 4
  %367 = call i32 @usb_submit_urb(%struct.urb* %365, i32 %366)
  store i32 %367, i32* %19, align 4
  %368 = load i32, i32* %19, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %377

370:                                              ; preds = %356
  %371 = load i32, i32* %13, align 4
  %372 = load i32, i32* %19, align 4
  %373 = call i32 (i8*, i32, ...) @cx231xx_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %371, i32 %372)
  %374 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %375 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %374)
  %376 = load i32, i32* %19, align 4
  store i32 %376, i32* %6, align 4
  br label %395

377:                                              ; preds = %356
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %13, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %13, align 4
  br label %348

381:                                              ; preds = %348
  %382 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %383 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %381
  %387 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %388 = load i32, i32* @Raw_Video, align 4
  %389 = call i32 @cx231xx_capture_start(%struct.cx231xx* %387, i32 1, i32 %388)
  br label %394

390:                                              ; preds = %381
  %391 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %392 = load i32, i32* @TS1_serial_mode, align 4
  %393 = call i32 @cx231xx_capture_start(%struct.cx231xx* %391, i32 1, i32 %392)
  br label %394

394:                                              ; preds = %390, %386
  store i32 0, i32* %6, align 4
  br label %395

395:                                              ; preds = %394, %370, %249, %206, %152, %130, %34
  %396 = load i32, i32* %6, align 4
  ret i32 %396
}

declare dso_local i32 @cx231xx_uninit_isoc(%struct.cx231xx*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @cx231xx_info(i8*) #1

declare dso_local i32 @cx231xx_errdev(i8*) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @cx231xx_err(i8*, i32, ...) #1

declare dso_local i32 @usb_buffer_alloc(i32, i32, i32, i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.cx231xx_dmaqueue*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

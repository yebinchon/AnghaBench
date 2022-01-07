; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_init_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_init_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, %struct.TYPE_4__, i32, %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue }
%struct.TYPE_4__ = type { i32 (%struct.em28xx.0*, %struct.urb*)*, i32, i32, %struct.urb**, i32*, i32*, i32* }
%struct.em28xx.0 = type opaque
%struct.urb = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.em28xx_dmaqueue = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"em28xx: called em28xx_prepare_isoc\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot alloc memory for usb buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"cannot allocate memory for usb transfer\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot alloc isoc_ctl.urb %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"unable to allocate %i bytes for transfer buffer %i%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" while in int\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EM28XX_ANALOG_MODE = common dso_local global i64 0, align 8
@em28xx_irq_callback = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_init_isoc(%struct.em28xx* %0, i32 %1, i32 %2, i32 %3, i32 (%struct.em28xx*, %struct.urb*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.em28xx*, %struct.urb*)*, align 8
  %12 = alloca %struct.em28xx_dmaqueue*, align 8
  %13 = alloca %struct.em28xx_dmaqueue*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.urb*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (%struct.em28xx*, %struct.urb*)* %4, i32 (%struct.em28xx*, %struct.urb*)** %11, align 8
  %21 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 4
  store %struct.em28xx_dmaqueue* %22, %struct.em28xx_dmaqueue** %12, align 8
  %23 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 3
  store %struct.em28xx_dmaqueue* %24, %struct.em28xx_dmaqueue** %13, align 8
  %25 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %27 = call i32 @em28xx_uninit_isoc(%struct.em28xx* %26)
  %28 = load i32 (%struct.em28xx*, %struct.urb*)*, i32 (%struct.em28xx*, %struct.urb*)** %11, align 8
  %29 = bitcast i32 (%struct.em28xx*, %struct.urb*)* %28 to i32 (%struct.em28xx.0*, %struct.urb*)*
  %30 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %31 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 (%struct.em28xx.0*, %struct.urb*)* %29, i32 (%struct.em28xx.0*, %struct.urb*)** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %35 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kzalloc(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.urb**
  %44 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %45 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store %struct.urb** %43, %struct.urb*** %46, align 8
  %47 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %48 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load %struct.urb**, %struct.urb*** %49, align 8
  %51 = icmp ne %struct.urb** %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %5
  %53 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %288

56:                                               ; preds = %5
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 8, %58
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kzalloc(i32 %60, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %65 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  store i32* %63, i32** %66, align 8
  %67 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %68 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %56
  %73 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %75 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load %struct.urb**, %struct.urb*** %76, align 8
  %78 = call i32 @kfree(%struct.urb** %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %288

81:                                               ; preds = %56
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %84 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 4
  %86 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %87 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  store i32* null, i32** %88, align 8
  %89 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %90 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 5
  store i32* null, i32** %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %94 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %92, %96
  store i32 %97, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %244, %81
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %101 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %247

105:                                              ; preds = %98
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.urb* @usb_alloc_urb(i32 %106, i32 %107)
  store %struct.urb* %108, %struct.urb** %17, align 8
  %109 = load %struct.urb*, %struct.urb** %17, align 8
  %110 = icmp ne %struct.urb* %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %14, align 4
  %113 = call i32 (i8*, i32, ...) @em28xx_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %115 = call i32 @em28xx_uninit_isoc(%struct.em28xx* %114)
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %288

118:                                              ; preds = %105
  %119 = load %struct.urb*, %struct.urb** %17, align 8
  %120 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %121 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load %struct.urb**, %struct.urb*** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.urb*, %struct.urb** %123, i64 %125
  store %struct.urb* %119, %struct.urb** %126, align 8
  %127 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %128 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = load %struct.urb*, %struct.urb** %17, align 8
  %133 = getelementptr inbounds %struct.urb, %struct.urb* %132, i32 0, i32 3
  %134 = call i32 @usb_buffer_alloc(i32 %129, i32 %130, i32 %131, i32* %133)
  %135 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %136 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %134, i32* %141, align 4
  %142 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %143 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %118
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %14, align 4
  %154 = call i64 (...) @in_interrupt()
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %158 = call i32 (i8*, i32, ...) @em28xx_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %153, i8* %157)
  %159 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %160 = call i32 @em28xx_uninit_isoc(%struct.em28xx* %159)
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %6, align 4
  br label %288

163:                                              ; preds = %118
  %164 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %165 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @memset(i32 %171, i32 0, i32 %172)
  %174 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %175 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %178 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @EM28XX_ANALOG_MODE, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 130, i32 132
  %184 = call i32 @usb_rcvisocpipe(i32 %176, i32 %183)
  store i32 %184, i32* %16, align 4
  %185 = load %struct.urb*, %struct.urb** %17, align 8
  %186 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %187 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %16, align 4
  %190 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %191 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* @em28xx_irq_callback, align 4
  %200 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %201 = call i32 @usb_fill_int_urb(%struct.urb* %185, i32 %188, i32 %189, i32 %197, i32 %198, i32 %199, %struct.em28xx* %200, i32 1)
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.urb*, %struct.urb** %17, align 8
  %204 = getelementptr inbounds %struct.urb, %struct.urb* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* @URB_ISO_ASAP, align 4
  %206 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %207 = or i32 %205, %206
  %208 = load %struct.urb*, %struct.urb** %17, align 8
  %209 = getelementptr inbounds %struct.urb, %struct.urb* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %210

210:                                              ; preds = %240, %163
  %211 = load i32, i32* %18, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %243

214:                                              ; preds = %210
  %215 = load i32, i32* %19, align 4
  %216 = load %struct.urb*, %struct.urb** %17, align 8
  %217 = getelementptr inbounds %struct.urb, %struct.urb* %216, i32 0, i32 2
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  store i32 %215, i32* %222, align 4
  %223 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %224 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.urb*, %struct.urb** %17, align 8
  %228 = getelementptr inbounds %struct.urb, %struct.urb* %227, i32 0, i32 2
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %228, align 8
  %230 = load i32, i32* %18, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  store i32 %226, i32* %233, align 4
  %234 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %235 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %19, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %19, align 4
  br label %240

240:                                              ; preds = %214
  %241 = load i32, i32* %18, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %18, align 4
  br label %210

243:                                              ; preds = %210
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %14, align 4
  br label %98

247:                                              ; preds = %98
  %248 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %12, align 8
  %249 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %248, i32 0, i32 0
  %250 = call i32 @init_waitqueue_head(i32* %249)
  %251 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %13, align 8
  %252 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %251, i32 0, i32 0
  %253 = call i32 @init_waitqueue_head(i32* %252)
  %254 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %255 = call i32 @em28xx_capture_start(%struct.em28xx* %254, i32 1)
  store i32 0, i32* %14, align 4
  br label %256

256:                                              ; preds = %284, %247
  %257 = load i32, i32* %14, align 4
  %258 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %259 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %257, %261
  br i1 %262, label %263, label %287

263:                                              ; preds = %256
  %264 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %265 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 3
  %267 = load %struct.urb**, %struct.urb*** %266, align 8
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.urb*, %struct.urb** %267, i64 %269
  %271 = load %struct.urb*, %struct.urb** %270, align 8
  %272 = load i32, i32* @GFP_ATOMIC, align 4
  %273 = call i32 @usb_submit_urb(%struct.urb* %271, i32 %272)
  store i32 %273, i32* %20, align 4
  %274 = load i32, i32* %20, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %263
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* %20, align 4
  %279 = call i32 (i8*, i32, ...) @em28xx_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %277, i32 %278)
  %280 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %281 = call i32 @em28xx_uninit_isoc(%struct.em28xx* %280)
  %282 = load i32, i32* %20, align 4
  store i32 %282, i32* %6, align 4
  br label %288

283:                                              ; preds = %263
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %14, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %14, align 4
  br label %256

287:                                              ; preds = %256
  store i32 0, i32* %6, align 4
  br label %288

288:                                              ; preds = %287, %276, %151, %111, %72, %52
  %289 = load i32, i32* %6, align 4
  ret i32 %289
}

declare dso_local i32 @em28xx_isocdbg(i8*) #1

declare dso_local i32 @em28xx_uninit_isoc(%struct.em28xx*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @em28xx_errdev(i8*) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @em28xx_err(i8*, i32, ...) #1

declare dso_local i32 @usb_buffer_alloc(i32, i32, i32, i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.em28xx*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @em28xx_capture_start(%struct.em28xx*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

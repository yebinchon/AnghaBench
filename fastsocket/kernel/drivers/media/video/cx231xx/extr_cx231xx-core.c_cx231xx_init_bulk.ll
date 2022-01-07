; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_init_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_init_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, %struct.cx231xx_dmaqueue }
%struct.TYPE_4__ = type { i32 (%struct.cx231xx.0*, %struct.urb*)*, i32, i32, %struct.urb**, i32*, i32* }
%struct.cx231xx.0 = type opaque
%struct.urb = type { i32, i64 }
%struct.cx231xx_dmaqueue = type { i32, i32, i32, i32*, i32, i64*, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Setting Video mux to %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot alloc memory for usb buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot allocate memory for usbtransfer\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot alloc bulk_ctl.urb %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"unable to allocate %i bytes for transfer buffer %i%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" while in int\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cx231xx_bulk_irq_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", align 1
@Raw_Video = common dso_local global i32 0, align 4
@TS1_serial_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_init_bulk(%struct.cx231xx* %0, i32 %1, i32 %2, i32 %3, i32 (%struct.cx231xx*, %struct.urb*)* %4) #0 {
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
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (%struct.cx231xx*, %struct.urb*)* %4, i32 (%struct.cx231xx*, %struct.urb*)** %11, align 8
  %18 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %19 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store %struct.cx231xx_dmaqueue* %20, %struct.cx231xx_dmaqueue** %12, align 8
  %21 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %30

26:                                               ; preds = %5
  %27 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ 2, %25 ], [ %29, %26 ]
  %32 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cx231xx_coredbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %39 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @video_mux(%struct.cx231xx* %38, i32 %41)
  %43 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %44 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %43)
  %45 = load i32 (%struct.cx231xx*, %struct.urb*)*, i32 (%struct.cx231xx*, %struct.urb*)** %11, align 8
  %46 = bitcast i32 (%struct.cx231xx*, %struct.urb*)* %45 to i32 (%struct.cx231xx.0*, %struct.urb*)*
  %47 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %48 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 (%struct.cx231xx.0*, %struct.urb*)* %46, i32 (%struct.cx231xx.0*, %struct.urb*)** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %53 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 8
  %56 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %57 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %56, i32 0, i32 13
  store i64 0, i64* %57, align 8
  %58 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %59 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %58, i32 0, i32 12
  store i64 0, i64* %59, align 8
  %60 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %61 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %60, i32 0, i32 11
  store i64 0, i64* %61, align 8
  %62 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %63 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %65 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %64, i32 0, i32 10
  store i64 0, i64* %65, align 8
  %66 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %67 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 2
  %70 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %71 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %74, 1
  %76 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %77 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %79 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %78, i32 0, i32 9
  store i64 0, i64* %79, align 8
  %80 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %81 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %80, i32 0, i32 8
  store i64 0, i64* %81, align 8
  %82 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %83 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %85 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %87 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 0, i32* %89, align 4
  %90 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %91 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %95 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 1, i32* %97, align 4
  %98 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %99 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 186, i32* %101, align 4
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %112, %30
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 8
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %107 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %106, i32 0, i32 5
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %102

115:                                              ; preds = %102
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 8, %117
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i8* @kzalloc(i32 %119, i32 %120)
  %122 = bitcast i8* %121 to %struct.urb**
  %123 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %124 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  store %struct.urb** %122, %struct.urb*** %126, align 8
  %127 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %128 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load %struct.urb**, %struct.urb*** %130, align 8
  %132 = icmp ne %struct.urb** %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %115
  %134 = call i32 @cx231xx_errdev(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %357

137:                                              ; preds = %115
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 8, %139
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i8* @kzalloc(i32 %141, i32 %142)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %146 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  store i32* %144, i32** %148, align 8
  %149 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %150 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %165, label %155

155:                                              ; preds = %137
  %156 = call i32 @cx231xx_errdev(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %157 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %158 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  %161 = load %struct.urb**, %struct.urb*** %160, align 8
  %162 = call i32 @kfree(%struct.urb** %161)
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %357

165:                                              ; preds = %137
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %168 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  store i32 %166, i32* %170, align 4
  %171 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %172 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 5
  store i32* null, i32** %174, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %177 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %175, %180
  store i32 %181, i32* %14, align 4
  %182 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %183 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %190

186:                                              ; preds = %165
  %187 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %188 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i32 129, i32* %189, align 8
  br label %194

190:                                              ; preds = %165
  %191 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %192 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i32 132, i32* %193, align 8
  br label %194

194:                                              ; preds = %190, %186
  store i32 0, i32* %13, align 4
  br label %195

195:                                              ; preds = %303, %194
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %198 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %196, %201
  br i1 %202, label %203, label %306

203:                                              ; preds = %195
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %204)
  store %struct.urb* %205, %struct.urb** %16, align 8
  %206 = load %struct.urb*, %struct.urb** %16, align 8
  %207 = icmp ne %struct.urb* %206, null
  br i1 %207, label %215, label %208

208:                                              ; preds = %203
  %209 = load i32, i32* %13, align 4
  %210 = call i32 (i8*, i32, ...) @cx231xx_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %209)
  %211 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %212 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %211)
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %6, align 4
  br label %357

215:                                              ; preds = %203
  %216 = load %struct.urb*, %struct.urb** %16, align 8
  %217 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %218 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 3
  %221 = load %struct.urb**, %struct.urb*** %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.urb*, %struct.urb** %221, i64 %223
  store %struct.urb* %216, %struct.urb** %224, align 8
  %225 = load %struct.urb*, %struct.urb** %16, align 8
  %226 = getelementptr inbounds %struct.urb, %struct.urb* %225, i32 0, i32 1
  store i64 0, i64* %226, align 8
  %227 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %228 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* @GFP_KERNEL, align 4
  %232 = load %struct.urb*, %struct.urb** %16, align 8
  %233 = getelementptr inbounds %struct.urb, %struct.urb* %232, i32 0, i32 0
  %234 = call i32 @usb_buffer_alloc(i32 %229, i32 %230, i32 %231, i32* %233)
  %235 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %236 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %234, i32* %242, align 4
  %243 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %244 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %265, label %253

253:                                              ; preds = %215
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* %13, align 4
  %256 = call i64 (...) @in_interrupt()
  %257 = icmp ne i64 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %260 = call i32 (i8*, i32, ...) @cx231xx_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %254, i32 %255, i8* %259)
  %261 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %262 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %261)
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %6, align 4
  br label %357

265:                                              ; preds = %215
  %266 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %267 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 4
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @memset(i32 %274, i32 0, i32 %275)
  %277 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %278 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %281 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @usb_rcvbulkpipe(i32 %279, i32 %283)
  store i32 %284, i32* %15, align 4
  %285 = load %struct.urb*, %struct.urb** %16, align 8
  %286 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %287 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %15, align 4
  %290 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %291 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 4
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %14, align 4
  %300 = load i32, i32* @cx231xx_bulk_irq_callback, align 4
  %301 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %302 = call i32 @usb_fill_bulk_urb(%struct.urb* %285, i32 %288, i32 %289, i32 %298, i32 %299, i32 %300, %struct.cx231xx_dmaqueue* %301)
  br label %303

303:                                              ; preds = %265
  %304 = load i32, i32* %13, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %13, align 4
  br label %195

306:                                              ; preds = %195
  %307 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %12, align 8
  %308 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %307, i32 0, i32 4
  %309 = call i32 @init_waitqueue_head(i32* %308)
  store i32 0, i32* %13, align 4
  br label %310

310:                                              ; preds = %340, %306
  %311 = load i32, i32* %13, align 4
  %312 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %313 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %312, i32 0, i32 4
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = icmp slt i32 %311, %316
  br i1 %317, label %318, label %343

318:                                              ; preds = %310
  %319 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %320 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %319, i32 0, i32 4
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 3
  %323 = load %struct.urb**, %struct.urb*** %322, align 8
  %324 = load i32, i32* %13, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.urb*, %struct.urb** %323, i64 %325
  %327 = load %struct.urb*, %struct.urb** %326, align 8
  %328 = load i32, i32* @GFP_ATOMIC, align 4
  %329 = call i32 @usb_submit_urb(%struct.urb* %327, i32 %328)
  store i32 %329, i32* %17, align 4
  %330 = load i32, i32* %17, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %339

332:                                              ; preds = %318
  %333 = load i32, i32* %13, align 4
  %334 = load i32, i32* %17, align 4
  %335 = call i32 (i8*, i32, ...) @cx231xx_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %333, i32 %334)
  %336 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %337 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %336)
  %338 = load i32, i32* %17, align 4
  store i32 %338, i32* %6, align 4
  br label %357

339:                                              ; preds = %318
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %13, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %13, align 4
  br label %310

343:                                              ; preds = %310
  %344 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %345 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %343
  %349 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %350 = load i32, i32* @Raw_Video, align 4
  %351 = call i32 @cx231xx_capture_start(%struct.cx231xx* %349, i32 1, i32 %350)
  br label %356

352:                                              ; preds = %343
  %353 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %354 = load i32, i32* @TS1_serial_mode, align 4
  %355 = call i32 @cx231xx_capture_start(%struct.cx231xx* %353, i32 1, i32 %354)
  br label %356

356:                                              ; preds = %352, %348
  store i32 0, i32* %6, align 4
  br label %357

357:                                              ; preds = %356, %332, %253, %208, %155, %133
  %358 = load i32, i32* %6, align 4
  ret i32 %358
}

declare dso_local i32 @cx231xx_coredbg(i8*, i32) #1

declare dso_local i32 @video_mux(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_uninit_bulk(%struct.cx231xx*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @cx231xx_errdev(i8*) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @cx231xx_err(i8*, i32, ...) #1

declare dso_local i32 @usb_buffer_alloc(i32, i32, i32, i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.cx231xx_dmaqueue*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

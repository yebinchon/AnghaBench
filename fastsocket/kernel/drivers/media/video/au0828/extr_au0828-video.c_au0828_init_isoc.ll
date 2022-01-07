; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_init_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_init_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { %struct.TYPE_4__, i32, i32, %struct.au0828_dmaqueue }
%struct.TYPE_4__ = type { i32 (%struct.au0828_dev.0*, %struct.urb*)*, i32, i32, %struct.urb**, i32*, i32* }
%struct.au0828_dev.0 = type opaque
%struct.urb = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.au0828_dmaqueue = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"au0828: called au0828_prepare_isoc\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot alloc memory for usb buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"cannot allocate memory for usb transfer\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot alloc isoc_ctl.urb %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"unable to allocate %i bytes for transfer buffer %i%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" while in int\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@au0828_irq_callback = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au0828_init_isoc(%struct.au0828_dev* %0, i32 %1, i32 %2, i32 %3, i32 (%struct.au0828_dev*, %struct.urb*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.au0828_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.au0828_dev*, %struct.urb*)*, align 8
  %12 = alloca %struct.au0828_dmaqueue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.urb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (%struct.au0828_dev*, %struct.urb*)* %4, i32 (%struct.au0828_dev*, %struct.urb*)** %11, align 8
  %20 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %21 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %20, i32 0, i32 3
  store %struct.au0828_dmaqueue* %21, %struct.au0828_dmaqueue** %12, align 8
  %22 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %24 = call i32 @au0828_uninit_isoc(%struct.au0828_dev* %23)
  %25 = load i32 (%struct.au0828_dev*, %struct.urb*)*, i32 (%struct.au0828_dev*, %struct.urb*)** %11, align 8
  %26 = bitcast i32 (%struct.au0828_dev*, %struct.urb*)* %25 to i32 (%struct.au0828_dev.0*, %struct.urb*)*
  %27 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %28 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 (%struct.au0828_dev.0*, %struct.urb*)* %26, i32 (%struct.au0828_dev.0*, %struct.urb*)** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %32 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i32 %37, i32 %38)
  %40 = bitcast i8* %39 to %struct.urb**
  %41 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %42 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store %struct.urb** %40, %struct.urb*** %43, align 8
  %44 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %45 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load %struct.urb**, %struct.urb*** %46, align 8
  %48 = icmp ne %struct.urb** %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %5
  %50 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %273

53:                                               ; preds = %5
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kzalloc(i32 %57, i32 %58)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %62 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  store i32* %60, i32** %63, align 8
  %64 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %65 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %53
  %70 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %72 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load %struct.urb**, %struct.urb*** %73, align 8
  %75 = call i32 @kfree(%struct.urb** %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %273

78:                                               ; preds = %53
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %81 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %84 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 5
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %88 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %86, %90
  store i32 %91, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %234, %78
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %95 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %237

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call %struct.urb* @usb_alloc_urb(i32 %100, i32 %101)
  store %struct.urb* %102, %struct.urb** %16, align 8
  %103 = load %struct.urb*, %struct.urb** %16, align 8
  %104 = icmp ne %struct.urb* %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %109 = call i32 @au0828_uninit_isoc(%struct.au0828_dev* %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %273

112:                                              ; preds = %99
  %113 = load %struct.urb*, %struct.urb** %16, align 8
  %114 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %115 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load %struct.urb**, %struct.urb*** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.urb*, %struct.urb** %117, i64 %119
  store %struct.urb* %113, %struct.urb** %120, align 8
  %121 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %122 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = load %struct.urb*, %struct.urb** %16, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 3
  %128 = call i32 @usb_buffer_alloc(i32 %123, i32 %124, i32 %125, i32* %127)
  %129 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %130 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %128, i32* %135, align 4
  %136 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %137 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %112
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %13, align 4
  %148 = call i64 (...) @in_interrupt()
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %152 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %146, i32 %147, i8* %151)
  %153 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %154 = call i32 @au0828_uninit_isoc(%struct.au0828_dev* %153)
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %273

157:                                              ; preds = %112
  %158 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %159 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @memset(i32 %165, i32 0, i32 %166)
  %168 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %169 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %172 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @usb_rcvisocpipe(i32 %170, i32 %173)
  store i32 %174, i32* %15, align 4
  %175 = load %struct.urb*, %struct.urb** %16, align 8
  %176 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %177 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %181 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @au0828_irq_callback, align 4
  %190 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %12, align 8
  %191 = call i32 @usb_fill_int_urb(%struct.urb* %175, i32 %178, i32 %179, i32 %187, i32 %188, i32 %189, %struct.au0828_dmaqueue* %190, i32 1)
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.urb*, %struct.urb** %16, align 8
  %194 = getelementptr inbounds %struct.urb, %struct.urb* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* @URB_ISO_ASAP, align 4
  %196 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.urb*, %struct.urb** %16, align 8
  %199 = getelementptr inbounds %struct.urb, %struct.urb* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %200

200:                                              ; preds = %230, %157
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %233

204:                                              ; preds = %200
  %205 = load i32, i32* %18, align 4
  %206 = load %struct.urb*, %struct.urb** %16, align 8
  %207 = getelementptr inbounds %struct.urb, %struct.urb* %206, i32 0, i32 2
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %207, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  store i32 %205, i32* %212, align 4
  %213 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %214 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.urb*, %struct.urb** %16, align 8
  %218 = getelementptr inbounds %struct.urb, %struct.urb* %217, i32 0, i32 2
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  store i32 %216, i32* %223, align 4
  %224 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %225 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %18, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %18, align 4
  br label %230

230:                                              ; preds = %204
  %231 = load i32, i32* %17, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %17, align 4
  br label %200

233:                                              ; preds = %200
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %13, align 4
  br label %92

237:                                              ; preds = %92
  %238 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %12, align 8
  %239 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %238, i32 0, i32 0
  %240 = call i32 @init_waitqueue_head(i32* %239)
  store i32 0, i32* %13, align 4
  br label %241

241:                                              ; preds = %269, %237
  %242 = load i32, i32* %13, align 4
  %243 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %244 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = icmp slt i32 %242, %246
  br i1 %247, label %248, label %272

248:                                              ; preds = %241
  %249 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %250 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 3
  %252 = load %struct.urb**, %struct.urb*** %251, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.urb*, %struct.urb** %252, i64 %254
  %256 = load %struct.urb*, %struct.urb** %255, align 8
  %257 = load i32, i32* @GFP_ATOMIC, align 4
  %258 = call i32 @usb_submit_urb(%struct.urb* %256, i32 %257)
  store i32 %258, i32* %19, align 4
  %259 = load i32, i32* %19, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %248
  %262 = load i32, i32* %13, align 4
  %263 = load i32, i32* %19, align 4
  %264 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %262, i32 %263)
  %265 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %266 = call i32 @au0828_uninit_isoc(%struct.au0828_dev* %265)
  %267 = load i32, i32* %19, align 4
  store i32 %267, i32* %6, align 4
  br label %273

268:                                              ; preds = %248
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %13, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %13, align 4
  br label %241

272:                                              ; preds = %241
  store i32 0, i32* %6, align 4
  br label %273

273:                                              ; preds = %272, %261, %145, %105, %69, %49
  %274 = load i32, i32* %6, align 4
  ret i32 %274
}

declare dso_local i32 @au0828_isocdbg(i8*, ...) #1

declare dso_local i32 @au0828_uninit_isoc(%struct.au0828_dev*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_buffer_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @printk(i8*, i32, i32, i8*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.au0828_dmaqueue*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

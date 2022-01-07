; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_konica.c_sd_isoc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_konica.c_sd_isoc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i64, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.gspca_dev = type { i32, i8*, i64, i32 }
%struct.sd = type { i64, %struct.urb* }

@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sd isoc irq\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"urb status: %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"resubmit urb error %d\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"lost sync on frames\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"no packets does not match, data: %d, status: %d\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"pkt %d data-status %d, status-status %d\00", align 1
@DISCARD_PACKET = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"bad status packet length %d\00", align 1
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"usb_submit_urb(data_urb) ret %d\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"usb_submit_urb(status_urb) ret %d\00", align 1
@KEY_CAMERA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @sd_isoc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_isoc_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.gspca_dev*
  store %struct.gspca_dev* %13, %struct.gspca_dev** %3, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = bitcast %struct.gspca_dev* %14 to %struct.sd*
  store %struct.sd* %15, %struct.sd** %4, align 8
  %16 = load i32, i32* @D_PACK, align 4
  %17 = call i32 (i32, i8*, ...) @PDEBUG(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %268

23:                                               ; preds = %1
  %24 = load %struct.urb*, %struct.urb** %2, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ESHUTDOWN, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %268

36:                                               ; preds = %28
  %37 = load i32, i32* @D_ERR, align 4
  %38 = load %struct.urb*, %struct.urb** %2, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @PDEBUG(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.urb*, %struct.urb** %2, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i32 @usb_submit_urb(%struct.urb* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %36
  br label %268

51:                                               ; preds = %23
  %52 = load %struct.urb*, %struct.urb** %2, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 32
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.urb*, %struct.urb** %2, align 8
  %58 = load %struct.sd*, %struct.sd** %4, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 1
  store %struct.urb* %57, %struct.urb** %59, align 8
  br label %268

60:                                               ; preds = %51
  %61 = load %struct.urb*, %struct.urb** %2, align 8
  store %struct.urb* %61, %struct.urb** %6, align 8
  %62 = load %struct.sd*, %struct.sd** %4, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 1
  %64 = load %struct.urb*, %struct.urb** %63, align 8
  store %struct.urb* %64, %struct.urb** %5, align 8
  %65 = load %struct.sd*, %struct.sd** %4, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 1
  store %struct.urb* null, %struct.urb** %66, align 8
  %67 = load %struct.urb*, %struct.urb** %5, align 8
  %68 = icmp ne %struct.urb* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.urb*, %struct.urb** %5, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.urb*, %struct.urb** %6, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %69, %60
  %78 = load i32, i32* @D_ERR, align 4
  %79 = load i32, i32* @D_PACK, align 4
  %80 = or i32 %78, %79
  %81 = call i32 (i32, i8*, ...) @PDEBUG(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %243

82:                                               ; preds = %69
  %83 = load %struct.urb*, %struct.urb** %5, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.urb*, %struct.urb** %6, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load i32, i32* @D_ERR, align 4
  %92 = load i32, i32* @D_PACK, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.urb*, %struct.urb** %5, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.urb*, %struct.urb** %6, align 8
  %98 = getelementptr inbounds %struct.urb, %struct.urb* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @PDEBUG(i32 %93, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32 %99)
  br label %243

101:                                              ; preds = %82
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %239, %101
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.urb*, %struct.urb** %6, align 8
  %105 = getelementptr inbounds %struct.urb, %struct.urb* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %242

108:                                              ; preds = %102
  %109 = load %struct.urb*, %struct.urb** %5, align 8
  %110 = getelementptr inbounds %struct.urb, %struct.urb* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %108
  %119 = load %struct.urb*, %struct.urb** %6, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %118, %108
  %129 = load i32, i32* @D_ERR, align 4
  %130 = load i32, i32* @D_PACK, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.urb*, %struct.urb** %5, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.urb*, %struct.urb** %6, align 8
  %142 = getelementptr inbounds %struct.urb, %struct.urb* %141, i32 0, i32 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = call i32 (i32, i8*, ...) @PDEBUG(i32 %131, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %132, i64 %140, i64 %148)
  %150 = load i8*, i8** @DISCARD_PACKET, align 8
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %152 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  br label %239

153:                                              ; preds = %118
  %154 = load %struct.urb*, %struct.urb** %6, align 8
  %155 = getelementptr inbounds %struct.urb, %struct.urb* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 1
  br i1 %162, label %163, label %179

163:                                              ; preds = %153
  %164 = load i32, i32* @D_ERR, align 4
  %165 = load i32, i32* @D_PACK, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.urb*, %struct.urb** %6, align 8
  %168 = getelementptr inbounds %struct.urb, %struct.urb* %167, i32 0, i32 4
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i32, i8*, ...) @PDEBUG(i32 %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %174)
  %176 = load i8*, i8** @DISCARD_PACKET, align 8
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %178 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  br label %239

179:                                              ; preds = %153
  %180 = load %struct.urb*, %struct.urb** %6, align 8
  %181 = getelementptr inbounds %struct.urb, %struct.urb* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to i64*
  %184 = load %struct.urb*, %struct.urb** %6, align 8
  %185 = getelementptr inbounds %struct.urb, %struct.urb* %184, i32 0, i32 4
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %183, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %9, align 4
  %196 = load %struct.urb*, %struct.urb** %5, align 8
  %197 = getelementptr inbounds %struct.urb, %struct.urb* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to i64*
  %200 = load %struct.urb*, %struct.urb** %5, align 8
  %201 = getelementptr inbounds %struct.urb, %struct.urb* %200, i32 0, i32 4
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %199, i64 %208
  store i64* %209, i64** %7, align 8
  %210 = load i32, i32* %9, align 4
  %211 = and i32 %210, 128
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %179
  %214 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %215 = load i32, i32* @LAST_PACKET, align 4
  %216 = call i32 @gspca_frame_add(%struct.gspca_dev* %214, i32 %215, i64* null, i32 0)
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %218 = load i32, i32* @FIRST_PACKET, align 4
  %219 = call i32 @gspca_frame_add(%struct.gspca_dev* %217, i32 %218, i64* null, i32 0)
  br label %226

220:                                              ; preds = %179
  %221 = load i32, i32* %9, align 4
  %222 = and i32 %221, 1
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  br label %239

225:                                              ; preds = %220
  br label %226

226:                                              ; preds = %225, %213
  %227 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %228 = load i32, i32* @INTER_PACKET, align 4
  %229 = load i64*, i64** %7, align 8
  %230 = load %struct.urb*, %struct.urb** %5, align 8
  %231 = getelementptr inbounds %struct.urb, %struct.urb* %230, i32 0, i32 4
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @gspca_frame_add(%struct.gspca_dev* %227, i32 %228, i64* %229, i32 %237)
  br label %239

239:                                              ; preds = %226, %224, %163, %128
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %102

242:                                              ; preds = %102
  br label %243

243:                                              ; preds = %242, %90, %77
  %244 = load %struct.urb*, %struct.urb** %5, align 8
  %245 = icmp ne %struct.urb* %244, null
  br i1 %245, label %246, label %259

246:                                              ; preds = %243
  %247 = load %struct.urb*, %struct.urb** %5, align 8
  %248 = load i32, i32* @GFP_ATOMIC, align 4
  %249 = call i32 @usb_submit_urb(%struct.urb* %247, i32 %248)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %246
  %253 = load i32, i32* @D_ERR, align 4
  %254 = load i32, i32* @D_PACK, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* %9, align 4
  %257 = call i32 (i32, i8*, ...) @PDEBUG(i32 %255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %256)
  br label %258

258:                                              ; preds = %252, %246
  br label %259

259:                                              ; preds = %258, %243
  %260 = load %struct.urb*, %struct.urb** %6, align 8
  %261 = load i32, i32* @GFP_ATOMIC, align 4
  %262 = call i32 @usb_submit_urb(%struct.urb* %260, i32 %261)
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* %9, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %22, %35, %50, %56, %265, %259
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

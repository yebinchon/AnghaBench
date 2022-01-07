; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_benq.c_sd_isoc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_benq.c_sd_isoc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.gspca_dev = type { i8*, %struct.urb**, i64, i32 }

@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sd isoc irq\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"urb status: %d\00", align 1
@SD_PKT_SZ = common dso_local global i64 0, align 8
@D_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ISOC bad lengths %d / %d\00", align 1
@DISCARD_PACKET = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"ISOC data error: [%d] status=%d\00", align 1
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"usb_submit_urb(0) ret %d\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"usb_submit_urb() ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @sd_isoc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_isoc_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %3, align 8
  %12 = load i32, i32* @D_PACK, align 4
  %13 = call i32 (i32, i8*, ...) @PDEBUG(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %256

19:                                               ; preds = %1
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ESHUTDOWN, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %256

32:                                               ; preds = %24
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %256

37:                                               ; preds = %19
  %38 = load %struct.urb*, %struct.urb** %2, align 8
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 1
  %41 = load %struct.urb**, %struct.urb*** %40, align 8
  %42 = getelementptr inbounds %struct.urb*, %struct.urb** %41, i64 0
  %43 = load %struct.urb*, %struct.urb** %42, align 8
  %44 = icmp eq %struct.urb* %38, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.urb*, %struct.urb** %2, align 8
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 1
  %49 = load %struct.urb**, %struct.urb*** %48, align 8
  %50 = getelementptr inbounds %struct.urb*, %struct.urb** %49, i64 2
  %51 = load %struct.urb*, %struct.urb** %50, align 8
  %52 = icmp eq %struct.urb* %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %37
  br label %256

54:                                               ; preds = %45
  %55 = load %struct.urb*, %struct.urb** %2, align 8
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 1
  %58 = load %struct.urb**, %struct.urb*** %57, align 8
  %59 = getelementptr inbounds %struct.urb*, %struct.urb** %58, i64 1
  %60 = load %struct.urb*, %struct.urb** %59, align 8
  %61 = icmp eq %struct.urb* %55, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %64 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %63, i32 0, i32 1
  %65 = load %struct.urb**, %struct.urb*** %64, align 8
  %66 = getelementptr inbounds %struct.urb*, %struct.urb** %65, i64 0
  %67 = load %struct.urb*, %struct.urb** %66, align 8
  store %struct.urb* %67, %struct.urb** %4, align 8
  br label %74

68:                                               ; preds = %54
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 1
  %71 = load %struct.urb**, %struct.urb*** %70, align 8
  %72 = getelementptr inbounds %struct.urb*, %struct.urb** %71, i64 2
  %73 = load %struct.urb*, %struct.urb** %72, align 8
  store %struct.urb* %73, %struct.urb** %4, align 8
  br label %74

74:                                               ; preds = %68, %62
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %235, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.urb*, %struct.urb** %2, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %238

81:                                               ; preds = %75
  %82 = load %struct.urb*, %struct.urb** %4, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SD_PKT_SZ, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %103, label %92

92:                                               ; preds = %81
  %93 = load %struct.urb*, %struct.urb** %2, align 8
  %94 = getelementptr inbounds %struct.urb, %struct.urb* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SD_PKT_SZ, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %92, %81
  %104 = load i32, i32* @D_ERR, align 4
  %105 = load %struct.urb*, %struct.urb** %4, align 8
  %106 = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.urb*, %struct.urb** %2, align 8
  %114 = getelementptr inbounds %struct.urb, %struct.urb* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i32, i8*, ...) @PDEBUG(i32 %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %112, i64 %120)
  %122 = load i8*, i8** @DISCARD_PACKET, align 8
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %124 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %235

125:                                              ; preds = %92
  %126 = load %struct.urb*, %struct.urb** %4, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %125
  %137 = load %struct.urb*, %struct.urb** %2, align 8
  %138 = getelementptr inbounds %struct.urb, %struct.urb* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %136, %125
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load i8*, i8** @DISCARD_PACKET, align 8
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %154 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  br label %235

155:                                              ; preds = %145
  %156 = load %struct.urb*, %struct.urb** %4, align 8
  %157 = getelementptr inbounds %struct.urb, %struct.urb* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i32*
  %160 = load %struct.urb*, %struct.urb** %4, align 8
  %161 = getelementptr inbounds %struct.urb, %struct.urb* %160, i32 0, i32 2
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %159, i64 %168
  store i32* %169, i32** %5, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 128
  br i1 %173, label %174, label %191

174:                                              ; preds = %155
  %175 = load i32*, i32** %5, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 254
  %179 = icmp eq i32 %178, 186
  br i1 %179, label %180, label %191

180:                                              ; preds = %174
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %182 = load i32, i32* @LAST_PACKET, align 4
  %183 = call i32 @gspca_frame_add(%struct.gspca_dev* %181, i32 %182, i32* null, i64 0)
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %185 = load i32, i32* @FIRST_PACKET, align 4
  %186 = load i32*, i32** %5, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  %188 = load i64, i64* @SD_PKT_SZ, align 8
  %189 = sub nsw i64 %188, 4
  %190 = call i32 @gspca_frame_add(%struct.gspca_dev* %184, i32 %185, i32* %187, i64 %189)
  br label %215

191:                                              ; preds = %174, %155
  %192 = load i32*, i32** %5, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 4
  br i1 %195, label %196, label %210

196:                                              ; preds = %191
  %197 = load i32*, i32** %5, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 254
  %201 = icmp eq i32 %200, 186
  br i1 %201, label %202, label %210

202:                                              ; preds = %196
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %204 = load i32, i32* @INTER_PACKET, align 4
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = load i64, i64* @SD_PKT_SZ, align 8
  %208 = sub nsw i64 %207, 4
  %209 = call i32 @gspca_frame_add(%struct.gspca_dev* %203, i32 %204, i32* %206, i64 %208)
  br label %214

210:                                              ; preds = %196, %191
  %211 = load i8*, i8** @DISCARD_PACKET, align 8
  %212 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %213 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  br label %235

214:                                              ; preds = %202
  br label %215

215:                                              ; preds = %214, %180
  %216 = load %struct.urb*, %struct.urb** %2, align 8
  %217 = getelementptr inbounds %struct.urb, %struct.urb* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = inttoptr i64 %218 to i32*
  %220 = load %struct.urb*, %struct.urb** %2, align 8
  %221 = getelementptr inbounds %struct.urb, %struct.urb* %220, i32 0, i32 2
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %219, i64 %228
  store i32* %229, i32** %5, align 8
  %230 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %231 = load i32, i32* @INTER_PACKET, align 4
  %232 = load i32*, i32** %5, align 8
  %233 = load i64, i64* @SD_PKT_SZ, align 8
  %234 = call i32 @gspca_frame_add(%struct.gspca_dev* %230, i32 %231, i32* %232, i64 %233)
  br label %235

235:                                              ; preds = %215, %210, %148, %103
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %75

238:                                              ; preds = %75
  %239 = load %struct.urb*, %struct.urb** %4, align 8
  %240 = load i32, i32* @GFP_ATOMIC, align 4
  %241 = call i32 @usb_submit_urb(%struct.urb* %239, i32 %240)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  %245 = load i32, i32* %7, align 4
  %246 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %245)
  br label %247

247:                                              ; preds = %244, %238
  %248 = load %struct.urb*, %struct.urb** %2, align 8
  %249 = load i32, i32* @GFP_ATOMIC, align 4
  %250 = call i32 @usb_submit_urb(%struct.urb* %248, i32 %249)
  store i32 %250, i32* %7, align 4
  %251 = load i32, i32* %7, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %247
  %254 = load i32, i32* %7, align 4
  %255 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %254)
  br label %256

256:                                              ; preds = %18, %31, %32, %53, %253, %247
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i64) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

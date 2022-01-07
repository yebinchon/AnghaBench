; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_set_alt_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_set_alt_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i64, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32, i64*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64*, i64 }
%struct.TYPE_11__ = type { i32, i64*, i64 }
%struct.TYPE_10__ = type { i32, i64*, i64 }
%struct.TYPE_9__ = type { i32, i64*, i64 }

@.str = private unnamed_addr constant [60 x i8] c"can't change interface %d alt no. to %d: Max. Pkt size = 0\0A\00", align 1
@CX231XX_BOARD_CNXT_VIDEO_GRABBER = common dso_local global i64 0, align 8
@CX231XX_BOARD_HAUPPAUGE_USBLIVE2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"setting alternate %d with wMaxPacketSize=%u,Interface = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"can't change interface %d alt no. to %d (err=%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %203 [
    i32 131, label %12
    i32 130, label %48
    i32 133, label %59
    i32 128, label %95
    i32 129, label %131
    i32 132, label %167
  ]

12:                                               ; preds = %3
  %13 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %12
  %33 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %34 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %36, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i64 %43, i64* %46, align 8
  store i64 %43, i64* %10, align 8
  br label %47

47:                                               ; preds = %32, %12
  br label %204

48:                                               ; preds = %3
  %49 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %50 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %9, align 8
  br label %204

59:                                               ; preds = %3
  %60 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %61 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %72 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %75 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %59
  %80 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %85 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %83, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %92 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i64 %90, i64* %93, align 8
  store i64 %90, i64* %10, align 8
  br label %94

94:                                               ; preds = %79, %59
  br label %204

95:                                               ; preds = %3
  %96 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %97 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %9, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %108 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %111 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %95
  %116 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %117 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %121 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %119, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %128 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  store i64 %126, i64* %129, align 8
  store i64 %126, i64* %10, align 8
  br label %130

130:                                              ; preds = %115, %95
  br label %204

131:                                              ; preds = %3
  %132 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %133 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %9, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %144 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %147 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = icmp ne i64* %149, null
  br i1 %150, label %151, label %166

151:                                              ; preds = %131
  %152 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %153 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %157 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %155, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %164 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  store i64 %162, i64* %165, align 8
  store i64 %162, i64* %10, align 8
  br label %166

166:                                              ; preds = %151, %131
  br label %204

167:                                              ; preds = %3
  %168 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %169 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %9, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %180 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %183 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = load i64*, i64** %184, align 8
  %186 = icmp ne i64* %185, null
  br i1 %186, label %187, label %202

187:                                              ; preds = %167
  %188 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %189 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load i64*, i64** %190, align 8
  %192 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %193 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %191, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %200 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 2
  store i64 %198, i64* %201, align 8
  store i64 %198, i64* %10, align 8
  br label %202

202:                                              ; preds = %187, %167
  br label %204

203:                                              ; preds = %3
  br label %204

204:                                              ; preds = %203, %202, %166, %130, %94, %48, %47
  %205 = load i32, i32* %7, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %227

207:                                              ; preds = %204
  %208 = load i64, i64* %10, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %207
  %211 = load i64, i64* %9, align 8
  %212 = load i32, i32* %7, align 4
  %213 = call i32 (i8*, i64, i32, ...) @cx231xx_errdev(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %211, i32 %212)
  %214 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %215 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @CX231XX_BOARD_CNXT_VIDEO_GRABBER, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %210
  %220 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %221 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @CX231XX_BOARD_HAUPPAUGE_USBLIVE2, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  store i32 -1, i32* %4, align 4
  br label %252

226:                                              ; preds = %219, %210
  br label %227

227:                                              ; preds = %226, %207, %204
  %228 = load i32, i32* %7, align 4
  %229 = load i64, i64* %10, align 8
  %230 = load i64, i64* %9, align 8
  %231 = call i32 @cx231xx_coredbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %228, i64 %229, i64 %230)
  %232 = load i64, i64* %9, align 8
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %227
  %235 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %236 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i64, i64* %9, align 8
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @usb_set_interface(i32 %237, i64 %238, i32 %239)
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %234
  %244 = load i64, i64* %9, align 8
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %8, align 4
  %247 = call i32 (i8*, i64, i32, ...) @cx231xx_errdev(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %244, i32 %245, i32 %246)
  %248 = load i32, i32* %8, align 4
  store i32 %248, i32* %4, align 4
  br label %252

249:                                              ; preds = %234
  br label %250

250:                                              ; preds = %249, %227
  %251 = load i32, i32* %8, align 4
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %250, %243, %225
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local i32 @cx231xx_errdev(i8*, i64, i32, ...) #1

declare dso_local i32 @cx231xx_coredbg(i8*, i32, i64, i64) #1

declare dso_local i32 @usb_set_interface(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

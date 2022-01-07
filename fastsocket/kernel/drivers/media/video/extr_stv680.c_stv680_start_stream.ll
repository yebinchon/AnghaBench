; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_start_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_start_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stv = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.urb**, i64, i32, i32, i32, i64, i64, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.urb = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@STV680_NUMFRAMES = common dso_local global i32 0, align 4
@STV680_NUMSBUF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"STV(e): Could not kmalloc raw data buffer %i\00", align 1
@STV680_NUMSCRATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"STV(e): Could not kmalloc raw scratch buffer %i\00", align 1
@BUFFER_UNUSED = common dso_local global i32 0, align 4
@stv680_video_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"STV(e): urb burned down with err %d in start stream %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stv*)* @stv680_start_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv680_start_stream(%struct.usb_stv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_stv*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_stv* %0, %struct.usb_stv** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %8 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @STV680_NUMFRAMES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %15 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %19 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %16, %22
  %24 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %25 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %24, i32 0, i32 12
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 %23, i64* %30, align 8
  %31 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %32 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %31, i32 0, i32 12
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %13
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %9

41:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @STV680_NUMSBUF, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %48 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kmalloc(i32 %49, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %54 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32* %52, i32** %59, align 8
  %60 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %61 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %46
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %191

72:                                               ; preds = %46
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %42

76:                                               ; preds = %42
  %77 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %78 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %77, i32 0, i32 11
  store i64 0, i64* %78, align 8
  %79 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %80 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %79, i32 0, i32 10
  store i64 0, i64* %80, align 8
  %81 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %82 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %81, i32 0, i32 9
  store i64 0, i64* %82, align 8
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %122, %76
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @STV680_NUMSCRATCH, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %125

87:                                               ; preds = %83
  %88 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %89 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i8* @kmalloc(i32 %90, i32 %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %95 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32* %93, i32** %100, align 8
  %101 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %102 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %101, i32 0, i32 2
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %87
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %191

113:                                              ; preds = %87
  %114 = load i32, i32* @BUFFER_UNUSED, align 4
  %115 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %116 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %115, i32 0, i32 2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 %114, i32* %121, align 8
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %83

125:                                              ; preds = %83
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %185, %125
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @STV680_NUMSBUF, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %188

130:                                              ; preds = %126
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %131)
  store %struct.urb* %132, %struct.urb** %4, align 8
  %133 = load %struct.urb*, %struct.urb** %4, align 8
  %134 = icmp ne %struct.urb* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  br label %191

136:                                              ; preds = %130
  %137 = load %struct.urb*, %struct.urb** %4, align 8
  %138 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %139 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %142 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %145 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @usb_rcvbulkpipe(i32 %143, i32 %146)
  %148 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %149 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %148, i32 0, i32 3
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %157 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @stv680_video_irq, align 4
  %160 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %161 = call i32 @usb_fill_bulk_urb(%struct.urb* %137, i32 %140, i32 %147, i32* %155, i32 %158, i32 %159, %struct.usb_stv* %160)
  %162 = load %struct.urb*, %struct.urb** %4, align 8
  %163 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %164 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %163, i32 0, i32 4
  %165 = load %struct.urb**, %struct.urb*** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.urb*, %struct.urb** %165, i64 %167
  store %struct.urb* %162, %struct.urb** %168, align 8
  %169 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %170 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %169, i32 0, i32 4
  %171 = load %struct.urb**, %struct.urb*** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.urb*, %struct.urb** %171, i64 %173
  %175 = load %struct.urb*, %struct.urb** %174, align 8
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call i32 @usb_submit_urb(%struct.urb* %175, i32 %176)
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %136
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %182)
  br label %191

184:                                              ; preds = %136
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %126

188:                                              ; preds = %126
  %189 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %190 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %189, i32 0, i32 5
  store i64 0, i64* %190, align 8
  store i32 0, i32* %2, align 4
  br label %266

191:                                              ; preds = %180, %135, %110, %69
  store i32 0, i32* %6, align 4
  br label %192

192:                                              ; preds = %235, %191
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @STV680_NUMSBUF, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %238

196:                                              ; preds = %192
  %197 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %198 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %197, i32 0, i32 4
  %199 = load %struct.urb**, %struct.urb*** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.urb*, %struct.urb** %199, i64 %201
  %203 = load %struct.urb*, %struct.urb** %202, align 8
  %204 = call i32 @usb_kill_urb(%struct.urb* %203)
  %205 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %206 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %205, i32 0, i32 4
  %207 = load %struct.urb**, %struct.urb*** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.urb*, %struct.urb** %207, i64 %209
  %211 = load %struct.urb*, %struct.urb** %210, align 8
  %212 = call i32 @usb_free_urb(%struct.urb* %211)
  %213 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %214 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %213, i32 0, i32 4
  %215 = load %struct.urb**, %struct.urb*** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.urb*, %struct.urb** %215, i64 %217
  store %struct.urb* null, %struct.urb** %218, align 8
  %219 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %220 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %219, i32 0, i32 3
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = call i32 @kfree(i32* %226)
  %228 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %229 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %228, i32 0, i32 3
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  store i32* null, i32** %234, align 8
  br label %235

235:                                              ; preds = %196
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %192

238:                                              ; preds = %192
  store i32 0, i32* %6, align 4
  br label %239

239:                                              ; preds = %260, %238
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* @STV680_NUMSCRATCH, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %263

243:                                              ; preds = %239
  %244 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %245 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %244, i32 0, i32 2
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @kfree(i32* %251)
  %253 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %254 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %253, i32 0, i32 2
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %254, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  store i32* null, i32** %259, align 8
  br label %260

260:                                              ; preds = %243
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %239

263:                                              ; preds = %239
  %264 = load i32, i32* @ENOMEM, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %263, %188
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, ...) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.usb_stv*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

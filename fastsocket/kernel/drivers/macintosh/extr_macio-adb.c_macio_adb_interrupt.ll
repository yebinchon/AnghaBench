; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio-adb.c_macio_adb_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio-adb.c_macio_adb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.adb_request = type { i32, i32*, i32, i32, i32*, void (%struct.adb_request*)*, i32, %struct.adb_request*, i64 }

@macio_lock = common dso_local global i32 0, align 4
@adb = common dso_local global %struct.TYPE_12__* null, align 8
@TAG = common dso_local global i32 0, align 4
@current_req = common dso_local global %struct.adb_request* null, align 8
@HMB = common dso_local global i32 0, align 4
@DTB = common dso_local global i32 0, align 4
@CRE = common dso_local global i32 0, align 4
@TAR = common dso_local global i32 0, align 4
@DFB = common dso_local global i32 0, align 4
@APD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @macio_adb_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macio_adb_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adb_request*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca void (%struct.adb_request*)*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.adb_request* null, %struct.adb_request** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = call i32 @spin_lock(i32* @macio_lock)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = call i32 @in_8(i32* %18)
  %20 = load i32, i32* @TAG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %105

23:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  %24 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %24, %struct.adb_request** %8, align 8
  %25 = icmp ne %struct.adb_request* %24, null
  br i1 %25, label %26, label %100

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %30 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %42 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @out_8(i32* %40, i32 %47)
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %27

52:                                               ; preds = %27
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %57 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HMB, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @out_8(i32* %55, i32 %60)
  %62 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %63 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %65 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %52
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* @DTB, align 4
  %73 = load i32, i32* @CRE, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i32 @out_8(i32* %71, i32 %74)
  br label %99

76:                                               ; preds = %52
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* @DTB, align 4
  %81 = call i32 @out_8(i32* %79, i32 %80)
  %82 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %83 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %82, i32 0, i32 7
  %84 = load %struct.adb_request*, %struct.adb_request** %83, align 8
  store %struct.adb_request* %84, %struct.adb_request** @current_req, align 8
  store i32 1, i32* %11, align 4
  %85 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %86 = icmp ne %struct.adb_request* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %76
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = call i32 @in_8(i32* %93)
  %95 = load i32, i32* @TAR, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @out_8(i32* %90, i32 %96)
  br label %98

98:                                               ; preds = %87, %76
  br label %99

99:                                               ; preds = %98, %68
  br label %100

100:                                              ; preds = %99, %23
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = call i32 @out_8(i32* %103, i32 0)
  br label %105

105:                                              ; preds = %100, %2
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = call i32 @in_8(i32* %108)
  %110 = load i32, i32* @DFB, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %231

113:                                              ; preds = %105
  store i32 1, i32* %13, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = call i32 @in_8(i32* %116)
  store i32 %117, i32* %7, align 4
  %118 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %119 = icmp ne %struct.adb_request* %118, null
  br i1 %119, label %120, label %181

120:                                              ; preds = %113
  %121 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %122 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %181

125:                                              ; preds = %120
  %126 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %126, %struct.adb_request** %8, align 8
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %163

129:                                              ; preds = %125
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = call i32 @in_8(i32* %132)
  %134 = load i32, i32* @HMB, align 4
  %135 = and i32 %133, %134
  %136 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %137 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %159, %129
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %141 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %138
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = call i32 @in_8(i32* %151)
  %153 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %154 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  br label %159

159:                                              ; preds = %144
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %138

162:                                              ; preds = %138
  br label %163

163:                                              ; preds = %162, %125
  %164 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %165 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %164, i32 0, i32 7
  %166 = load %struct.adb_request*, %struct.adb_request** %165, align 8
  store %struct.adb_request* %166, %struct.adb_request** @current_req, align 8
  store i32 1, i32* %11, align 4
  %167 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %168 = icmp ne %struct.adb_request* %167, null
  br i1 %168, label %169, label %180

169:                                              ; preds = %163
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = call i32 @in_8(i32* %175)
  %177 = load i32, i32* @TAR, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @out_8(i32* %172, i32 %178)
  br label %180

180:                                              ; preds = %169, %163
  br label %222

181:                                              ; preds = %120, %113
  %182 = load i32, i32* %7, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %221

184:                                              ; preds = %181
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = call i32 @in_8(i32* %187)
  %189 = load i32, i32* @HMB, align 4
  %190 = and i32 %188, %189
  store i32 %190, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %208, %184
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %191
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = call i32 @in_8(i32* %202)
  %204 = trunc i32 %203 to i8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %206
  store i8 %204, i8* %207, align 1
  br label %208

208:                                              ; preds = %195
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %5, align 4
  br label %191

211:                                              ; preds = %191
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %10, align 4
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = call i32 @in_8(i32* %215)
  %217 = load i32, i32* @APD, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i32
  store i32 %220, i32* %12, align 4
  br label %221

221:                                              ; preds = %211, %181
  br label %222

222:                                              ; preds = %221, %180
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = call i32 @out_8(i32* %225, i32 0)
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** @adb, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = call i32 @out_8(i32* %229, i32 0)
  br label %231

231:                                              ; preds = %222, %105
  %232 = call i32 @spin_unlock(i32* @macio_lock)
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %251

235:                                              ; preds = %231
  %236 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %237 = icmp ne %struct.adb_request* %236, null
  br i1 %237, label %238, label %251

238:                                              ; preds = %235
  %239 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %240 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %239, i32 0, i32 5
  %241 = load void (%struct.adb_request*)*, void (%struct.adb_request*)** %240, align 8
  store void (%struct.adb_request*)* %241, void (%struct.adb_request*)** %14, align 8
  %242 = call i32 (...) @mb()
  %243 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  %244 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %243, i32 0, i32 6
  store i32 1, i32* %244, align 8
  %245 = load void (%struct.adb_request*)*, void (%struct.adb_request*)** %14, align 8
  %246 = icmp ne void (%struct.adb_request*)* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %238
  %248 = load void (%struct.adb_request*)*, void (%struct.adb_request*)** %14, align 8
  %249 = load %struct.adb_request*, %struct.adb_request** %8, align 8
  call void %248(%struct.adb_request* %249)
  br label %250

250:                                              ; preds = %247, %238
  br label %251

251:                                              ; preds = %250, %235, %231
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @adb_input(i8* %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %254, %251
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @IRQ_RETVAL(i32 %260)
  ret i32 %261
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @adb_input(i8*, i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

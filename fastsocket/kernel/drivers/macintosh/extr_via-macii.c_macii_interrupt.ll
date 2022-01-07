; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32*, i32, i32, i32*, i32, i32 (%struct.adb_request*)*, %struct.adb_request*, i32, i32 }

@macii_interrupt.entered = internal global i32 0, align 4
@via = common dso_local global i32* null, align 8
@IFR = common dso_local global i64 0, align 8
@SR_INT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@last_status = common dso_local global i32 0, align 4
@B = common dso_local global i64 0, align 8
@ST_MASK = common dso_local global i32 0, align 4
@CTLR_IRQ = common dso_local global i32 0, align 4
@macii_state = common dso_local global i32 0, align 4
@reading_reply = common dso_local global i32 0, align 4
@current_req = common dso_local global %struct.adb_request* null, align 8
@reply_ptr = common dso_local global i32* null, align 8
@reply_buf = common dso_local global i32* null, align 8
@SR = common dso_local global i64 0, align 8
@reply_len = common dso_local global i32 0, align 4
@srq_asserted = common dso_local global i32 0, align 4
@ST_EVEN = common dso_local global i32 0, align 4
@data_index = common dso_local global i32 0, align 4
@autopoll_devs = common dso_local global i32 0, align 4
@SR_OUT = common dso_local global i32 0, align 4
@ACR = common dso_local global i64 0, align 8
@ST_IDLE = common dso_local global i32 0, align 4
@ST_CMD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @macii_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macii_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.adb_request*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** @via, align 8
  %12 = load i64, i64* @IFR, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SR_INT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load i32, i32* @SR_INT, align 4
  %20 = load i32*, i32** @via, align 8
  %21 = load i64, i64* @IFR, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  br label %25

23:                                               ; preds = %10
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %341

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* @macii_interrupt.entered, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @macii_interrupt.entered, align 4
  %29 = call i32 @BUG_ON(i32 %27)
  %30 = load i32, i32* @status, align 4
  store i32 %30, i32* @last_status, align 4
  %31 = load i32*, i32** @via, align 8
  %32 = load i64, i64* @B, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ST_MASK, align 4
  %36 = load i32, i32* @CTLR_IRQ, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  store i32 %38, i32* @status, align 4
  %39 = load i32, i32* @macii_state, align 4
  switch i32 %39, label %336 [
    i32 131, label %40
    i32 128, label %82
    i32 129, label %196
    i32 130, label %263
  ]

40:                                               ; preds = %26
  %41 = load i32, i32* @reading_reply, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %45 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** @reply_ptr, align 8
  br label %53

47:                                               ; preds = %40
  %48 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %49 = icmp ne %struct.adb_request* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load i32*, i32** @reply_buf, align 8
  store i32* %52, i32** @reply_ptr, align 8
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i32*, i32** @via, align 8
  %55 = load i64, i64* @SR, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @status, align 4
  %59 = load i32, i32* @CTLR_IRQ, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 255
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* @reply_len, align 4
  store i32 0, i32* @srq_asserted, align 4
  store i32 130, i32* @macii_state, align 4
  br label %69

66:                                               ; preds = %62, %53
  store i32 129, i32* @macii_state, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** @reply_ptr, align 8
  store i32 %67, i32* %68, align 4
  store i32 1, i32* @reply_len, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i32*, i32** @via, align 8
  %71 = load i64, i64* @B, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ST_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = load i32, i32* @ST_EVEN, align 4
  %78 = or i32 %76, %77
  %79 = load i32*, i32** @via, align 8
  %80 = load i64, i64* @B, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %78, i32* %81, align 4
  br label %337

82:                                               ; preds = %26
  %83 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %83, %struct.adb_request** %7, align 8
  %84 = load i32, i32* @data_index, align 4
  %85 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %86 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %154

89:                                               ; preds = %82
  %90 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %91 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %90, i32 0, i32 1
  store i32 1, i32* %91, align 8
  store i32 131, i32* @macii_state, align 4
  %92 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %93 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 1, i32* @reading_reply, align 4
  br label %126

97:                                               ; preds = %89
  %98 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %99 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %98, i32 0, i32 2
  store i32 1, i32* %99, align 4
  %100 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %101 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %100, i32 0, i32 6
  %102 = load %struct.adb_request*, %struct.adb_request** %101, align 8
  store %struct.adb_request* %102, %struct.adb_request** @current_req, align 8
  %103 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %104 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %103, i32 0, i32 5
  %105 = load i32 (%struct.adb_request*)*, i32 (%struct.adb_request*)** %104, align 8
  %106 = icmp ne i32 (%struct.adb_request*)* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %109 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %108, i32 0, i32 5
  %110 = load i32 (%struct.adb_request*)*, i32 (%struct.adb_request*)** %109, align 8
  %111 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %112 = call i32 %110(%struct.adb_request* %111)
  br label %113

113:                                              ; preds = %107, %97
  %114 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %115 = icmp ne %struct.adb_request* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 (...) @macii_start()
  br label %125

118:                                              ; preds = %113
  %119 = call i32 (...) @need_autopoll()
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* @autopoll_devs, align 4
  %123 = call i32 @macii_autopoll(i32 %122)
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %116
  br label %126

126:                                              ; preds = %125, %96
  %127 = load i32, i32* @macii_state, align 4
  %128 = icmp eq i32 %127, 131
  br i1 %128, label %129, label %153

129:                                              ; preds = %126
  %130 = load i32, i32* @SR_OUT, align 4
  %131 = xor i32 %130, -1
  %132 = load i32*, i32** @via, align 8
  %133 = load i64, i64* @ACR, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %131
  store i32 %136, i32* %134, align 4
  %137 = load i32*, i32** @via, align 8
  %138 = load i64, i64* @SR, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %6, align 4
  %141 = load i32*, i32** @via, align 8
  %142 = load i64, i64* @B, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ST_MASK, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  %148 = load i32, i32* @ST_IDLE, align 4
  %149 = or i32 %147, %148
  %150 = load i32*, i32** @via, align 8
  %151 = load i64, i64* @B, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 %149, i32* %152, align 4
  br label %153

153:                                              ; preds = %129, %126
  br label %195

154:                                              ; preds = %82
  %155 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %156 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* @data_index, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @data_index, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** @via, align 8
  %164 = load i64, i64* @SR, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 %162, i32* %165, align 4
  %166 = load i32*, i32** @via, align 8
  %167 = load i64, i64* @B, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ST_MASK, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* @ST_CMD, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %154
  %175 = load i32*, i32** @via, align 8
  %176 = load i64, i64* @B, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @ST_MASK, align 4
  %180 = xor i32 %179, -1
  %181 = and i32 %178, %180
  %182 = load i32, i32* @ST_EVEN, align 4
  %183 = or i32 %181, %182
  %184 = load i32*, i32** @via, align 8
  %185 = load i64, i64* @B, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32 %183, i32* %186, align 4
  br label %194

187:                                              ; preds = %154
  %188 = load i32, i32* @ST_MASK, align 4
  %189 = load i32*, i32** @via, align 8
  %190 = load i64, i64* @B, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = xor i32 %192, %188
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %187, %174
  br label %195

195:                                              ; preds = %194, %153
  br label %337

196:                                              ; preds = %26
  %197 = load i32*, i32** @via, align 8
  %198 = load i64, i64* @SR, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* @status, align 4
  %202 = load i32, i32* @ST_MASK, align 4
  %203 = and i32 %201, %202
  %204 = load i32, i32* @ST_CMD, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %212, label %206

206:                                              ; preds = %196
  %207 = load i32, i32* @status, align 4
  %208 = load i32, i32* @ST_MASK, align 4
  %209 = and i32 %207, %208
  %210 = load i32, i32* @ST_IDLE, align 4
  %211 = icmp eq i32 %209, %210
  br label %212

212:                                              ; preds = %206, %196
  %213 = phi i1 [ true, %196 ], [ %211, %206 ]
  %214 = zext i1 %213 to i32
  %215 = call i32 @BUG_ON(i32 %214)
  store i32 0, i32* @srq_asserted, align 4
  %216 = load i32, i32* @status, align 4
  %217 = load i32, i32* @CTLR_IRQ, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %242, label %220

220:                                              ; preds = %212
  %221 = load i32, i32* %6, align 4
  %222 = icmp eq i32 %221, 255
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = load i32, i32* @last_status, align 4
  %225 = load i32, i32* @CTLR_IRQ, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %223
  store i32 130, i32* @macii_state, align 4
  store i32 0, i32* @reply_len, align 4
  store i32 1, i32* @srq_asserted, align 4
  br label %229

229:                                              ; preds = %228, %223
  br label %241

230:                                              ; preds = %220
  %231 = load i32, i32* %6, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  store i32 130, i32* @macii_state, align 4
  %234 = load i32, i32* @last_status, align 4
  %235 = load i32, i32* @CTLR_IRQ, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %233
  store i32 1, i32* @srq_asserted, align 4
  br label %239

239:                                              ; preds = %238, %233
  br label %240

240:                                              ; preds = %239, %230
  br label %241

241:                                              ; preds = %240, %229
  br label %242

242:                                              ; preds = %241, %212
  %243 = load i32, i32* @macii_state, align 4
  %244 = icmp eq i32 %243, 129
  br i1 %244, label %245, label %256

245:                                              ; preds = %242
  %246 = load i32, i32* @reply_len, align 4
  %247 = icmp sgt i32 %246, 15
  %248 = zext i1 %247 to i32
  %249 = call i32 @BUG_ON(i32 %248)
  %250 = load i32*, i32** @reply_ptr, align 8
  %251 = getelementptr inbounds i32, i32* %250, i32 1
  store i32* %251, i32** @reply_ptr, align 8
  %252 = load i32, i32* %6, align 4
  %253 = load i32*, i32** @reply_ptr, align 8
  store i32 %252, i32* %253, align 4
  %254 = load i32, i32* @reply_len, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* @reply_len, align 4
  br label %256

256:                                              ; preds = %245, %242
  %257 = load i32, i32* @ST_MASK, align 4
  %258 = load i32*, i32** @via, align 8
  %259 = load i64, i64* @B, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = xor i32 %261, %257
  store i32 %262, i32* %260, align 4
  br label %337

263:                                              ; preds = %26
  %264 = load i32*, i32** @via, align 8
  %265 = load i64, i64* @SR, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %6, align 4
  %268 = load i32, i32* @reading_reply, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %291

270:                                              ; preds = %263
  store i32 0, i32* @reading_reply, align 4
  %271 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %271, %struct.adb_request** %7, align 8
  %272 = load i32, i32* @reply_len, align 4
  %273 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %274 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  %275 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %276 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %275, i32 0, i32 2
  store i32 1, i32* %276, align 4
  %277 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %278 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %277, i32 0, i32 6
  %279 = load %struct.adb_request*, %struct.adb_request** %278, align 8
  store %struct.adb_request* %279, %struct.adb_request** @current_req, align 8
  %280 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %281 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %280, i32 0, i32 5
  %282 = load i32 (%struct.adb_request*)*, i32 (%struct.adb_request*)** %281, align 8
  %283 = icmp ne i32 (%struct.adb_request*)* %282, null
  br i1 %283, label %284, label %290

284:                                              ; preds = %270
  %285 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %286 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %285, i32 0, i32 5
  %287 = load i32 (%struct.adb_request*)*, i32 (%struct.adb_request*)** %286, align 8
  %288 = load %struct.adb_request*, %struct.adb_request** %7, align 8
  %289 = call i32 %287(%struct.adb_request* %288)
  br label %290

290:                                              ; preds = %284, %270
  br label %302

291:                                              ; preds = %263
  %292 = load i32, i32* @reply_len, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %291
  %295 = load i32, i32* @autopoll_devs, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = load i32*, i32** @reply_buf, align 8
  %299 = load i32, i32* @reply_len, align 4
  %300 = call i32 @adb_input(i32* %298, i32 %299, i32 0)
  br label %301

301:                                              ; preds = %297, %294, %291
  br label %302

302:                                              ; preds = %301, %290
  store i32 131, i32* @macii_state, align 4
  %303 = load i32, i32* @srq_asserted, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = call i32 (...) @macii_queue_poll()
  br label %307

307:                                              ; preds = %305, %302
  %308 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %309 = icmp ne %struct.adb_request* %308, null
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  %311 = call i32 (...) @macii_start()
  br label %319

312:                                              ; preds = %307
  %313 = call i32 (...) @need_autopoll()
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load i32, i32* @autopoll_devs, align 4
  %317 = call i32 @macii_autopoll(i32 %316)
  br label %318

318:                                              ; preds = %315, %312
  br label %319

319:                                              ; preds = %318, %310
  %320 = load i32, i32* @macii_state, align 4
  %321 = icmp eq i32 %320, 131
  br i1 %321, label %322, label %335

322:                                              ; preds = %319
  %323 = load i32*, i32** @via, align 8
  %324 = load i64, i64* @B, align 8
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @ST_MASK, align 4
  %328 = xor i32 %327, -1
  %329 = and i32 %326, %328
  %330 = load i32, i32* @ST_IDLE, align 4
  %331 = or i32 %329, %330
  %332 = load i32*, i32** @via, align 8
  %333 = load i64, i64* @B, align 8
  %334 = getelementptr inbounds i32, i32* %332, i64 %333
  store i32 %331, i32* %334, align 4
  br label %335

335:                                              ; preds = %322, %319
  br label %337

336:                                              ; preds = %26
  br label %337

337:                                              ; preds = %336, %335, %256, %195, %69
  %338 = load i32, i32* @macii_interrupt.entered, align 4
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* @macii_interrupt.entered, align 4
  %340 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %340, i32* %3, align 4
  br label %341

341:                                              ; preds = %337, %23
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @macii_start(...) #1

declare dso_local i32 @need_autopoll(...) #1

declare dso_local i32 @macii_autopoll(i32) #1

declare dso_local i32 @adb_input(i32*, i32, i32) #1

declare dso_local i32 @macii_queue_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

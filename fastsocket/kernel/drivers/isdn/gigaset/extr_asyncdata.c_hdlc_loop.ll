; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_hdlc_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_hdlc_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i32, %struct.bc_state*, %struct.cardstate* }
%struct.bc_state = type { i32, i64, i8, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }
%struct.cardstate = type { i64, i32 }

@INS_byte_stuff = common dso_local global i32 0, align 4
@PPP_ESCAPE = common dso_local global i8 0, align 1
@DLE_FLAG = common dso_local global i8 0, align 1
@INS_DLE_command = common dso_local global i32 0, align 4
@INS_DLE_char = common dso_local global i32 0, align 4
@PPP_TRANS = common dso_local global i8 0, align 1
@DEBUG_HDLC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"byte stuffed: 0x%02x\00", align 1
@PPP_FLAG = common dso_local global i8 0, align 1
@INS_skip_frame = common dso_local global i32 0, align 4
@INS_have_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"7e----------------------------\00", align 1
@PPP_GOODFCS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Checksum failed, %u bytes corrupted!\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid packet size (1)!\0A\00", align 1
@PPP_INITFCS = common dso_local global i64 0, align 8
@SBUFSIZE = common dso_local global i32 0, align 4
@HW_HDR_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"could not allocate new skb\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"not byte stuffed: 0x%02x\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"received packet too long\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i32, %struct.inbuf_t*)* @hdlc_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlc_loop(i8 zeroext %0, i8* %1, i32 %2, %struct.inbuf_t* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inbuf_t*, align 8
  %9 = alloca %struct.cardstate*, align 8
  %10 = alloca %struct.bc_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inbuf_t* %3, %struct.inbuf_t** %8, align 8
  %18 = load %struct.inbuf_t*, %struct.inbuf_t** %8, align 8
  %19 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %18, i32 0, i32 2
  %20 = load %struct.cardstate*, %struct.cardstate** %19, align 8
  store %struct.cardstate* %20, %struct.cardstate** %9, align 8
  %21 = load %struct.inbuf_t*, %struct.inbuf_t** %8, align 8
  %22 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %21, i32 0, i32 1
  %23 = load %struct.bc_state*, %struct.bc_state** %22, align 8
  store %struct.bc_state* %23, %struct.bc_state** %10, align 8
  %24 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %25 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %28 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %31 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %30, i32 0, i32 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %13, align 8
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @INS_byte_stuff, align 4
  %36 = and i32 %34, %35
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load i32, i32* @INS_byte_stuff, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %105

44:                                               ; preds = %4
  br label %45

45:                                               ; preds = %375, %44
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @PPP_ESCAPE, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %125

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @INS_byte_stuff, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %376

65:                                               ; preds = %54
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  %68 = load i8, i8* %66, align 1
  store i8 %68, i8* %5, align 1
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  %71 = load i8, i8* %5, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @DLE_FLAG, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %65
  %77 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %78 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load %struct.inbuf_t*, %struct.inbuf_t** %8, align 8
  %83 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @INS_DLE_command, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %81, %76
  %89 = phi i1 [ true, %76 ], [ %87, %81 ]
  br label %90

90:                                               ; preds = %88, %65
  %91 = phi i1 [ false, %65 ], [ %89, %88 ]
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32, i32* @INS_DLE_char, align 4
  %97 = load %struct.inbuf_t*, %struct.inbuf_t** %8, align 8
  %98 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @INS_byte_stuff, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %376

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %39
  %106 = load i8, i8* @PPP_TRANS, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* %5, align 1
  %109 = zext i8 %108 to i32
  %110 = xor i32 %109, %107
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %5, align 1
  %112 = load i8, i8* %5, align 1
  %113 = call i32 @muststuff(i8 zeroext %112)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %105
  %120 = load i32, i32* @DEBUG_HDLC, align 4
  %121 = load i8, i8* %5, align 1
  %122 = zext i8 %121 to i32
  %123 = call i32 (i32, i8*, ...) @gig_dbg(i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %119, %105
  br label %293

125:                                              ; preds = %45
  %126 = load i8, i8* %5, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8, i8* @PPP_FLAG, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %281

134:                                              ; preds = %125
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @INS_skip_frame, align 4
  %137 = and i32 %135, %136
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  store i8 1, i8* %14, align 1
  %141 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %142 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %143 = call i32 @gigaset_rcv_error(%struct.sk_buff* null, %struct.cardstate* %141, %struct.bc_state* %142)
  br label %228

144:                                              ; preds = %134
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @INS_have_data, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  br label %376

150:                                              ; preds = %144
  %151 = load i32, i32* @DEBUG_HDLC, align 4
  %152 = call i32 (i32, i8*, ...) @gig_dbg(i32 %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i8 0, i8* %14, align 1
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* @PPP_GOODFCS, align 8
  %155 = icmp ne i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %150
  %160 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %161 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @dev_err(i32 %162, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  store %struct.sk_buff* null, %struct.sk_buff** %15, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %168 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %169 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %170 = call i32 @gigaset_rcv_error(%struct.sk_buff* %167, %struct.cardstate* %168, %struct.bc_state* %169)
  store i8 1, i8* %14, align 1
  br label %226

171:                                              ; preds = %150
  %172 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %17, align 4
  %175 = icmp sgt i32 %174, 2
  %176 = zext i1 %175 to i32
  %177 = call i64 @likely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %171
  %180 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %182, 2
  store i32 %183, i32* %181, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %186, 2
  store i32 %187, i32* %185, align 4
  br label %205

188:                                              ; preds = %171
  %189 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %190 = call i32 @dev_kfree_skb(%struct.sk_buff* %189)
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %191 = load i32, i32* @INS_skip_frame, align 4
  %192 = load i32, i32* %11, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %17, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %204

196:                                              ; preds = %188
  %197 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %198 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i32, i8*, ...) @dev_err(i32 %199, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i8 1, i8* %14, align 1
  %201 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %202 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %203 = call i32 @gigaset_rcv_error(%struct.sk_buff* null, %struct.cardstate* %201, %struct.bc_state* %202)
  br label %204

204:                                              ; preds = %196, %188
  br label %205

205:                                              ; preds = %204, %179
  %206 = load i8, i8* %14, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %205
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* @INS_skip_frame, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br label %214

214:                                              ; preds = %209, %205
  %215 = phi i1 [ true, %205 ], [ %213, %209 ]
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = call i64 @likely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %214
  %221 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %222 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %223 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %224 = call i32 @gigaset_rcv_skb(%struct.sk_buff* %221, %struct.cardstate* %222, %struct.bc_state* %223)
  br label %225

225:                                              ; preds = %220, %214
  br label %226

226:                                              ; preds = %225, %159
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227, %140
  %229 = load i8, i8* %14, align 1
  %230 = zext i8 %229 to i32
  %231 = call i64 @unlikely(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %228
  %234 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %235 = icmp ne %struct.sk_buff* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %238 = call i32 @dev_kfree_skb(%struct.sk_buff* %237)
  br label %239

239:                                              ; preds = %236, %233
  br label %240

240:                                              ; preds = %239, %228
  %241 = load i64, i64* @PPP_INITFCS, align 8
  store i64 %241, i64* %12, align 8
  %242 = load i32, i32* @INS_have_data, align 4
  %243 = load i32, i32* @INS_skip_frame, align 4
  %244 = or i32 %242, %243
  %245 = xor i32 %244, -1
  %246 = load i32, i32* %11, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %11, align 4
  %248 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %249 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @unlikely(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %240
  %254 = load i32, i32* @INS_skip_frame, align 4
  %255 = load i32, i32* %11, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %11, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  br label %280

257:                                              ; preds = %240
  %258 = load i32, i32* @SBUFSIZE, align 4
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* @HW_HDR_LEN, align 8
  %261 = add nsw i64 %259, %260
  %262 = call %struct.sk_buff* @dev_alloc_skb(i64 %261)
  store %struct.sk_buff* %262, %struct.sk_buff** %13, align 8
  %263 = icmp ne %struct.sk_buff* %262, null
  %264 = zext i1 %263 to i32
  %265 = call i64 @likely(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %257
  %268 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %269 = load i64, i64* @HW_HDR_LEN, align 8
  %270 = call i32 @skb_reserve(%struct.sk_buff* %268, i64 %269)
  br label %279

271:                                              ; preds = %257
  %272 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %273 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @dev_warn(i32 %274, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %276 = load i32, i32* @INS_skip_frame, align 4
  %277 = load i32, i32* %11, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %11, align 4
  br label %279

279:                                              ; preds = %271, %267
  br label %280

280:                                              ; preds = %279, %253
  br label %376

281:                                              ; preds = %125
  %282 = load i8, i8* %5, align 1
  %283 = call i32 @muststuff(i8 zeroext %282)
  %284 = call i64 @unlikely(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %281
  %287 = load i32, i32* @DEBUG_HDLC, align 4
  %288 = load i8, i8* %5, align 1
  %289 = zext i8 %288 to i32
  %290 = call i32 (i32, i8*, ...) @gig_dbg(i32 %287, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %289)
  br label %291

291:                                              ; preds = %286, %281
  br label %292

292:                                              ; preds = %291
  br label %293

293:                                              ; preds = %292, %124
  %294 = load i32, i32* @INS_have_data, align 4
  %295 = load i32, i32* %11, align 4
  %296 = or i32 %295, %294
  store i32 %296, i32* %11, align 4
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* @INS_skip_frame, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  %302 = zext i1 %301 to i32
  %303 = call i64 @likely(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %331

305:                                              ; preds = %293
  %306 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %307 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @SBUFSIZE, align 4
  %310 = icmp eq i32 %308, %309
  %311 = zext i1 %310 to i32
  %312 = call i64 @unlikely(i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %324

314:                                              ; preds = %305
  %315 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %316 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @dev_warn(i32 %317, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %319 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %320 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %319)
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %321 = load i32, i32* @INS_skip_frame, align 4
  %322 = load i32, i32* %11, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %11, align 4
  br label %376

324:                                              ; preds = %305
  %325 = load i8, i8* %5, align 1
  %326 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %327 = call i8* @__skb_put(%struct.sk_buff* %326, i32 1)
  store i8 %325, i8* %327, align 1
  %328 = load i64, i64* %12, align 8
  %329 = load i8, i8* %5, align 1
  %330 = call i64 @crc_ccitt_byte(i64 %328, i8 zeroext %329)
  store i64 %330, i64* %12, align 8
  br label %331

331:                                              ; preds = %324, %293
  %332 = load i32, i32* %7, align 4
  %333 = icmp ne i32 %332, 0
  %334 = xor i1 %333, true
  %335 = zext i1 %334 to i32
  %336 = call i64 @unlikely(i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %331
  br label %376

339:                                              ; preds = %331
  %340 = load i8*, i8** %6, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %6, align 8
  %342 = load i8, i8* %340, align 1
  store i8 %342, i8* %5, align 1
  %343 = load i32, i32* %7, align 4
  %344 = add nsw i32 %343, -1
  store i32 %344, i32* %7, align 4
  %345 = load i8, i8* %5, align 1
  %346 = zext i8 %345 to i32
  %347 = load i8, i8* @DLE_FLAG, align 1
  %348 = zext i8 %347 to i32
  %349 = icmp eq i32 %346, %348
  br i1 %349, label %350, label %364

350:                                              ; preds = %339
  %351 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %352 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %362, label %355

355:                                              ; preds = %350
  %356 = load %struct.inbuf_t*, %struct.inbuf_t** %8, align 8
  %357 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @INS_DLE_command, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br label %362

362:                                              ; preds = %355, %350
  %363 = phi i1 [ true, %350 ], [ %361, %355 ]
  br label %364

364:                                              ; preds = %362, %339
  %365 = phi i1 [ false, %339 ], [ %363, %362 ]
  %366 = zext i1 %365 to i32
  %367 = call i64 @unlikely(i32 %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %375

369:                                              ; preds = %364
  %370 = load i32, i32* @INS_DLE_char, align 4
  %371 = load %struct.inbuf_t*, %struct.inbuf_t** %8, align 8
  %372 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = or i32 %373, %370
  store i32 %374, i32* %372, align 8
  br label %376

375:                                              ; preds = %364
  br label %45

376:                                              ; preds = %369, %338, %314, %280, %149, %95, %61
  %377 = load i32, i32* %11, align 4
  %378 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %379 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 8
  %380 = load i64, i64* %12, align 8
  %381 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %382 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %381, i32 0, i32 1
  store i64 %380, i64* %382, align 8
  %383 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %384 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %385 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %384, i32 0, i32 4
  store %struct.sk_buff* %383, %struct.sk_buff** %385, align 8
  %386 = load i32, i32* %16, align 4
  %387 = load i32, i32* %7, align 4
  %388 = sub nsw i32 %386, %387
  ret i32 %388
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @muststuff(i8 zeroext) #1

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i32 @gigaset_rcv_error(%struct.sk_buff*, %struct.cardstate*, %struct.bc_state*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @gigaset_rcv_skb(%struct.sk_buff*, %struct.cardstate*, %struct.bc_state*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i8* @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @crc_ccitt_byte(i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

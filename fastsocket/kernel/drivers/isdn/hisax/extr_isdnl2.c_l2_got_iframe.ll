; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_got_iframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_got_iframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { i64, %struct.PStack* }
%struct.PStack = type { %struct.Layer2 }
%struct.Layer2 = type { i32, i32, i32, i32, i32 (%struct.PStack.0*, i32, i32*)*, i32, i32, i32, i32 (%struct.PStack.1*, i32, %struct.sk_buff*)* }
%struct.PStack.0 = type opaque
%struct.PStack.1 = type opaque
%struct.sk_buff = type { i32* }

@FLG_MOD128 = common dso_local global i32 0, align 4
@FLG_OWN_BUSY = common dso_local global i32 0, align 4
@FLG_REJEXC = common dso_local global i32 0, align 4
@FLG_ACK_PEND = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@REJ = common dso_local global i32 0, align 4
@RSP = common dso_local global i32 0, align 4
@FLG_PEER_BUSY = common dso_local global i32 0, align 4
@ST_L2_7 = common dso_local global i64 0, align 8
@EV_L2_T203 = common dso_local global i32 0, align 4
@PH_PULL = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_got_iframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_got_iframe(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.Layer2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %15 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %14, i32 0, i32 1
  %16 = load %struct.PStack*, %struct.PStack** %15, align 8
  store %struct.PStack* %16, %struct.PStack** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.sk_buff*
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.PStack*, %struct.PStack** %7, align 8
  %20 = getelementptr inbounds %struct.PStack, %struct.PStack* %19, i32 0, i32 0
  store %struct.Layer2* %20, %struct.Layer2** %9, align 8
  %21 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %22 = call i32 @l2addrsize(%struct.Layer2* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @FLG_MOD128, align 4
  %24 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %25 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %24, i32 0, i32 3
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 1
  %57 = and i32 %56, 127
  store i32 %57, i32* %13, align 4
  br label %85

58:                                               ; preds = %3
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 16
  store i32 %66, i32* %10, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 1
  %75 = and i32 %74, 7
  store i32 %75, i32* %11, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 5
  %84 = and i32 %83, 7
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %58, %28
  %86 = load i32, i32* @FLG_OWN_BUSY, align 4
  %87 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %88 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %87, i32 0, i32 3
  %89 = call i64 @test_bit(i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i32 @dev_kfree_skb(%struct.sk_buff* %92)
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.PStack*, %struct.PStack** %7, align 8
  %98 = call i32 @enquiry_response(%struct.PStack* %97)
  br label %99

99:                                               ; preds = %96, %91
  br label %184

100:                                              ; preds = %85
  %101 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %102 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %157

106:                                              ; preds = %100
  %107 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %108 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @FLG_MOD128, align 4
  %112 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %113 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %112, i32 0, i32 3
  %114 = call i64 @test_bit(i32 %111, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %106
  %117 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %118 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = srem i32 %119, 128
  store i32 %120, i32* %118, align 8
  br label %126

121:                                              ; preds = %106
  %122 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %123 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = srem i32 %124, 8
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i32, i32* @FLG_REJEXC, align 4
  %128 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %129 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %128, i32 0, i32 3
  %130 = call i64 @test_and_clear_bit(i32 %127, i32* %129)
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.PStack*, %struct.PStack** %7, align 8
  %135 = call i32 @enquiry_response(%struct.PStack* %134)
  br label %141

136:                                              ; preds = %126
  %137 = load i32, i32* @FLG_ACK_PEND, align 4
  %138 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %139 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %138, i32 0, i32 3
  %140 = call i64 @test_and_set_bit(i32 %137, i32* %139)
  br label %141

141:                                              ; preds = %136, %133
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %144 = call i32 @l2headersize(%struct.Layer2* %143, i32 0)
  %145 = call i32 @skb_pull(%struct.sk_buff* %142, i32 %144)
  %146 = load %struct.PStack*, %struct.PStack** %7, align 8
  %147 = getelementptr inbounds %struct.PStack, %struct.PStack* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %147, i32 0, i32 8
  %149 = load i32 (%struct.PStack.1*, i32, %struct.sk_buff*)*, i32 (%struct.PStack.1*, i32, %struct.sk_buff*)** %148, align 8
  %150 = load %struct.PStack*, %struct.PStack** %7, align 8
  %151 = bitcast %struct.PStack* %150 to %struct.PStack.1*
  %152 = load i32, i32* @DL_DATA, align 4
  %153 = load i32, i32* @INDICATION, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %156 = call i32 %149(%struct.PStack.1* %151, i32 %154, %struct.sk_buff* %155)
  br label %183

157:                                              ; preds = %100
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %159 = call i32 @dev_kfree_skb(%struct.sk_buff* %158)
  %160 = load i32, i32* @FLG_REJEXC, align 4
  %161 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %162 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %161, i32 0, i32 3
  %163 = call i64 @test_and_set_bit(i32 %160, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %157
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.PStack*, %struct.PStack** %7, align 8
  %170 = call i32 @enquiry_response(%struct.PStack* %169)
  br label %171

171:                                              ; preds = %168, %165
  br label %182

172:                                              ; preds = %157
  %173 = load %struct.PStack*, %struct.PStack** %7, align 8
  %174 = load i32, i32* @REJ, align 4
  %175 = load i32, i32* @RSP, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @enquiry_cr(%struct.PStack* %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* @FLG_ACK_PEND, align 4
  %179 = load %struct.Layer2*, %struct.Layer2** %9, align 8
  %180 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %179, i32 0, i32 3
  %181 = call i64 @test_and_clear_bit(i32 %178, i32* %180)
  br label %182

182:                                              ; preds = %172, %171
  br label %183

183:                                              ; preds = %182, %141
  br label %184

184:                                              ; preds = %183, %99
  %185 = load %struct.PStack*, %struct.PStack** %7, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i64 @legalnr(%struct.PStack* %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %237

189:                                              ; preds = %184
  %190 = load i32, i32* @FLG_PEER_BUSY, align 4
  %191 = load %struct.PStack*, %struct.PStack** %7, align 8
  %192 = getelementptr inbounds %struct.PStack, %struct.PStack* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %192, i32 0, i32 3
  %194 = call i64 @test_bit(i32 %190, i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %233, label %196

196:                                              ; preds = %189
  %197 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %198 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @ST_L2_7, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %233

202:                                              ; preds = %196
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.PStack*, %struct.PStack** %7, align 8
  %205 = getelementptr inbounds %struct.PStack, %struct.PStack* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %203, %207
  br i1 %208, label %209, label %221

209:                                              ; preds = %202
  %210 = load %struct.PStack*, %struct.PStack** %7, align 8
  %211 = call i32 @stop_t200(%struct.PStack* %210, i32 13)
  %212 = load %struct.PStack*, %struct.PStack** %7, align 8
  %213 = getelementptr inbounds %struct.PStack, %struct.PStack* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %213, i32 0, i32 7
  %215 = load %struct.PStack*, %struct.PStack** %7, align 8
  %216 = getelementptr inbounds %struct.PStack, %struct.PStack* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @EV_L2_T203, align 4
  %220 = call i32 @FsmRestartTimer(i32* %214, i32 %218, i32 %219, i32* null, i32 7)
  br label %232

221:                                              ; preds = %202
  %222 = load i32, i32* %13, align 4
  %223 = load %struct.PStack*, %struct.PStack** %7, align 8
  %224 = getelementptr inbounds %struct.PStack, %struct.PStack* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %222, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load %struct.PStack*, %struct.PStack** %7, align 8
  %230 = call i32 @restart_t200(%struct.PStack* %229, i32 14)
  br label %231

231:                                              ; preds = %228, %221
  br label %232

232:                                              ; preds = %231, %209
  br label %233

233:                                              ; preds = %232, %196, %189
  %234 = load %struct.PStack*, %struct.PStack** %7, align 8
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @setva(%struct.PStack* %234, i32 %235)
  br label %240

237:                                              ; preds = %184
  %238 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %239 = call i32 @nrerrorrecovery(%struct.FsmInst* %238)
  br label %275

240:                                              ; preds = %233
  %241 = load %struct.PStack*, %struct.PStack** %7, align 8
  %242 = getelementptr inbounds %struct.PStack, %struct.PStack* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %242, i32 0, i32 5
  %244 = call i32 @skb_queue_empty(i32* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %263, label %246

246:                                              ; preds = %240
  %247 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %248 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @ST_L2_7, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %263

252:                                              ; preds = %246
  %253 = load %struct.PStack*, %struct.PStack** %7, align 8
  %254 = getelementptr inbounds %struct.PStack, %struct.PStack* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %254, i32 0, i32 4
  %256 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %255, align 8
  %257 = load %struct.PStack*, %struct.PStack** %7, align 8
  %258 = bitcast %struct.PStack* %257 to %struct.PStack.0*
  %259 = load i32, i32* @PH_PULL, align 4
  %260 = load i32, i32* @REQUEST, align 4
  %261 = or i32 %259, %260
  %262 = call i32 %256(%struct.PStack.0* %258, i32 %261, i32* null)
  br label %263

263:                                              ; preds = %252, %246, %240
  %264 = load i32, i32* @FLG_ACK_PEND, align 4
  %265 = load %struct.PStack*, %struct.PStack** %7, align 8
  %266 = getelementptr inbounds %struct.PStack, %struct.PStack* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %266, i32 0, i32 3
  %268 = call i64 @test_and_clear_bit(i32 %264, i32* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %263
  %271 = load %struct.PStack*, %struct.PStack** %7, align 8
  %272 = load i32, i32* @RR, align 4
  %273 = load i32, i32* @RSP, align 4
  %274 = call i32 @enquiry_cr(%struct.PStack* %271, i32 %272, i32 %273, i32 0)
  br label %275

275:                                              ; preds = %237, %270, %263
  ret void
}

declare dso_local i32 @l2addrsize(%struct.Layer2*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @enquiry_response(%struct.PStack*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2headersize(%struct.Layer2*, i32) #1

declare dso_local i32 @enquiry_cr(%struct.PStack*, i32, i32, i32) #1

declare dso_local i64 @legalnr(%struct.PStack*, i32) #1

declare dso_local i32 @stop_t200(%struct.PStack*, i32) #1

declare dso_local i32 @FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @restart_t200(%struct.PStack*, i32) #1

declare dso_local i32 @setva(%struct.PStack*, i32) #1

declare dso_local i32 @nrerrorrecovery(%struct.FsmInst*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

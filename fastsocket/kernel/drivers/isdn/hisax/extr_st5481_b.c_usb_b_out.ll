; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_b.c_usb_b_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_b.c_usb_b_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_bcs = type { i32, i64, %struct.st5481_adapter*, %struct.st5481_b_out }
%struct.st5481_adapter = type { i32 }
%struct.st5481_b_out = type { i32, i32, %struct.sk_buff*, %struct.urb**, i32 }
%struct.sk_buff = type { i32, i8*, i64 }
%struct.urb = type { i8*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"ep %d urb %d busy\00", align 1
@OUT_DOWN = common dso_local global i32 0, align 4
@OUT_UNDERRUN = common dso_local global i32 0, align 4
@NUM_ISO_PACKETS_B = common dso_local global i32 0, align 4
@SIZE_ISO_PACKETS_B_OUT = common dso_local global i32 0, align 4
@B_FLOW_ADJUST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"B%d,adjust flow,add %d bytes\00", align 1
@OUT_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"B%d,adjust flow,remove %d bytes\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"B%d,len=%d\00", align 1
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@PH_DATA = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st5481_bcs*, i32)* @usb_b_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_b_out(%struct.st5481_bcs* %0, i32 %1) #0 {
  %3 = alloca %struct.st5481_bcs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st5481_b_out*, align 8
  %6 = alloca %struct.st5481_adapter*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.st5481_bcs* %0, %struct.st5481_bcs** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %19 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %18, i32 0, i32 3
  store %struct.st5481_b_out* %19, %struct.st5481_b_out** %5, align 8
  %20 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %21 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %20, i32 0, i32 2
  %22 = load %struct.st5481_adapter*, %struct.st5481_adapter** %21, align 8
  store %struct.st5481_adapter* %22, %struct.st5481_adapter** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %25 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %24, i32 0, i32 4
  %26 = call i64 @test_and_set_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %30 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = mul nsw i32 %32, 2
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @DBG(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %294

36:                                               ; preds = %2
  %37 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %38 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %37, i32 0, i32 3
  %39 = load %struct.urb**, %struct.urb*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.urb*, %struct.urb** %39, i64 %41
  %43 = load %struct.urb*, %struct.urb** %42, align 8
  store %struct.urb* %43, %struct.urb** %7, align 8
  %44 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %45 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @OUT_DOWN, align 4
  %48 = load i32, i32* @OUT_UNDERRUN, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %36
  %53 = load i32, i32* @NUM_ISO_PACKETS_B, align 4
  %54 = load i32, i32* @SIZE_ISO_PACKETS_B_OUT, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* @B_FLOW_ADJUST, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @SIZE_ISO_PACKETS_B_OUT, align 4
  %59 = load i32, i32* @B_FLOW_ADJUST, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %62 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* @B_FLOW_ADJUST, align 4
  %66 = call i32 @DBG(i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  br label %94

67:                                               ; preds = %36
  %68 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %69 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @OUT_UP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load i32, i32* @NUM_ISO_PACKETS_B, align 4
  %76 = load i32, i32* @SIZE_ISO_PACKETS_B_OUT, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* @B_FLOW_ADJUST, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* @SIZE_ISO_PACKETS_B_OUT, align 4
  %81 = load i32, i32* @B_FLOW_ADJUST, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %8, align 4
  %83 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %84 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* @B_FLOW_ADJUST, align 4
  %88 = call i32 @DBG(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  br label %93

89:                                               ; preds = %67
  %90 = load i32, i32* @NUM_ISO_PACKETS_B, align 4
  %91 = load i32, i32* @SIZE_ISO_PACKETS_B_OUT, align 4
  %92 = mul nsw i32 %90, %91
  store i32 %92, i32* %11, align 4
  store i32 8, i32* %8, align 4
  br label %93

93:                                               ; preds = %89, %74
  br label %94

94:                                               ; preds = %93, %52
  %95 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %96 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %247, %94
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %248

101:                                              ; preds = %97
  %102 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %103 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %102, i32 0, i32 2
  %104 = load %struct.sk_buff*, %struct.sk_buff** %103, align 8
  store %struct.sk_buff* %104, %struct.sk_buff** %14, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %106, label %211

106:                                              ; preds = %101
  %107 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %108 = call i32 @DBG_SKB(i32 256, %struct.sk_buff* %107)
  %109 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %110 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  %113 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @DBG(i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %115)
  %117 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %118 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @L1_MODE_TRANS, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %165

122:                                              ; preds = %106
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %10, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %12, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %122
  %132 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %131, %122
  %136 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %15, align 8
  %139 = load %struct.urb*, %struct.urb** %7, align 8
  %140 = getelementptr inbounds %struct.urb, %struct.urb* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8* %144, i8** %16, align 8
  store i32 0, i32* %17, align 4
  br label %145

145:                                              ; preds = %158, %135
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load i8*, i8** %15, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %15, align 8
  %152 = load i8, i8* %150, align 1
  %153 = zext i8 %152 to i32
  %154 = call i32 @bitrev8(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = load i8*, i8** %16, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %16, align 8
  store i8 %155, i8* %156, align 1
  br label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %17, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %17, align 4
  br label %145

161:                                              ; preds = %145
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %10, align 4
  br label %188

165:                                              ; preds = %106
  %166 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %167 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %166, i32 0, i32 1
  %168 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.urb*, %struct.urb** %7, align 8
  %175 = getelementptr inbounds %struct.urb, %struct.urb* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %10, align 4
  %182 = sub nsw i32 %180, %181
  %183 = call i64 @isdnhdlc_encode(i32* %167, i8* %170, i32 %173, i32* %12, i8* %179, i32 %182)
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %183
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %165, %161
  %189 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @skb_pull(%struct.sk_buff* %189, i32 %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %188
  %197 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %198 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %197, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %198, align 8
  %199 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %200 = load i32, i32* @PH_DATA, align 4
  %201 = load i32, i32* @CONFIRM, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i8*
  %207 = call i32 @B_L1L2(%struct.st5481_bcs* %199, i32 %202, i8* %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %209 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %208)
  br label %210

210:                                              ; preds = %196, %188
  br label %247

211:                                              ; preds = %101
  %212 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %213 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @L1_MODE_TRANS, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %211
  %218 = load %struct.urb*, %struct.urb** %7, align 8
  %219 = getelementptr inbounds %struct.urb, %struct.urb* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %10, align 4
  %226 = sub nsw i32 %224, %225
  %227 = call i32 @memset(i8* %223, i32 255, i32 %226)
  %228 = load i32, i32* %11, align 4
  store i32 %228, i32* %10, align 4
  br label %246

229:                                              ; preds = %211
  %230 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %231 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %230, i32 0, i32 1
  %232 = load %struct.urb*, %struct.urb** %7, align 8
  %233 = getelementptr inbounds %struct.urb, %struct.urb* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* %10, align 4
  %240 = sub nsw i32 %238, %239
  %241 = call i64 @isdnhdlc_encode(i32* %231, i8* null, i32 0, i32* %12, i8* %237, i32 %240)
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %243, %241
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %10, align 4
  br label %246

246:                                              ; preds = %229, %217
  br label %247

247:                                              ; preds = %246, %210
  br label %97

248:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %249

249:                                              ; preds = %274, %248
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %253, label %277

253:                                              ; preds = %249
  %254 = load i32, i32* %9, align 4
  %255 = load %struct.urb*, %struct.urb** %7, align 8
  %256 = getelementptr inbounds %struct.urb, %struct.urb* %255, i32 0, i32 4
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %256, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  store i32 %254, i32* %261, align 4
  %262 = load i32, i32* %8, align 4
  %263 = load %struct.urb*, %struct.urb** %7, align 8
  %264 = getelementptr inbounds %struct.urb, %struct.urb* %263, i32 0, i32 4
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 1
  store i32 %262, i32* %269, align 4
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* %9, align 4
  %272 = add i32 %271, %270
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* @SIZE_ISO_PACKETS_B_OUT, align 4
  store i32 %273, i32* %8, align 4
  br label %274

274:                                              ; preds = %253
  %275 = load i32, i32* %13, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %13, align 4
  br label %249

277:                                              ; preds = %249
  %278 = load i32, i32* %10, align 4
  %279 = load %struct.urb*, %struct.urb** %7, align 8
  %280 = getelementptr inbounds %struct.urb, %struct.urb* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %13, align 4
  %282 = load %struct.urb*, %struct.urb** %7, align 8
  %283 = getelementptr inbounds %struct.urb, %struct.urb* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 4
  %284 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %285 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.urb*, %struct.urb** %7, align 8
  %288 = getelementptr inbounds %struct.urb, %struct.urb* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 8
  %289 = load %struct.urb*, %struct.urb** %7, align 8
  %290 = call i32 @DBG_ISO_PACKET(i32 512, %struct.urb* %289)
  %291 = load %struct.urb*, %struct.urb** %7, align 8
  %292 = load i32, i32* @GFP_NOIO, align 4
  %293 = call i32 @SUBMIT_URB(%struct.urb* %291, i32 %292)
  br label %294

294:                                              ; preds = %277, %28
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @DBG(i32, i8*, i32, i32) #1

declare dso_local i32 @DBG_SKB(i32, %struct.sk_buff*) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i64 @isdnhdlc_encode(i32*, i8*, i32, i32*, i8*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @B_L1L2(%struct.st5481_bcs*, i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @DBG_ISO_PACKET(i32, %struct.urb*) #1

declare dso_local i32 @SUBMIT_URB(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

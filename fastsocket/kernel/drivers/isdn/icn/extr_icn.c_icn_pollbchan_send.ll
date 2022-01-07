; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/icn/extr_icn.c_icn_pollbchan_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/icn/extr_icn.c_icn_pollbchan_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, i64*, %struct.sk_buff**, %struct.TYPE_10__, i32, i64*, i32*, i64 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@sbfree = common dso_local global i64 0, align 8
@ICN_FRAGSIZE = common dso_local global i32 0, align 4
@sbuf_f = common dso_local global i32 0, align 4
@sbuf_l = common dso_local global i32 0, align 4
@sbuf_d = common dso_local global i32 0, align 4
@sbnext = common dso_local global i32 0, align 4
@ISDN_STAT_BSENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*)* @icn_pollbchan_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icn_pollbchan_send(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 2, i32 0
  %17 = add nsw i32 %10, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 6
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load %struct.sk_buff**, %struct.sk_buff*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %29, i64 %31
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %26
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @skb_queue_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %302

45:                                               ; preds = %35, %26, %2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @icn_trymaplock_channel(%struct.TYPE_12__* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %302

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %296, %50
  %52 = load i64, i64* @sbfree, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 6
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 7
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @skb_queue_empty(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load %struct.sk_buff**, %struct.sk_buff*** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %75, i64 %77
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br label %81

81:                                               ; preds = %72, %63, %54
  %82 = phi i1 [ true, %63 ], [ true, %54 ], [ %80, %72 ]
  br label %83

83:                                               ; preds = %81, %51
  %84 = phi i1 [ false, %51 ], [ %82, %81 ]
  br i1 %84, label %85, label %297

85:                                               ; preds = %83
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %297

103:                                              ; preds = %85
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = load %struct.sk_buff**, %struct.sk_buff*** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %118, i64 %120
  %122 = load %struct.sk_buff*, %struct.sk_buff** %121, align 8
  store %struct.sk_buff* %122, %struct.sk_buff** %8, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = icmp ne %struct.sk_buff* %123, null
  br i1 %124, label %159, label %125

125:                                              ; preds = %103
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 7
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = call %struct.sk_buff* @skb_dequeue(i32* %131)
  store %struct.sk_buff* %132, %struct.sk_buff** %8, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = icmp ne %struct.sk_buff* %133, null
  br i1 %134, label %135, label %158

135:                                              ; preds = %125
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = call i64* @skb_pull(%struct.sk_buff* %136, i32 1)
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %143, i32* %149, align 4
  br label %157

150:                                              ; preds = %135
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 0, i32* %156, align 4
  br label %157

157:                                              ; preds = %150, %140
  br label %158

158:                                              ; preds = %157, %125
  br label %159

159:                                              ; preds = %158, %103
  %160 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %161 = icmp ne %struct.sk_buff* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  br label %297

163:                                              ; preds = %159
  %164 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @ICN_FRAGSIZE, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = call i32 @writeb(i32 255, i32* @sbuf_f)
  %171 = load i32, i32* @ICN_FRAGSIZE, align 4
  store i32 %171, i32* %6, align 4
  br label %177

172:                                              ; preds = %163
  %173 = call i32 @writeb(i32 0, i32* @sbuf_f)
  %174 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %172, %169
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @writeb(i32 %178, i32* @sbuf_l)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @memcpy_toio(i32* @sbuf_d, i32 %182, i32 %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i64* @skb_pull(%struct.sk_buff* %185, i32 %186)
  %188 = load i32, i32* @sbnext, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %190 = load i32, i32* %5, align 4
  %191 = and i32 %190, 2
  %192 = call i32 @icn_maprelease_channel(%struct.TYPE_12__* %189, i32 %191)
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i64, i64* %7, align 8
  %196 = call i32 @spin_lock_irqsave(i32* %194, i64 %195)
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 6
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %205, %198
  store i64 %206, i64* %204, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %272, label %211

211:                                              ; preds = %177
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 3
  %214 = load %struct.sk_buff**, %struct.sk_buff*** %213, align 8
  %215 = load i32, i32* %3, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %214, i64 %216
  %218 = load %struct.sk_buff*, %struct.sk_buff** %217, align 8
  %219 = icmp ne %struct.sk_buff* %218, null
  br i1 %219, label %220, label %227

220:                                              ; preds = %211
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 3
  %223 = load %struct.sk_buff**, %struct.sk_buff*** %222, align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %223, i64 %225
  store %struct.sk_buff* null, %struct.sk_buff** %226, align 8
  br label %227

227:                                              ; preds = %220, %211
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  %230 = load i64*, i64** %229, align 8
  %231 = load i32, i32* %3, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  store i64 0, i64* %233, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  %236 = load i64, i64* %7, align 8
  %237 = call i32 @spin_unlock_irqrestore(i32* %235, i64 %236)
  %238 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %239 = call i32 @dev_kfree_skb(%struct.sk_buff* %238)
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %271

248:                                              ; preds = %227
  %249 = load i32, i32* @ISDN_STAT_BSENT, align 4
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  store i32 %249, i32* %250, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  store i32 %253, i32* %254, align 4
  %255 = load i32, i32* %3, align 4
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 %255, i32* %256, align 4
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %3, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 4
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %268, align 8
  %270 = call i32 %269(%struct.TYPE_11__* %9)
  br label %271

271:                                              ; preds = %248, %227
  br label %290

272:                                              ; preds = %177
  %273 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 3
  %276 = load %struct.sk_buff**, %struct.sk_buff*** %275, align 8
  %277 = load i32, i32* %3, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %276, i64 %278
  store %struct.sk_buff* %273, %struct.sk_buff** %279, align 8
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 2
  %282 = load i64*, i64** %281, align 8
  %283 = load i32, i32* %3, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  store i64 0, i64* %285, align 8
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 1
  %288 = load i64, i64* %7, align 8
  %289 = call i32 @spin_unlock_irqrestore(i32* %287, i64 %288)
  br label %290

290:                                              ; preds = %272, %271
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %292 = load i32, i32* %5, align 4
  %293 = call i64 @icn_trymaplock_channel(%struct.TYPE_12__* %291, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %290
  br label %297

296:                                              ; preds = %290
  br label %51

297:                                              ; preds = %295, %162, %98, %83
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %299 = load i32, i32* %5, align 4
  %300 = and i32 %299, 2
  %301 = call i32 @icn_maprelease_channel(%struct.TYPE_12__* %298, i32 %300)
  br label %302

302:                                              ; preds = %44, %297, %45
  ret void
}

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @icn_trymaplock_channel(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @memcpy_toio(i32*, i32, i32) #1

declare dso_local i32 @icn_maprelease_channel(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

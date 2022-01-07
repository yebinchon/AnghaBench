; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_boomerang_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_boomerang_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i16, i32, i32, i32, i32, i32, i32 }
%struct.corkscrew_private = type { i32, i64, %struct.TYPE_4__*, %struct.sk_buff** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, %struct.net_device*, i32, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@corkscrew_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"   In boomerang_rx(), status %4.4x, rx_status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@RxStatus = common dso_local global i64 0, align 8
@RxDComplete = common dso_local global i32 0, align 4
@RxDError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c" Rx error: status %2.2x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Receiving packet size %d status %4.4x.\0A\00", align 1
@rx_copybreak = common dso_local global i16 0, align 2
@rx_copy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"%s: Warning -- the skbuff addresses do not match in boomerang_rx: %p vs. %p / %p.\0A\00", align 1
@rx_nocopy = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @boomerang_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boomerang_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.corkscrew_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.corkscrew_private* @netdev_priv(%struct.net_device* %12)
  store %struct.corkscrew_private* %13, %struct.corkscrew_private** %3, align 8
  %14 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %15 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RX_RING_SIZE, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @corkscrew_debug, align 4
  %23 = icmp sgt i32 %22, 5
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @EL3_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inw(i64 %28)
  %30 = trunc i32 %29 to i16
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @RxStatus, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inw(i64 %34)
  %36 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i16 signext %30, i32 %35)
  br label %37

37:                                               ; preds = %24, %1
  br label %38

38:                                               ; preds = %239, %37
  %39 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %40 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @RxDComplete, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %246

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RxDError, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %126

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 16
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %7, align 1
  %59 = load i32, i32* @corkscrew_debug, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i8, i8* %7, align 1
  %63 = zext i8 %62 to i16
  %64 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i16 signext %63)
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %65
  %82 = load i8, i8* %7, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i8, i8* %7, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i8, i8* %7, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i8, i8* %7, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 16
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %114
  br label %239

126:                                              ; preds = %50
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, 8191
  %129 = trunc i32 %128 to i16
  store i16 %129, i16* %8, align 2
  %130 = load i16, i16* %8, align 2
  %131 = sext i16 %130 to i32
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i16, i16* %134, align 4
  %136 = sext i16 %135 to i32
  %137 = add nsw i32 %136, %131
  %138 = trunc i32 %137 to i16
  store i16 %138, i16* %134, align 4
  %139 = load i32, i32* @corkscrew_debug, align 4
  %140 = icmp sgt i32 %139, 4
  br i1 %140, label %141, label %145

141:                                              ; preds = %126
  %142 = load i16, i16* %8, align 2
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i16 signext %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %126
  %146 = load i16, i16* %8, align 2
  %147 = sext i16 %146 to i32
  %148 = load i16, i16* @rx_copybreak, align 2
  %149 = sext i16 %148 to i32
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %145
  %152 = load i16, i16* %8, align 2
  %153 = sext i16 %152 to i32
  %154 = add nsw i32 %153, 4
  %155 = trunc i32 %154 to i16
  %156 = call %struct.sk_buff* @dev_alloc_skb(i16 signext %155)
  store %struct.sk_buff* %156, %struct.sk_buff** %9, align 8
  %157 = icmp ne %struct.sk_buff* %156, null
  br i1 %157, label %158, label %177

158:                                              ; preds = %151
  %159 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %160 = call i32 @skb_reserve(%struct.sk_buff* %159, i32 2)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %162 = load i16, i16* %8, align 2
  %163 = call i8* @skb_put(%struct.sk_buff* %161, i16 signext %162)
  %164 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %165 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %164, i32 0, i32 2
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @isa_bus_to_virt(i32 %171)
  %173 = load i16, i16* %8, align 2
  %174 = call i32 @memcpy(i8* %163, i8* %172, i16 signext %173)
  %175 = load i32, i32* @rx_copy, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* @rx_copy, align 4
  br label %226

177:                                              ; preds = %151, %145
  %178 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %179 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %178, i32 0, i32 3
  %180 = load %struct.sk_buff**, %struct.sk_buff*** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %180, i64 %182
  %184 = load %struct.sk_buff*, %struct.sk_buff** %183, align 8
  store %struct.sk_buff* %184, %struct.sk_buff** %9, align 8
  %185 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %186 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %185, i32 0, i32 3
  %187 = load %struct.sk_buff**, %struct.sk_buff*** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %187, i64 %189
  store %struct.sk_buff* null, %struct.sk_buff** %190, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %192 = load i16, i16* %8, align 2
  %193 = call i8* @skb_put(%struct.sk_buff* %191, i16 signext %192)
  store i8* %193, i8** %10, align 8
  %194 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %195 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %194, i32 0, i32 2
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @isa_bus_to_virt(i32 %201)
  %203 = load i8*, i8** %10, align 8
  %204 = icmp ne i8* %202, %203
  br i1 %204, label %205, label %223

205:                                              ; preds = %177
  %206 = load %struct.net_device*, %struct.net_device** %2, align 8
  %207 = getelementptr inbounds %struct.net_device, %struct.net_device* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %210 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %209, i32 0, i32 2
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @isa_bus_to_virt(i32 %216)
  %218 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load i8*, i8** %10, align 8
  %222 = call i32 @pr_warning(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %208, i8* %217, i32 %220, i8* %221)
  br label %223

223:                                              ; preds = %205, %177
  %224 = load i32, i32* @rx_nocopy, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* @rx_nocopy, align 4
  br label %226

226:                                              ; preds = %223, %158
  %227 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %228 = load %struct.net_device*, %struct.net_device** %2, align 8
  %229 = call i32 @eth_type_trans(%struct.sk_buff* %227, %struct.net_device* %228)
  %230 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %233 = call i32 @netif_rx(%struct.sk_buff* %232)
  %234 = load %struct.net_device*, %struct.net_device** %2, align 8
  %235 = getelementptr inbounds %struct.net_device, %struct.net_device* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %226, %125
  %240 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %241 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 8
  %244 = load i32, i32* @RX_RING_SIZE, align 4
  %245 = srem i32 %243, %244
  store i32 %245, i32* %4, align 4
  br label %38

246:                                              ; preds = %38
  br label %247

247:                                              ; preds = %311, %246
  %248 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %249 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %253 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = sub nsw i64 %251, %254
  %256 = icmp sgt i64 %255, 0
  br i1 %256, label %257, label %316

257:                                              ; preds = %247
  %258 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %259 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* @RX_RING_SIZE, align 4
  %262 = sext i32 %261 to i64
  %263 = srem i64 %260, %262
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %4, align 4
  %265 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %266 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %265, i32 0, i32 3
  %267 = load %struct.sk_buff**, %struct.sk_buff*** %266, align 8
  %268 = load i32, i32* %4, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %267, i64 %269
  %271 = load %struct.sk_buff*, %struct.sk_buff** %270, align 8
  %272 = icmp eq %struct.sk_buff* %271, null
  br i1 %272, label %273, label %303

273:                                              ; preds = %257
  %274 = load i16, i16* @PKT_BUF_SZ, align 2
  %275 = call %struct.sk_buff* @dev_alloc_skb(i16 signext %274)
  store %struct.sk_buff* %275, %struct.sk_buff** %11, align 8
  %276 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %277 = icmp eq %struct.sk_buff* %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  br label %316

279:                                              ; preds = %273
  %280 = load %struct.net_device*, %struct.net_device** %2, align 8
  %281 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %282 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %281, i32 0, i32 1
  store %struct.net_device* %280, %struct.net_device** %282, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %284 = call i32 @skb_reserve(%struct.sk_buff* %283, i32 2)
  %285 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %286 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @isa_virt_to_bus(i32 %287)
  %289 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %290 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %289, i32 0, i32 2
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %290, align 8
  %292 = load i32, i32* %4, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 1
  store i32 %288, i32* %295, align 4
  %296 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %297 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %298 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %297, i32 0, i32 3
  %299 = load %struct.sk_buff**, %struct.sk_buff*** %298, align 8
  %300 = load i32, i32* %4, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %299, i64 %301
  store %struct.sk_buff* %296, %struct.sk_buff** %302, align 8
  br label %303

303:                                              ; preds = %279, %257
  %304 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %305 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %304, i32 0, i32 2
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %305, align 8
  %307 = load i32, i32* %4, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  store i32 0, i32* %310, align 4
  br label %311

311:                                              ; preds = %303
  %312 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %313 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %314, 1
  store i64 %315, i64* %313, align 8
  br label %247

316:                                              ; preds = %278, %247
  ret i32 0
}

declare dso_local %struct.corkscrew_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i16 signext, ...) #1

declare dso_local i32 @inw(i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i16 signext) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i8* @isa_bus_to_virt(i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @isa_virt_to_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

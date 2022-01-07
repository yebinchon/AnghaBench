; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_sge_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_sge_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.adapter = type { i64, i32, %struct.sge* }
%struct.sge = type { i64, %struct.TYPE_3__, i32, %struct.cmdQ* }
%struct.TYPE_3__ = type { i32* }
%struct.cmdQ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NETDEV_TX_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Tx ring full while queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@F_CMDQ1_ENABLE = common dso_local global i32 0, align 4
@CMDQ_STAT_LAST_PKT_DB = common dso_local global i32 0, align 4
@CMDQ_STAT_RUNNING = common dso_local global i32 0, align 4
@F_CMDQ0_ENABLE = common dso_local global i32 0, align 4
@A_SG_DOORBELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.adapter*, i32, %struct.net_device*)* @t1_sge_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t1_sge_tx(%struct.sk_buff* %0, %struct.adapter* %1, i32 %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sge*, align 8
  %11 = alloca %struct.cmdQ*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.adapter* %1, %struct.adapter** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %17 = load %struct.adapter*, %struct.adapter** %7, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  %19 = load %struct.sge*, %struct.sge** %18, align 8
  store %struct.sge* %19, %struct.sge** %10, align 8
  %20 = load %struct.sge*, %struct.sge** %10, align 8
  %21 = getelementptr inbounds %struct.sge, %struct.sge* %20, i32 0, i32 3
  %22 = load %struct.cmdQ*, %struct.cmdQ** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %22, i64 %24
  store %struct.cmdQ* %25, %struct.cmdQ** %11, align 8
  store i32 0, i32* %16, align 4
  %26 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %27 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %26, i32 0, i32 5
  %28 = call i64 @spin_trylock(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @NETDEV_TX_LOCKED, align 4
  store i32 %31, i32* %5, align 4
  br label %254

32:                                               ; preds = %4
  %33 = load %struct.sge*, %struct.sge** %10, align 8
  %34 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %35 = call i32 @reclaim_completed_tx(%struct.sge* %33, %struct.cmdQ* %34)
  %36 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %37 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %40 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %43 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %41, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 1, %49
  store i32 %50, i32* %15, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i64 @compute_large_page_tx_descs(%struct.sk_buff* %51)
  %53 = load i32, i32* %15, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ult i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %32
  %64 = load %struct.net_device*, %struct.net_device** %9, align 8
  %65 = call i32 @netif_queue_stopped(%struct.net_device* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %63
  %68 = load %struct.net_device*, %struct.net_device** %9, align 8
  %69 = call i32 @netif_stop_queue(%struct.net_device* %68)
  %70 = load %struct.net_device*, %struct.net_device** %9, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sge*, %struct.sge** %10, align 8
  %74 = getelementptr inbounds %struct.sge, %struct.sge* %73, i32 0, i32 2
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.sge*, %struct.sge** %10, align 8
  %77 = getelementptr inbounds %struct.sge, %struct.sge* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.adapter*, %struct.adapter** %7, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @CH_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %67, %63
  %88 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %89 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %88, i32 0, i32 5
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %91, i32* %5, align 4
  br label %254

92:                                               ; preds = %32
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %15, align 4
  %95 = sub i32 %93, %94
  %96 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %97 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ult i32 %95, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %92
  %104 = load %struct.net_device*, %struct.net_device** %9, align 8
  %105 = call i32 @netif_stop_queue(%struct.net_device* %104)
  %106 = load %struct.net_device*, %struct.net_device** %9, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sge*, %struct.sge** %10, align 8
  %110 = getelementptr inbounds %struct.sge, %struct.sge* %109, i32 0, i32 2
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  %112 = load %struct.sge*, %struct.sge** %10, align 8
  %113 = getelementptr inbounds %struct.sge, %struct.sge* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %103, %92
  %120 = load %struct.sge*, %struct.sge** %10, align 8
  %121 = getelementptr inbounds %struct.sge, %struct.sge* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %160

124:                                              ; preds = %119
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %160, label %127

127:                                              ; preds = %124
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %243, %132
  store i32 1, i32* %16, align 4
  %134 = load %struct.sge*, %struct.sge** %10, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call %struct.sk_buff* @sched_skb(%struct.sge* %134, %struct.sk_buff* %135, i32 %136)
  store %struct.sk_buff* %137, %struct.sk_buff** %6, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = icmp ne %struct.sk_buff* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %133
  %141 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %142 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %141, i32 0, i32 5
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %144, i32* %5, align 4
  br label %254

145:                                              ; preds = %133
  %146 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %147 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %13, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %149)
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 1, %152
  store i32 %153, i32* %15, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = call i64 @compute_large_page_tx_descs(%struct.sk_buff* %154)
  %156 = load i32, i32* %15, align 4
  %157 = zext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %145, %127, %124, %119
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %163 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = add i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %167 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %14, align 4
  %169 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %170 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %174 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %178 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %181 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp uge i32 %179, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %160
  %185 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %186 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %189 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = sub i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %193 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = xor i32 %194, 1
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %184, %160
  %197 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %198 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %197, i32 0, i32 5
  %199 = call i32 @spin_unlock(i32* %198)
  %200 = load %struct.adapter*, %struct.adapter** %7, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %205 = call i32 @write_tx_descs(%struct.adapter* %200, %struct.sk_buff* %201, i32 %202, i32 %203, %struct.cmdQ* %204)
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %196
  %209 = load %struct.adapter*, %struct.adapter** %7, align 8
  %210 = load i32, i32* @F_CMDQ1_ENABLE, align 4
  %211 = call i32 @doorbell_pio(%struct.adapter* %209, i32 %210)
  br label %235

212:                                              ; preds = %196
  %213 = load i32, i32* @CMDQ_STAT_LAST_PKT_DB, align 4
  %214 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %215 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %214, i32 0, i32 6
  %216 = call i32 @clear_bit(i32 %213, i32* %215)
  %217 = load i32, i32* @CMDQ_STAT_RUNNING, align 4
  %218 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %219 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %218, i32 0, i32 6
  %220 = call i64 @test_and_set_bit(i32 %217, i32* %219)
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %212
  %223 = load i32, i32* @CMDQ_STAT_LAST_PKT_DB, align 4
  %224 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %225 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %224, i32 0, i32 6
  %226 = call i32 @set_bit(i32 %223, i32* %225)
  %227 = load i32, i32* @F_CMDQ0_ENABLE, align 4
  %228 = load %struct.adapter*, %struct.adapter** %7, align 8
  %229 = getelementptr inbounds %struct.adapter, %struct.adapter* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @A_SG_DOORBELL, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @writel(i32 %227, i64 %232)
  br label %234

234:                                              ; preds = %222, %212
  br label %235

235:                                              ; preds = %234, %208
  %236 = load i32, i32* %16, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %252

238:                                              ; preds = %235
  %239 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %240 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %239, i32 0, i32 5
  %241 = call i64 @spin_trylock(i32* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %238
  %244 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %245 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %248 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = sub i32 %246, %249
  store i32 %250, i32* %12, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %133

251:                                              ; preds = %238
  br label %252

252:                                              ; preds = %251, %235
  %253 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %253, i32* %5, align 4
  br label %254

254:                                              ; preds = %252, %140, %87, %30
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

declare dso_local i64 @spin_trylock(i32*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.sge*, %struct.cmdQ*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @compute_large_page_tx_descs(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @CH_ERR(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sk_buff* @sched_skb(%struct.sge*, %struct.sk_buff*, i32) #1

declare dso_local i32 @write_tx_descs(%struct.adapter*, %struct.sk_buff*, i32, i32, %struct.cmdQ*) #1

declare dso_local i32 @doorbell_pio(%struct.adapter*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

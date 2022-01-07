; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fec_enet_private = type { i64, i64, i32, %struct.bufdesc*, %struct.bufdesc*, %struct.sk_buff**, %struct.bufdesc* }
%struct.sk_buff = type { i32 }
%struct.bufdesc = type { i16, i64 }

@BD_ENET_TX_READY = common dso_local global i16 0, align 2
@FEC_ENET_TX_FRSIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BD_ENET_TX_HB = common dso_local global i16 0, align 2
@BD_ENET_TX_LC = common dso_local global i16 0, align 2
@BD_ENET_TX_RL = common dso_local global i16 0, align 2
@BD_ENET_TX_UN = common dso_local global i16 0, align 2
@BD_ENET_TX_CSL = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [40 x i8] c"HEY! Enet xmit interrupt and TX_READY.\0A\00", align 1
@BD_ENET_TX_DEF = common dso_local global i16 0, align 2
@TX_RING_MOD_MASK = common dso_local global i32 0, align 4
@BD_ENET_TX_WRAP = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_enet_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca %struct.bufdesc*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %3, align 8
  %9 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %10 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %13 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %12, i32 0, i32 3
  %14 = load %struct.bufdesc*, %struct.bufdesc** %13, align 8
  store %struct.bufdesc* %14, %struct.bufdesc** %4, align 8
  br label %15

15:                                               ; preds = %219, %1
  %16 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %17 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 8
  store i16 %18, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @BD_ENET_TX_READY, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %220

24:                                               ; preds = %15
  %25 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %26 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %27 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %26, i32 0, i32 6
  %28 = load %struct.bufdesc*, %struct.bufdesc** %27, align 8
  %29 = icmp eq %struct.bufdesc* %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %32 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %220

36:                                               ; preds = %30, %24
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %40 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @FEC_ENET_TX_FRSIZE, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_unmap_single(i32* %38, i64 %41, i32 %42, i32 %43)
  %45 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %46 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %48 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %47, i32 0, i32 5
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %48, align 8
  %50 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %51 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %6, align 8
  %55 = load i16, i16* %5, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* @BD_ENET_TX_HB, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, i16* @BD_ENET_TX_LC, align 2
  %60 = zext i16 %59 to i32
  %61 = or i32 %58, %60
  %62 = load i16, i16* @BD_ENET_TX_RL, align 2
  %63 = zext i16 %62 to i32
  %64 = or i32 %61, %63
  %65 = load i16, i16* @BD_ENET_TX_UN, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %64, %66
  %68 = load i16, i16* @BD_ENET_TX_CSL, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %67, %69
  %71 = and i32 %56, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %144

73:                                               ; preds = %36
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i16, i16* %5, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* @BD_ENET_TX_HB, align 2
  %82 = zext i16 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %73
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %73
  %92 = load i16, i16* %5, align 2
  %93 = zext i16 %92 to i32
  %94 = load i16, i16* @BD_ENET_TX_LC, align 2
  %95 = zext i16 %94 to i32
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %91
  %105 = load i16, i16* %5, align 2
  %106 = zext i16 %105 to i32
  %107 = load i16, i16* @BD_ENET_TX_RL, align 2
  %108 = zext i16 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load %struct.net_device*, %struct.net_device** %2, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %104
  %118 = load i16, i16* %5, align 2
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* @BD_ENET_TX_UN, align 2
  %121 = zext i16 %120 to i32
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %117
  %131 = load i16, i16* %5, align 2
  %132 = zext i16 %131 to i32
  %133 = load i16, i16* @BD_ENET_TX_CSL, align 2
  %134 = zext i16 %133 to i32
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %130
  br label %150

144:                                              ; preds = %36
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %143
  %151 = load i16, i16* %5, align 2
  %152 = zext i16 %151 to i32
  %153 = load i16, i16* @BD_ENET_TX_READY, align 2
  %154 = zext i16 %153 to i32
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %150
  %160 = load i16, i16* %5, align 2
  %161 = zext i16 %160 to i32
  %162 = load i16, i16* @BD_ENET_TX_DEF, align 2
  %163 = zext i16 %162 to i32
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load %struct.net_device*, %struct.net_device** %2, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %159
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %173)
  %175 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %176 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %175, i32 0, i32 5
  %177 = load %struct.sk_buff**, %struct.sk_buff*** %176, align 8
  %178 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %179 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %177, i64 %180
  store %struct.sk_buff* null, %struct.sk_buff** %181, align 8
  %182 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %183 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %184, 1
  %186 = load i32, i32* @TX_RING_MOD_MASK, align 4
  %187 = sext i32 %186 to i64
  %188 = and i64 %185, %187
  %189 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %190 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  %191 = load i16, i16* %5, align 2
  %192 = zext i16 %191 to i32
  %193 = load i16, i16* @BD_ENET_TX_WRAP, align 2
  %194 = zext i16 %193 to i32
  %195 = and i32 %192, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %172
  %198 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %199 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %198, i32 0, i32 4
  %200 = load %struct.bufdesc*, %struct.bufdesc** %199, align 8
  store %struct.bufdesc* %200, %struct.bufdesc** %4, align 8
  br label %204

201:                                              ; preds = %172
  %202 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %203 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %202, i32 1
  store %struct.bufdesc* %203, %struct.bufdesc** %4, align 8
  br label %204

204:                                              ; preds = %201, %197
  %205 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %206 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %204
  %210 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %211 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %210, i32 0, i32 0
  store i64 0, i64* %211, align 8
  %212 = load %struct.net_device*, %struct.net_device** %2, align 8
  %213 = call i64 @netif_queue_stopped(%struct.net_device* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load %struct.net_device*, %struct.net_device** %2, align 8
  %217 = call i32 @netif_wake_queue(%struct.net_device* %216)
  br label %218

218:                                              ; preds = %215, %209
  br label %219

219:                                              ; preds = %218, %204
  br label %15

220:                                              ; preds = %35, %15
  %221 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %222 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %223 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %222, i32 0, i32 3
  store %struct.bufdesc* %221, %struct.bufdesc** %223, align 8
  %224 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %225 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %224, i32 0, i32 2
  %226 = call i32 @spin_unlock(i32* %225)
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

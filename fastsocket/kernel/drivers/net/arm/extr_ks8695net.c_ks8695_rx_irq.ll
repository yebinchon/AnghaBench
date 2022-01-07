; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_rx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ks8695_priv = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@RDES_OWN = common dso_local global i32 0, align 4
@RDES_FS = common dso_local global i32 0, align 4
@RDES_LS = common dso_local global i32 0, align 4
@RDES_ES = common dso_local global i32 0, align 4
@RDES_RE = common dso_local global i32 0, align 4
@RDES_TL = common dso_local global i32 0, align 4
@RDES_RF = common dso_local global i32 0, align 4
@RDES_CE = common dso_local global i32 0, align 4
@RDES_FLEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MAX_RX_DESC_MASK = common dso_local global i32 0, align 4
@KS8695_DRSC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ks8695_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695_rx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ks8695_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.ks8695_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.ks8695_priv* %15, %struct.ks8695_priv** %6, align 8
  store i32 -1, i32* %11, align 4
  %16 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %17 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %208, %2
  %20 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %21 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %202

29:                                               ; preds = %19
  %30 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RDES_OWN, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %202, label %42

42:                                               ; preds = %29
  %43 = call i32 (...) @rmb()
  %44 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %45 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le32_to_cpu(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @RDES_FS, align 4
  %55 = load i32, i32* @RDES_LS, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = load i32, i32* @RDES_FS, align 4
  %59 = load i32, i32* @RDES_LS, align 4
  %60 = or i32 %58, %59
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  br label %190

63:                                               ; preds = %42
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @RDES_ES, align 4
  %66 = load i32, i32* @RDES_RE, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %120

70:                                               ; preds = %63
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @RDES_TL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %70
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @RDES_RF, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @RDES_CE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @RDES_RE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.net_device*, %struct.net_device** %5, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %108
  br label %190

120:                                              ; preds = %63
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @RDES_FLEN, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = sub nsw i32 %124, 4
  store i32 %125, i32* %10, align 4
  %126 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %127 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load %struct.sk_buff*, %struct.sk_buff** %132, align 8
  store %struct.sk_buff* %133, %struct.sk_buff** %7, align 8
  %134 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %135 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %140, align 8
  %141 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %142 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  %148 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %149 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %152 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %151, i32 0, i32 2
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %160 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %168 = call i32 @dma_unmap_single(i32 %150, i32 %158, i32 %166, i32 %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @skb_put(%struct.sk_buff* %169, i32 %170)
  %172 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %173 = load %struct.net_device*, %struct.net_device** %5, align 8
  %174 = call i32 @eth_type_trans(%struct.sk_buff* %172, %struct.net_device* %173)
  %175 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  %177 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %178 = call i32 @netif_rx(%struct.sk_buff* %177)
  %179 = load %struct.net_device*, %struct.net_device** %5, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.net_device*, %struct.net_device** %5, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %184
  store i32 %189, i32* %187, align 4
  br label %200

190:                                              ; preds = %119, %62
  %191 = load i32, i32* @RDES_OWN, align 4
  %192 = call i32 @cpu_to_le32(i32 %191)
  %193 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %194 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %193, i32 0, i32 1
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  store i32 %192, i32* %199, align 8
  br label %200

200:                                              ; preds = %190, %120
  %201 = load i32, i32* %8, align 4
  store i32 %201, i32* %11, align 4
  br label %203

202:                                              ; preds = %29, %19
  br label %214

203:                                              ; preds = %200
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  %206 = load i32, i32* @MAX_RX_DESC_MASK, align 4
  %207 = and i32 %205, %206
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %203
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %211 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %209, %212
  br i1 %213, label %19, label %214

214:                                              ; preds = %208, %202
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, -1
  %217 = zext i1 %216 to i32
  %218 = call i64 @likely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %214
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  %223 = load i32, i32* @MAX_RX_DESC_MASK, align 4
  %224 = and i32 %222, %223
  %225 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %226 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %220, %214
  %228 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %229 = call i32 @ks8695_refill_rxbuffers(%struct.ks8695_priv* %228)
  %230 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %231 = load i32, i32* @KS8695_DRSC, align 4
  %232 = call i32 @ks8695_writereg(%struct.ks8695_priv* %230, i32 %231, i32 0)
  %233 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %233
}

declare dso_local %struct.ks8695_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ks8695_refill_rxbuffers(%struct.ks8695_priv*) #1

declare dso_local i32 @ks8695_writereg(%struct.ks8695_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

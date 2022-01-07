; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_pc300_drv.c_cpc_queue_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_pc300_drv.c_cpc_queue_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@ST3 = common dso_local global i32 0, align 4
@ST3_DCD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: DCD is OFF. Going administrative down.\0A\00", align 1
@CMD = common dso_local global i32 0, align 4
@CMD_TX_BUF_CLR = common dso_local global i32 0, align 4
@PC300_TE = common dso_local global i64 0, align 8
@CPLD_REG2_FALC_LED1 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EDAL = common dso_local global i32 0, align 4
@CMD_TX_ENA = common dso_local global i32 0, align 4
@DSR_DE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @cpc_queue_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpc_queue_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.TYPE_17__* @dev_to_hdlc(%struct.net_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %6, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %7, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %8, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @netif_carrier_ok(%struct.net_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @dev_kfree_skb(%struct.sk_buff* %31)
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %254

43:                                               ; preds = %2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @ST3, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @M_REG(i32 %48, i32 %49)
  %51 = add nsw i64 %47, %50
  %52 = call i32 @cpc_readb(i64 %51)
  %53 = load i32, i32* @ST3_DCD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %127

56:                                               ; preds = %43
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @dev_kfree_skb(%struct.sk_buff* %71)
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = call i32 @netif_carrier_off(%struct.net_device* %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @CPC_LOCK(%struct.TYPE_16__* %75, i64 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @CMD, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @M_REG(i32 %82, i32 %83)
  %85 = add nsw i64 %81, %84
  %86 = load i32, i32* @CMD_TX_BUF_CLR, align 4
  %87 = call i32 @cpc_writeb(i64 %85, i32 %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PC300_TE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %56
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %98, %102
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %107, %111
  %113 = call i32 @cpc_readb(i64 %112)
  %114 = load i32, i32* @CPLD_REG2_FALC_LED1, align 4
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 2, %115
  %117 = shl i32 %114, %116
  %118 = xor i32 %117, -1
  %119 = and i32 %113, %118
  %120 = call i32 @cpc_writeb(i64 %103, i32 %119)
  br label %121

121:                                              ; preds = %94, %56
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @CPC_UNLOCK(%struct.TYPE_16__* %122, i64 %123)
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = call i32 @netif_wake_queue(%struct.net_device* %125)
  store i32 0, i32* %3, align 4
  br label %254

127:                                              ; preds = %43
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @dma_buf_write(%struct.TYPE_16__* %129, i32 %130, i32* %133, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %128
  %140 = load %struct.net_device*, %struct.net_device** %5, align 8
  %141 = call i32 @netif_stop_queue(%struct.net_device* %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = call i32 @dev_kfree_skb(%struct.sk_buff* %142)
  %144 = load %struct.net_device*, %struct.net_device** %5, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load %struct.net_device*, %struct.net_device** %5, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  store i32 0, i32* %3, align 4
  br label %254

154:                                              ; preds = %128
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load %struct.net_device*, %struct.net_device** %5, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = call i32 @cpc_trace(%struct.net_device* %160, %struct.sk_buff* %161, i8 signext 84)
  br label %163

163:                                              ; preds = %159, %154
  %164 = load i32, i32* @jiffies, align 4
  %165 = load %struct.net_device*, %struct.net_device** %5, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @CPC_LOCK(%struct.TYPE_16__* %167, i64 %168)
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp sle i32 %177, 1
  br i1 %178, label %179, label %182

179:                                              ; preds = %163
  %180 = load %struct.net_device*, %struct.net_device** %5, align 8
  %181 = call i32 @netif_stop_queue(%struct.net_device* %180)
  br label %182

182:                                              ; preds = %179, %163
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* @EDAL, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i64 @DTX_REG(i32 %187, i32 %188)
  %190 = add nsw i64 %186, %189
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @TX_BD_ADDR(i32 %191, i32 %194)
  %196 = call i32 @cpc_writel(i64 %190, i32 %195)
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* @CMD, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i64 @M_REG(i32 %201, i32 %202)
  %204 = add nsw i64 %200, %203
  %205 = load i32, i32* @CMD_TX_ENA, align 4
  %206 = call i32 @cpc_writeb(i64 %204, i32 %205)
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = call i64 @DSR_TX(i32 %211)
  %213 = add nsw i64 %210, %212
  %214 = load i32, i32* @DSR_DE, align 4
  %215 = call i32 @cpc_writeb(i64 %213, i32 %214)
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @PC300_TE, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %248

222:                                              ; preds = %182
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %226, %230
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %235, %239
  %241 = call i32 @cpc_readb(i64 %240)
  %242 = load i32, i32* @CPLD_REG2_FALC_LED1, align 4
  %243 = load i32, i32* %9, align 4
  %244 = mul nsw i32 2, %243
  %245 = shl i32 %242, %244
  %246 = or i32 %241, %245
  %247 = call i32 @cpc_writeb(i64 %231, i32 %246)
  br label %248

248:                                              ; preds = %222, %182
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %250 = load i64, i64* %10, align 8
  %251 = call i32 @CPC_UNLOCK(%struct.TYPE_16__* %249, i64 %250)
  %252 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %253 = call i32 @dev_kfree_skb(%struct.sk_buff* %252)
  store i32 0, i32* %3, align 4
  br label %254

254:                                              ; preds = %248, %139, %121, %30
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local %struct.TYPE_17__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cpc_readb(i64) #1

declare dso_local i64 @M_REG(i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @CPC_LOCK(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @cpc_writeb(i64, i32) #1

declare dso_local i32 @CPC_UNLOCK(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @dma_buf_write(%struct.TYPE_16__*, i32, i32*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @cpc_trace(%struct.net_device*, %struct.sk_buff*, i8 signext) #1

declare dso_local i32 @cpc_writel(i64, i32) #1

declare dso_local i64 @DTX_REG(i32, i32) #1

declare dso_local i32 @TX_BD_ADDR(i32, i32) #1

declare dso_local i64 @DSR_TX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

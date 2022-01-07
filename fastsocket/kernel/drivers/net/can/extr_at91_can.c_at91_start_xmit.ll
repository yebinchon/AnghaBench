; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32, %struct.TYPE_2__, %struct.net_device_stats }
%struct.TYPE_2__ = type { i32 }
%struct.net_device_stats = type { i32 }
%struct.at91_priv = type { i32 }
%struct.can_frame = type { i32, i32, i64 }

@AT91_MSR_MRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"BUG! TX buffer full when queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@AT91_MID_MIDE = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@AT91_MCR_MRTR = common dso_local global i32 0, align 4
@AT91_MCR_MTCR = common dso_local global i32 0, align 4
@AT91_MB_MODE_DISABLED = common dso_local global i32 0, align 4
@AT91_MB_MODE_TX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@AT91_MB_TX_FIRST = common dso_local global i64 0, align 8
@AT91_NEXT_MASK = common dso_local global i32 0, align 4
@AT91_IER = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @at91_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.at91_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.at91_priv* %14, %struct.at91_priv** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 2
  store %struct.net_device_stats* %16, %struct.net_device_stats** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.can_frame*
  store %struct.can_frame* %20, %struct.can_frame** %8, align 8
  %21 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %22 = call i32 @get_tx_next_mb(%struct.at91_priv* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %24 = call i32 @get_tx_next_prio(%struct.at91_priv* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @AT91_MSR(i32 %26)
  %28 = call i32 @at91_read(%struct.at91_priv* %25, i32 %27)
  %29 = load i32, i32* @AT91_MSR_MRDY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @netif_stop_queue(%struct.net_device* %37)
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %44, i32* %3, align 4
  br label %171

45:                                               ; preds = %2
  %46 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %47 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CAN_EFF_FLAG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %54 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CAN_EFF_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @AT91_MID_MIDE, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %11, align 4
  br label %67

60:                                               ; preds = %45
  %61 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %62 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CAN_SFF_MASK, align 4
  %65 = and i32 %63, %64
  %66 = shl i32 %65, 18
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %60, %52
  %68 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %69 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CAN_RTR_FLAG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @AT91_MCR_MRTR, align 4
  br label %77

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %80 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 16
  %83 = or i32 %78, %82
  %84 = load i32, i32* @AT91_MCR_MTCR, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %12, align 4
  %86 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @AT91_MB_MODE_DISABLED, align 4
  %89 = call i32 @set_mb_mode(%struct.at91_priv* %86, i32 %87, i32 %88)
  %90 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @AT91_MID(i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @at91_write(%struct.at91_priv* %90, i32 %92, i32 %93)
  %95 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @AT91_MB_MODE_TX, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @set_mb_mode_prio(%struct.at91_priv* %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @AT91_MDL(i32 %101)
  %103 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %104 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 0
  %107 = inttoptr i64 %106 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @at91_write(%struct.at91_priv* %100, i32 %102, i32 %108)
  %110 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @AT91_MDH(i32 %111)
  %113 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %114 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 4
  %117 = inttoptr i64 %116 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @at91_write(%struct.at91_priv* %110, i32 %112, i32 %118)
  %120 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @AT91_MCR(i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @at91_write(%struct.at91_priv* %120, i32 %122, i32 %123)
  %125 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %126 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %129 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @jiffies, align 4
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = load i64, i64* @AT91_MB_TX_FIRST, align 8
  %140 = sub nsw i64 %138, %139
  %141 = call i32 @can_put_echo_skb(%struct.sk_buff* %135, %struct.net_device* %136, i64 %140)
  %142 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %143 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %147 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %148 = call i32 @get_tx_next_mb(%struct.at91_priv* %147)
  %149 = call i32 @AT91_MSR(i32 %148)
  %150 = call i32 @at91_read(%struct.at91_priv* %146, i32 %149)
  %151 = load i32, i32* @AT91_MSR_MRDY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %77
  %155 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %156 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AT91_NEXT_MASK, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154, %77
  %162 = load %struct.net_device*, %struct.net_device** %5, align 8
  %163 = call i32 @netif_stop_queue(%struct.net_device* %162)
  br label %164

164:                                              ; preds = %161, %154
  %165 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %166 = load i32, i32* @AT91_IER, align 4
  %167 = load i32, i32* %9, align 4
  %168 = shl i32 1, %167
  %169 = call i32 @at91_write(%struct.at91_priv* %165, i32 %166, i32 %168)
  %170 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %164, %36
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @get_tx_next_mb(%struct.at91_priv*) #1

declare dso_local i32 @get_tx_next_prio(%struct.at91_priv*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i32 @AT91_MSR(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @set_mb_mode(%struct.at91_priv*, i32, i32) #1

declare dso_local i32 @at91_write(%struct.at91_priv*, i32, i32) #1

declare dso_local i32 @AT91_MID(i32) #1

declare dso_local i32 @set_mb_mode_prio(%struct.at91_priv*, i32, i32, i32) #1

declare dso_local i32 @AT91_MDL(i32) #1

declare dso_local i32 @AT91_MDH(i32) #1

declare dso_local i32 @AT91_MCR(i32) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

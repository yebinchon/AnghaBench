; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_devinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_devinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.skge_hw = type { i64, i64, %struct.net_device**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.skge_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, %struct.skge_hw*, %struct.net_device*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"etherdev alloc failed\0A\00", align 1
@skge_netdev_ops = common dso_local global i32 0, align 4
@skge_ethtool_ops = common dso_local global i32 0, align 4
@TX_WATCHDOG = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@skge_poll = common dso_local global i32 0, align 4
@NAPI_WEIGHT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@default_msg = common dso_local global i32 0, align 4
@DEFAULT_TX_RING_SIZE = common dso_local global i32 0, align 4
@DEFAULT_RX_RING_SIZE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@FLOW_MODE_SYM_OR_REM = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@xm_link_timer = common dso_local global i32 0, align 4
@CHIP_ID_GENESIS = common dso_local global i64 0, align 8
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@B2_MAC_1 = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.skge_hw*, i32, i32)* @skge_devinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @skge_devinit(%struct.skge_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.skge_port*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.skge_hw* %0, %struct.skge_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call %struct.net_device* @alloc_etherdev(i32 72)
  store %struct.net_device* %10, %struct.net_device** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %9, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %15 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %173

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %22 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @SET_NETDEV_DEV(%struct.net_device* %20, i32* %24)
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 7
  store i32* @skge_netdev_ops, i32** %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %9, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 6
  store i32* @skge_ethtool_ops, i32** %29, align 8
  %30 = load i32, i32* @TX_WATCHDOG, align 4
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %34 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_device*, %struct.net_device** %9, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %19
  %43 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %19
  %49 = load %struct.net_device*, %struct.net_device** %9, align 8
  %50 = call %struct.skge_port* @netdev_priv(%struct.net_device* %49)
  store %struct.skge_port* %50, %struct.skge_port** %8, align 8
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %53 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %52, i32 0, i32 14
  %54 = load i32, i32* @skge_poll, align 4
  %55 = load i32, i32* @NAPI_WEIGHT, align 4
  %56 = call i32 @netif_napi_add(%struct.net_device* %51, i32* %53, i32 %54, i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %9, align 8
  %58 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %59 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %58, i32 0, i32 13
  store %struct.net_device* %57, %struct.net_device** %59, align 8
  %60 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %61 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %62 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %61, i32 0, i32 12
  store %struct.skge_hw* %60, %struct.skge_hw** %62, align 8
  %63 = load i32, i32* @debug, align 4
  %64 = load i32, i32* @default_msg, align 4
  %65 = call i32 @netif_msg_init(i32 %63, i32 %64)
  %66 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %67 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @DEFAULT_TX_RING_SIZE, align 4
  %69 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %70 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %69, i32 0, i32 10
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @DEFAULT_RX_RING_SIZE, align 4
  %73 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %74 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @AUTONEG_ENABLE, align 4
  %77 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %78 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @FLOW_MODE_SYM_OR_REM, align 4
  %80 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %81 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  %82 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %83 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %82, i32 0, i32 0
  store i32 -1, i32* %83, align 8
  %84 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %85 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %84, i32 0, i32 1
  store i32 -1, i32* %85, align 4
  %86 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %87 = call i32 @skge_supported_modes(%struct.skge_hw* %86)
  %88 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %89 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %91 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i64 @device_can_wakeup(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %48
  %97 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %98 = call i32 @wol_supported(%struct.skge_hw* %97)
  %99 = load i32, i32* @WAKE_MAGIC, align 4
  %100 = and i32 %98, %99
  %101 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %102 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %104 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %103, i32 0, i32 3
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %108 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @device_set_wakeup_enable(i32* %106, i32 %109)
  br label %111

111:                                              ; preds = %96, %48
  %112 = load %struct.net_device*, %struct.net_device** %9, align 8
  %113 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %114 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %113, i32 0, i32 2
  %115 = load %struct.net_device**, %struct.net_device*** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.net_device*, %struct.net_device** %115, i64 %117
  store %struct.net_device* %112, %struct.net_device** %118, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %121 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %123 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %122, i32 0, i32 5
  %124 = load i32, i32* @xm_link_timer, align 4
  %125 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %126 = ptrtoint %struct.skge_port* %125 to i64
  %127 = call i32 @setup_timer(i32* %123, i32 %124, i64 %126)
  %128 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %129 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CHIP_ID_GENESIS, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %111
  %134 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %135 = load i32, i32* @NETIF_F_SG, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.net_device*, %struct.net_device** %9, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %142 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %141, i32 0, i32 4
  store i32 1, i32* %142, align 8
  br label %143

143:                                              ; preds = %133, %111
  %144 = load %struct.net_device*, %struct.net_device** %9, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %148 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @B2_MAC_1, align 8
  %151 = add nsw i64 %149, %150
  %152 = load i32, i32* %6, align 4
  %153 = mul nsw i32 %152, 8
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %151, %154
  %156 = load i32, i32* @ETH_ALEN, align 4
  %157 = call i32 @memcpy_fromio(i32 %146, i64 %155, i32 %156)
  %158 = load %struct.net_device*, %struct.net_device** %9, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.net_device*, %struct.net_device** %9, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.net_device*, %struct.net_device** %9, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @memcpy(i32 %160, i32 %163, i32 %166)
  %168 = load %struct.net_device*, %struct.net_device** %9, align 8
  %169 = call i32 @netif_carrier_off(%struct.net_device* %168)
  %170 = load %struct.net_device*, %struct.net_device** %9, align 8
  %171 = call i32 @netif_stop_queue(%struct.net_device* %170)
  %172 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %172, %struct.net_device** %4, align 8
  br label %173

173:                                              ; preds = %143, %13
  %174 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %174
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @skge_supported_modes(%struct.skge_hw*) #1

declare dso_local i64 @device_can_wakeup(i32*) #1

declare dso_local i32 @wol_supported(%struct.skge_hw*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

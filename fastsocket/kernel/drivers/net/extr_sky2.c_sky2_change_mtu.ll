; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sky2_port = type { i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@ETH_JUMBO_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_FE = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_FE_P = common dso_local global i64 0, align 8
@B0_IMSK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@SKY2_HW_RAM_BUFFER = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@DATA_BLIND_DEF = common dso_local global i32 0, align 4
@GM_SMOD_VLAN_ENA = common dso_local global i32 0, align 4
@IPG_DATA_DEF = common dso_local global i32 0, align 4
@GM_SMOD_JUMBO_ENA = common dso_local global i32 0, align 4
@GM_SERIAL_MODE = common dso_local global i32 0, align 4
@rxqaddr = common dso_local global i32* null, align 8
@RB_CTRL = common dso_local global i32 0, align 4
@RB_ENA_OP_MD = common dso_local global i32 0, align 4
@B0_Y2_SP_LISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @sky2_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sky2_port*, align 8
  %7 = alloca %struct.sky2_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %13)
  store %struct.sky2_port* %14, %struct.sky2_port** %6, align 8
  %15 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %16 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %15, i32 0, i32 1
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %16, align 8
  store %struct.sky2_hw* %17, %struct.sky2_hw** %7, align 8
  %18 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %19 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ETH_ZLEN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ETH_JUMBO_MTU, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %168

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ETH_DATA_LEN, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %37 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CHIP_ID_YUKON_FE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %43 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %168

50:                                               ; preds = %41, %31
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @netif_running(%struct.net_device* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %168

58:                                               ; preds = %50
  %59 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %60 = load i32, i32* @B0_IMSK, align 4
  %61 = call i32 @sky2_read32(%struct.sky2_hw* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %63 = load i32, i32* @B0_IMSK, align 4
  %64 = call i32 @sky2_write32(%struct.sky2_hw* %62, i32 %63, i32 0)
  %65 = load i32, i32* @jiffies, align 4
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @netif_stop_queue(%struct.net_device* %68)
  %70 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %71 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %70, i32 0, i32 2
  %72 = call i32 @napi_disable(i32* %71)
  %73 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %74 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @synchronize_irq(i32 %77)
  %79 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %80 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SKY2_HW_RAM_BUFFER, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %58
  %86 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @sky2_set_tx_stfwd(%struct.sky2_hw* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %58
  %90 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @GM_GP_CTRL, align 4
  %93 = call i32 @gma_read16(%struct.sky2_hw* %90, i32 %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @GM_GP_CTRL, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = call i32 @gma_write16(%struct.sky2_hw* %94, i32 %95, i32 %96, i32 %100)
  %102 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %103 = call i32 @sky2_rx_stop(%struct.sky2_port* %102)
  %104 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %105 = call i32 @sky2_rx_clean(%struct.sky2_port* %104)
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @DATA_BLIND_DEF, align 4
  %110 = call i32 @DATA_BLIND_VAL(i32 %109)
  %111 = load i32, i32* @GM_SMOD_VLAN_ENA, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @IPG_DATA_DEF, align 4
  %114 = call i32 @IPG_DATA_VAL(i32 %113)
  %115 = or i32 %112, %114
  store i32 %115, i32* %11, align 4
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ETH_DATA_LEN, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %89
  %122 = load i32, i32* @GM_SMOD_JUMBO_ENA, align 4
  %123 = load i32, i32* %11, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %121, %89
  %126 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @GM_SERIAL_MODE, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @gma_write16(%struct.sky2_hw* %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %132 = load i32*, i32** @rxqaddr, align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @RB_CTRL, align 4
  %138 = call i32 @RB_ADDR(i32 %136, i32 %137)
  %139 = load i32, i32* @RB_ENA_OP_MD, align 4
  %140 = call i32 @sky2_write8(%struct.sky2_hw* %131, i32 %138, i32 %139)
  %141 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %142 = call i32 @sky2_rx_start(%struct.sky2_port* %141)
  store i32 %142, i32* %9, align 4
  %143 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %144 = load i32, i32* @B0_IMSK, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @sky2_write32(%struct.sky2_hw* %143, i32 %144, i32 %145)
  %147 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %148 = load i32, i32* @B0_Y2_SP_LISR, align 4
  %149 = call i32 @sky2_read32(%struct.sky2_hw* %147, i32 %148)
  %150 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %151 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %150, i32 0, i32 2
  %152 = call i32 @napi_enable(i32* %151)
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %125
  %156 = load %struct.net_device*, %struct.net_device** %4, align 8
  %157 = call i32 @dev_close(%struct.net_device* %156)
  br label %166

158:                                              ; preds = %125
  %159 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @GM_GP_CTRL, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @gma_write16(%struct.sky2_hw* %159, i32 %160, i32 %161, i32 %162)
  %164 = load %struct.net_device*, %struct.net_device** %4, align 8
  %165 = call i32 @netif_wake_queue(%struct.net_device* %164)
  br label %166

166:                                              ; preds = %158, %155
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %54, %47, %28
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @sky2_set_tx_stfwd(%struct.sky2_hw*, i32) #1

declare dso_local i32 @gma_read16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @sky2_rx_stop(%struct.sky2_port*) #1

declare dso_local i32 @sky2_rx_clean(%struct.sky2_port*) #1

declare dso_local i32 @DATA_BLIND_VAL(i32) #1

declare dso_local i32 @IPG_DATA_VAL(i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @RB_ADDR(i32, i32) #1

declare dso_local i32 @sky2_rx_start(%struct.sky2_port*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_mdio_config_5785.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_mdio_config_5785.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.phy_device** }
%struct.phy_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@TG3_PHY_MII_ADDR = common dso_local global i64 0, align 8
@MAC_PHYCFG2_50610_LED_MODES = common dso_local global i32 0, align 4
@MAC_PHYCFG2_AC131_LED_MODES = common dso_local global i32 0, align 4
@MAC_PHYCFG2_RTL8211C_LED_MODES = common dso_local global i32 0, align 4
@MAC_PHYCFG2_RTL8201E_LED_MODES = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@MAC_PHYCFG2 = common dso_local global i32 0, align 4
@MAC_PHYCFG1 = common dso_local global i32 0, align 4
@MAC_PHYCFG1_RGMII_INT = common dso_local global i32 0, align 4
@MAC_PHYCFG1_RXCLK_TO_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG1_TXCLK_TO_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG1_RXCLK_TIMEOUT = common dso_local global i32 0, align 4
@MAC_PHYCFG1_TXCLK_TIMEOUT = common dso_local global i32 0, align 4
@RGMII_INBAND_DISABLE = common dso_local global i32 0, align 4
@MAC_PHYCFG2_EMODE_MASK_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG2_FMODE_MASK_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG2_GMODE_MASK_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG2_ACT_MASK_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG2_QUAL_MASK_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG2_INBAND_ENABLE = common dso_local global i32 0, align 4
@MAC_PHYCFG1_RGMII_EXT_RX_DEC = common dso_local global i32 0, align 4
@MAC_PHYCFG1_RGMII_SND_STAT_EN = common dso_local global i32 0, align 4
@RGMII_EXT_IBND_RX_EN = common dso_local global i32 0, align 4
@RGMII_EXT_IBND_TX_EN = common dso_local global i32 0, align 4
@MAC_PHYCFG1_TXC_DRV = common dso_local global i32 0, align 4
@MAC_EXT_RGMII_MODE = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_RX_INT_B = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_RX_QUALITY = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_RX_ACTIVITY = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_RX_ENG_DET = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_TX_ENABLE = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_TX_LOWPWR = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_TX_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_mdio_config_5785 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_mdio_config_5785(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %5 = load %struct.tg3*, %struct.tg3** %2, align 8
  %6 = getelementptr inbounds %struct.tg3, %struct.tg3* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.phy_device**, %struct.phy_device*** %8, align 8
  %10 = load i64, i64* @TG3_PHY_MII_ADDR, align 8
  %11 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %9, i64 %10
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %17, %22
  switch i32 %23, label %32 [
    i32 132, label %24
    i32 131, label %24
    i32 130, label %26
    i32 128, label %28
    i32 129, label %30
  ]

24:                                               ; preds = %1, %1
  %25 = load i32, i32* @MAC_PHYCFG2_50610_LED_MODES, align 4
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @MAC_PHYCFG2_AC131_LED_MODES, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @MAC_PHYCFG2_RTL8211C_LED_MODES, align 4
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @MAC_PHYCFG2_RTL8201E_LED_MODES, align 4
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %1
  br label %187

33:                                               ; preds = %30, %28, %26, %24
  %34 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = load i32, i32* @MAC_PHYCFG2, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @tw32(i32 %40, i32 %41)
  %43 = load i32, i32* @MAC_PHYCFG1, align 4
  %44 = call i32 @tr32(i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @MAC_PHYCFG1_RGMII_INT, align 4
  %46 = load i32, i32* @MAC_PHYCFG1_RXCLK_TO_MASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MAC_PHYCFG1_TXCLK_TO_MASK, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @MAC_PHYCFG1_RXCLK_TIMEOUT, align 4
  %54 = load i32, i32* @MAC_PHYCFG1_TXCLK_TIMEOUT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @MAC_PHYCFG1, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @tw32(i32 %58, i32 %59)
  br label %187

61:                                               ; preds = %33
  %62 = load %struct.tg3*, %struct.tg3** %2, align 8
  %63 = load i32, i32* @RGMII_INBAND_DISABLE, align 4
  %64 = call i64 @tg3_flag(%struct.tg3* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @MAC_PHYCFG2_EMODE_MASK_MASK, align 4
  %68 = load i32, i32* @MAC_PHYCFG2_FMODE_MASK_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MAC_PHYCFG2_GMODE_MASK_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MAC_PHYCFG2_ACT_MASK_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MAC_PHYCFG2_QUAL_MASK_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @MAC_PHYCFG2_INBAND_ENABLE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %66, %61
  %81 = load i32, i32* @MAC_PHYCFG2, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @tw32(i32 %81, i32 %82)
  %84 = load i32, i32* @MAC_PHYCFG1, align 4
  %85 = call i32 @tr32(i32 %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* @MAC_PHYCFG1_RXCLK_TO_MASK, align 4
  %87 = load i32, i32* @MAC_PHYCFG1_TXCLK_TO_MASK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @MAC_PHYCFG1_RGMII_EXT_RX_DEC, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @MAC_PHYCFG1_RGMII_SND_STAT_EN, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %3, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %3, align 4
  %96 = load %struct.tg3*, %struct.tg3** %2, align 8
  %97 = load i32, i32* @RGMII_INBAND_DISABLE, align 4
  %98 = call i64 @tg3_flag(%struct.tg3* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %80
  %101 = load %struct.tg3*, %struct.tg3** %2, align 8
  %102 = load i32, i32* @RGMII_EXT_IBND_RX_EN, align 4
  %103 = call i64 @tg3_flag(%struct.tg3* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @MAC_PHYCFG1_RGMII_EXT_RX_DEC, align 4
  %107 = load i32, i32* %3, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.tg3*, %struct.tg3** %2, align 8
  %111 = load i32, i32* @RGMII_EXT_IBND_TX_EN, align 4
  %112 = call i64 @tg3_flag(%struct.tg3* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @MAC_PHYCFG1_RGMII_SND_STAT_EN, align 4
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118, %80
  %120 = load i32, i32* @MAC_PHYCFG1_RXCLK_TIMEOUT, align 4
  %121 = load i32, i32* @MAC_PHYCFG1_TXCLK_TIMEOUT, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @MAC_PHYCFG1_RGMII_INT, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @MAC_PHYCFG1_TXC_DRV, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* @MAC_PHYCFG1, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @tw32(i32 %129, i32 %130)
  %132 = load i32, i32* @MAC_EXT_RGMII_MODE, align 4
  %133 = call i32 @tr32(i32 %132)
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* @MAC_RGMII_MODE_RX_INT_B, align 4
  %135 = load i32, i32* @MAC_RGMII_MODE_RX_QUALITY, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @MAC_RGMII_MODE_RX_ACTIVITY, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @MAC_RGMII_MODE_RX_ENG_DET, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @MAC_RGMII_MODE_TX_ENABLE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @MAC_RGMII_MODE_TX_LOWPWR, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @MAC_RGMII_MODE_TX_RESET, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %3, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %3, align 4
  %150 = load %struct.tg3*, %struct.tg3** %2, align 8
  %151 = load i32, i32* @RGMII_INBAND_DISABLE, align 4
  %152 = call i64 @tg3_flag(%struct.tg3* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %183, label %154

154:                                              ; preds = %119
  %155 = load %struct.tg3*, %struct.tg3** %2, align 8
  %156 = load i32, i32* @RGMII_EXT_IBND_RX_EN, align 4
  %157 = call i64 @tg3_flag(%struct.tg3* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load i32, i32* @MAC_RGMII_MODE_RX_INT_B, align 4
  %161 = load i32, i32* @MAC_RGMII_MODE_RX_QUALITY, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @MAC_RGMII_MODE_RX_ACTIVITY, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @MAC_RGMII_MODE_RX_ENG_DET, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* %3, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %159, %154
  %170 = load %struct.tg3*, %struct.tg3** %2, align 8
  %171 = load i32, i32* @RGMII_EXT_IBND_TX_EN, align 4
  %172 = call i64 @tg3_flag(%struct.tg3* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load i32, i32* @MAC_RGMII_MODE_TX_ENABLE, align 4
  %176 = load i32, i32* @MAC_RGMII_MODE_TX_LOWPWR, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @MAC_RGMII_MODE_TX_RESET, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %3, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %174, %169
  br label %183

183:                                              ; preds = %182, %119
  %184 = load i32, i32* @MAC_EXT_RGMII_MODE, align 4
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @tw32(i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %39, %32
  ret void
}

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

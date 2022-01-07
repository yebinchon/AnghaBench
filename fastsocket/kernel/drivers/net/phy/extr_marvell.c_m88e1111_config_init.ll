; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_marvell.c_m88e1111_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_marvell.c_m88e1111_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@MII_M1111_PHY_EXT_SR = common dso_local global i32 0, align 4
@MII_M1111_HWCFG_FIBER_COPPER_AUTO = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@MII_M1111_PHY_EXT_CR = common dso_local global i32 0, align 4
@MII_M1111_RX_DELAY = common dso_local global i32 0, align 4
@MII_M1111_TX_DELAY = common dso_local global i32 0, align 4
@MII_M1111_HWCFG_MODE_MASK = common dso_local global i32 0, align 4
@MII_M1111_HWCFG_FIBER_COPPER_RES = common dso_local global i32 0, align 4
@MII_M1111_HWCFG_MODE_FIBER_RGMII = common dso_local global i32 0, align 4
@MII_M1111_HWCFG_MODE_COPPER_RGMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@MII_M1111_HWCFG_MODE_SGMII_NO_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @m88e1111_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88e1111_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MII_M1111_PHY_EXT_SR, align 4
  %8 = call i32 @phy_read(%struct.phy_device* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @MII_M1111_HWCFG_FIBER_COPPER_AUTO, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = load i32, i32* @MII_M1111_PHY_EXT_SR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @phy_write(%struct.phy_device* %13, i32 %14, i32 %15)
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = load i32, i32* @MII_BMCR, align 4
  %19 = call i32 @phy_read(%struct.phy_device* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @BMCR_RESET, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = load i32, i32* @MII_BMCR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @phy_write(%struct.phy_device* %23, i32 %24, i32 %25)
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %1
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %144

50:                                               ; preds = %44, %38, %32, %1
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = load i32, i32* @MII_M1111_PHY_EXT_CR, align 4
  %53 = call i32 @phy_read(%struct.phy_device* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %188

58:                                               ; preds = %50
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @MII_M1111_RX_DELAY, align 4
  %66 = load i32, i32* @MII_M1111_TX_DELAY, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %100

70:                                               ; preds = %58
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i32, i32* @MII_M1111_TX_DELAY, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @MII_M1111_RX_DELAY, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %99

84:                                               ; preds = %70
  %85 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %86 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i32, i32* @MII_M1111_RX_DELAY, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @MII_M1111_TX_DELAY, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %90, %84
  br label %99

99:                                               ; preds = %98, %76
  br label %100

100:                                              ; preds = %99, %64
  %101 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %102 = load i32, i32* @MII_M1111_PHY_EXT_CR, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @phy_write(%struct.phy_device* %101, i32 %102, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %188

109:                                              ; preds = %100
  %110 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %111 = load i32, i32* @MII_M1111_PHY_EXT_SR, align 4
  %112 = call i32 @phy_read(%struct.phy_device* %110, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %188

117:                                              ; preds = %109
  %118 = load i32, i32* @MII_M1111_HWCFG_MODE_MASK, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @MII_M1111_HWCFG_FIBER_COPPER_RES, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load i32, i32* @MII_M1111_HWCFG_MODE_FIBER_RGMII, align 4
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  br label %134

130:                                              ; preds = %117
  %131 = load i32, i32* @MII_M1111_HWCFG_MODE_COPPER_RGMII, align 4
  %132 = load i32, i32* %5, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %126
  %135 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %136 = load i32, i32* @MII_M1111_PHY_EXT_SR, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @phy_write(%struct.phy_device* %135, i32 %136, i32 %137)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %188

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %44
  %145 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %146 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %178

150:                                              ; preds = %144
  %151 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %152 = load i32, i32* @MII_M1111_PHY_EXT_SR, align 4
  %153 = call i32 @phy_read(%struct.phy_device* %151, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %188

158:                                              ; preds = %150
  %159 = load i32, i32* @MII_M1111_HWCFG_MODE_MASK, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* @MII_M1111_HWCFG_MODE_SGMII_NO_CLK, align 4
  %164 = load i32, i32* %5, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* @MII_M1111_HWCFG_FIBER_COPPER_AUTO, align 4
  %167 = load i32, i32* %5, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %170 = load i32, i32* @MII_M1111_PHY_EXT_SR, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @phy_write(%struct.phy_device* %169, i32 %170, i32 %171)
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %158
  %176 = load i32, i32* %4, align 4
  store i32 %176, i32* %2, align 4
  br label %188

177:                                              ; preds = %158
  br label %178

178:                                              ; preds = %177, %144
  %179 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %180 = load i32, i32* @MII_BMCR, align 4
  %181 = load i32, i32* @BMCR_RESET, align 4
  %182 = call i32 @phy_write(%struct.phy_device* %179, i32 %180, i32 %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* %4, align 4
  store i32 %186, i32* %2, align 4
  br label %188

187:                                              ; preds = %178
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %187, %185, %175, %156, %141, %115, %107, %56
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

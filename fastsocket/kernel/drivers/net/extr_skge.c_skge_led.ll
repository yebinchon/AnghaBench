; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i32, %struct.skge_hw* }
%struct.skge_hw = type { i64, i32, i32 }

@CHIP_ID_GENESIS = common dso_local global i64 0, align 8
@SK_PHY_BCOM = common dso_local global i32 0, align 4
@PHY_BCOM_P_EXT_CTRL = common dso_local global i32 0, align 4
@PHY_B_PEC_LED_OFF = common dso_local global i32 0, align 4
@TX_LED_VAL = common dso_local global i32 0, align 4
@TX_LED_CTRL = common dso_local global i32 0, align 4
@LED_T_OFF = common dso_local global i32 0, align 4
@LNK_LED_REG = common dso_local global i32 0, align 4
@LINKLED_OFF = common dso_local global i32 0, align 4
@RX_LED_VAL = common dso_local global i32 0, align 4
@RX_LED_CTRL = common dso_local global i32 0, align 4
@LINKLED_ON = common dso_local global i32 0, align 4
@LINKLED_LINKSYNC_ON = common dso_local global i32 0, align 4
@LED_START = common dso_local global i32 0, align 4
@RX_LED_TST = common dso_local global i32 0, align 4
@LED_T_ON = common dso_local global i32 0, align 4
@PHY_B_PEC_LED_ON = common dso_local global i32 0, align 4
@TX_LED_TST = common dso_local global i32 0, align 4
@PHY_MARV_LED_CTRL = common dso_local global i32 0, align 4
@PHY_MARV_LED_OVER = common dso_local global i32 0, align 4
@MO_LED_OFF = common dso_local global i32 0, align 4
@PULS_170MS = common dso_local global i32 0, align 4
@BLINK_84MS = common dso_local global i32 0, align 4
@PHY_M_LEDC_TX_CTRL = common dso_local global i32 0, align 4
@PHY_M_LEDC_DP_CTRL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@MO_LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*, i32)* @skge_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_led(%struct.skge_port* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %8 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %7, i32 0, i32 2
  %9 = load %struct.skge_hw*, %struct.skge_hw** %8, align 8
  store %struct.skge_hw* %9, %struct.skge_hw** %5, align 8
  %10 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %11 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %14 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %17 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHIP_ID_GENESIS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %139

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %138 [
    i32 130, label %23
    i32 129, label %65
    i32 128, label %90
  ]

23:                                               ; preds = %21
  %24 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %25 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SK_PHY_BCOM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PHY_BCOM_P_EXT_CTRL, align 4
  %33 = load i32, i32* @PHY_B_PEC_LED_OFF, align 4
  %34 = call i32 @xm_phy_write(%struct.skge_hw* %30, i32 %31, i32 %32, i32 %33)
  br label %47

35:                                               ; preds = %23
  %36 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TX_LED_VAL, align 4
  %39 = call i32 @SK_REG(i32 %37, i32 %38)
  %40 = call i32 @skge_write32(%struct.skge_hw* %36, i32 %39, i32 0)
  %41 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TX_LED_CTRL, align 4
  %44 = call i32 @SK_REG(i32 %42, i32 %43)
  %45 = load i32, i32* @LED_T_OFF, align 4
  %46 = call i32 @skge_write8(%struct.skge_hw* %41, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %35, %29
  %48 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @LNK_LED_REG, align 4
  %51 = call i32 @SK_REG(i32 %49, i32 %50)
  %52 = load i32, i32* @LINKLED_OFF, align 4
  %53 = call i32 @skge_write8(%struct.skge_hw* %48, i32 %51, i32 %52)
  %54 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @RX_LED_VAL, align 4
  %57 = call i32 @SK_REG(i32 %55, i32 %56)
  %58 = call i32 @skge_write32(%struct.skge_hw* %54, i32 %57, i32 0)
  %59 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @RX_LED_CTRL, align 4
  %62 = call i32 @SK_REG(i32 %60, i32 %61)
  %63 = load i32, i32* @LED_T_OFF, align 4
  %64 = call i32 @skge_write8(%struct.skge_hw* %59, i32 %62, i32 %63)
  br label %138

65:                                               ; preds = %21
  %66 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @LNK_LED_REG, align 4
  %69 = call i32 @SK_REG(i32 %67, i32 %68)
  %70 = load i32, i32* @LINKLED_ON, align 4
  %71 = call i32 @skge_write8(%struct.skge_hw* %66, i32 %69, i32 %70)
  %72 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @LNK_LED_REG, align 4
  %75 = call i32 @SK_REG(i32 %73, i32 %74)
  %76 = load i32, i32* @LINKLED_LINKSYNC_ON, align 4
  %77 = call i32 @skge_write8(%struct.skge_hw* %72, i32 %75, i32 %76)
  %78 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @RX_LED_CTRL, align 4
  %81 = call i32 @SK_REG(i32 %79, i32 %80)
  %82 = load i32, i32* @LED_START, align 4
  %83 = call i32 @skge_write8(%struct.skge_hw* %78, i32 %81, i32 %82)
  %84 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @TX_LED_CTRL, align 4
  %87 = call i32 @SK_REG(i32 %85, i32 %86)
  %88 = load i32, i32* @LED_START, align 4
  %89 = call i32 @skge_write8(%struct.skge_hw* %84, i32 %87, i32 %88)
  br label %138

90:                                               ; preds = %21
  %91 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @RX_LED_TST, align 4
  %94 = call i32 @SK_REG(i32 %92, i32 %93)
  %95 = load i32, i32* @LED_T_ON, align 4
  %96 = call i32 @skge_write8(%struct.skge_hw* %91, i32 %94, i32 %95)
  %97 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @RX_LED_VAL, align 4
  %100 = call i32 @SK_REG(i32 %98, i32 %99)
  %101 = call i32 @skge_write32(%struct.skge_hw* %97, i32 %100, i32 100)
  %102 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @RX_LED_CTRL, align 4
  %105 = call i32 @SK_REG(i32 %103, i32 %104)
  %106 = load i32, i32* @LED_START, align 4
  %107 = call i32 @skge_write8(%struct.skge_hw* %102, i32 %105, i32 %106)
  %108 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %109 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SK_PHY_BCOM, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %90
  %114 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @PHY_BCOM_P_EXT_CTRL, align 4
  %117 = load i32, i32* @PHY_B_PEC_LED_ON, align 4
  %118 = call i32 @xm_phy_write(%struct.skge_hw* %114, i32 %115, i32 %116, i32 %117)
  br label %137

119:                                              ; preds = %90
  %120 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @TX_LED_TST, align 4
  %123 = call i32 @SK_REG(i32 %121, i32 %122)
  %124 = load i32, i32* @LED_T_ON, align 4
  %125 = call i32 @skge_write8(%struct.skge_hw* %120, i32 %123, i32 %124)
  %126 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @TX_LED_VAL, align 4
  %129 = call i32 @SK_REG(i32 %127, i32 %128)
  %130 = call i32 @skge_write32(%struct.skge_hw* %126, i32 %129, i32 100)
  %131 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @TX_LED_CTRL, align 4
  %134 = call i32 @SK_REG(i32 %132, i32 %133)
  %135 = load i32, i32* @LED_START, align 4
  %136 = call i32 @skge_write8(%struct.skge_hw* %131, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %119, %113
  br label %138

138:                                              ; preds = %137, %21, %65, %47
  br label %220

139:                                              ; preds = %2
  %140 = load i32, i32* %4, align 4
  switch i32 %140, label %219 [
    i32 130, label %141
    i32 129, label %164
    i32 128, label %196
  ]

141:                                              ; preds = %139
  %142 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @PHY_MARV_LED_CTRL, align 4
  %145 = call i32 @gm_phy_write(%struct.skge_hw* %142, i32 %143, i32 %144, i32 0)
  %146 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @PHY_MARV_LED_OVER, align 4
  %149 = load i32, i32* @MO_LED_OFF, align 4
  %150 = call i32 @PHY_M_LED_MO_DUP(i32 %149)
  %151 = load i32, i32* @MO_LED_OFF, align 4
  %152 = call i32 @PHY_M_LED_MO_10(i32 %151)
  %153 = or i32 %150, %152
  %154 = load i32, i32* @MO_LED_OFF, align 4
  %155 = call i32 @PHY_M_LED_MO_100(i32 %154)
  %156 = or i32 %153, %155
  %157 = load i32, i32* @MO_LED_OFF, align 4
  %158 = call i32 @PHY_M_LED_MO_1000(i32 %157)
  %159 = or i32 %156, %158
  %160 = load i32, i32* @MO_LED_OFF, align 4
  %161 = call i32 @PHY_M_LED_MO_RX(i32 %160)
  %162 = or i32 %159, %161
  %163 = call i32 @gm_phy_write(%struct.skge_hw* %146, i32 %147, i32 %148, i32 %162)
  br label %219

164:                                              ; preds = %139
  %165 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @PHY_MARV_LED_CTRL, align 4
  %168 = load i32, i32* @PULS_170MS, align 4
  %169 = call i32 @PHY_M_LED_PULS_DUR(i32 %168)
  %170 = load i32, i32* @BLINK_84MS, align 4
  %171 = call i32 @PHY_M_LED_BLINK_RT(i32 %170)
  %172 = or i32 %169, %171
  %173 = load i32, i32* @PHY_M_LEDC_TX_CTRL, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @PHY_M_LEDC_DP_CTRL, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @gm_phy_write(%struct.skge_hw* %165, i32 %166, i32 %167, i32 %176)
  %178 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @PHY_MARV_LED_OVER, align 4
  %181 = load i32, i32* @MO_LED_OFF, align 4
  %182 = call i32 @PHY_M_LED_MO_RX(i32 %181)
  %183 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %184 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @SPEED_100, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %164
  %189 = load i32, i32* @MO_LED_ON, align 4
  %190 = call i32 @PHY_M_LED_MO_100(i32 %189)
  br label %192

191:                                              ; preds = %164
  br label %192

192:                                              ; preds = %191, %188
  %193 = phi i32 [ %190, %188 ], [ 0, %191 ]
  %194 = or i32 %182, %193
  %195 = call i32 @gm_phy_write(%struct.skge_hw* %178, i32 %179, i32 %180, i32 %194)
  br label %219

196:                                              ; preds = %139
  %197 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @PHY_MARV_LED_CTRL, align 4
  %200 = call i32 @gm_phy_write(%struct.skge_hw* %197, i32 %198, i32 %199, i32 0)
  %201 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @PHY_MARV_LED_OVER, align 4
  %204 = load i32, i32* @MO_LED_ON, align 4
  %205 = call i32 @PHY_M_LED_MO_DUP(i32 %204)
  %206 = load i32, i32* @MO_LED_ON, align 4
  %207 = call i32 @PHY_M_LED_MO_10(i32 %206)
  %208 = or i32 %205, %207
  %209 = load i32, i32* @MO_LED_ON, align 4
  %210 = call i32 @PHY_M_LED_MO_100(i32 %209)
  %211 = or i32 %208, %210
  %212 = load i32, i32* @MO_LED_ON, align 4
  %213 = call i32 @PHY_M_LED_MO_1000(i32 %212)
  %214 = or i32 %211, %213
  %215 = load i32, i32* @MO_LED_ON, align 4
  %216 = call i32 @PHY_M_LED_MO_RX(i32 %215)
  %217 = or i32 %214, %216
  %218 = call i32 @gm_phy_write(%struct.skge_hw* %201, i32 %202, i32 %203, i32 %217)
  br label %219

219:                                              ; preds = %196, %139, %192, %141
  br label %220

220:                                              ; preds = %219, %138
  %221 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %222 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %221, i32 0, i32 1
  %223 = call i32 @spin_unlock_bh(i32* %222)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @xm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @gm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @PHY_M_LED_MO_DUP(i32) #1

declare dso_local i32 @PHY_M_LED_MO_10(i32) #1

declare dso_local i32 @PHY_M_LED_MO_100(i32) #1

declare dso_local i32 @PHY_M_LED_MO_1000(i32) #1

declare dso_local i32 @PHY_M_LED_MO_RX(i32) #1

declare dso_local i32 @PHY_M_LED_PULS_DUR(i32) #1

declare dso_local i32 @PHY_M_LED_BLINK_RT(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

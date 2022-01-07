; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_radio_setup_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_radio_setup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PHY_CORE_0 = common dso_local global i64 0, align 8
@RADIO_2057_TX0_TXRXCOUPLE_5G_PWRUP = common dso_local global i32 0, align 4
@RADIO_2057_TX0_TXRXCOUPLE_5G_ATTEN = common dso_local global i32 0, align 4
@RADIO_2057_TX0_TXRXCOUPLE_2G_PWRUP = common dso_local global i32 0, align 4
@RADIO_2057_TX0_TXRXCOUPLE_2G_ATTEN = common dso_local global i32 0, align 4
@RADIO_2057_TX1_TXRXCOUPLE_5G_PWRUP = common dso_local global i32 0, align 4
@RADIO_2057_TX1_TXRXCOUPLE_5G_ATTEN = common dso_local global i32 0, align 4
@RADIO_2057_TX1_TXRXCOUPLE_2G_PWRUP = common dso_local global i32 0, align 4
@RADIO_2057_TX1_TXRXCOUPLE_2G_ATTEN = common dso_local global i32 0, align 4
@RADIO_2056_TX_RXIQCAL_TXMUX = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4
@RADIO_2056_RX_RXIQCAL_RXMUX = common dso_local global i32 0, align 4
@RADIO_2056_RX0 = common dso_local global i32 0, align 4
@RADIO_2056_RX_RXSPARE2 = common dso_local global i32 0, align 4
@RADIO_2056_TX_TXSPARE2 = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAA_MASTER = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAA_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAG_MASTER = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAG_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_RX1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64)* @wlc_phy_rxcal_radio_setup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_rxcal_radio_setup_nphy(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @NREV_GE(i32 %11, i32 7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %125

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @PHY_CORE_0, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %14
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @CHSPEC_IS5G(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %26 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_5G_PWRUP, align 4
  %27 = call i8* @read_radio_reg(%struct.brcms_phy* %25, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %30 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %34 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_5G_ATTEN, align 4
  %35 = call i8* @read_radio_reg(%struct.brcms_phy* %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %42 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_5G_PWRUP, align 4
  %43 = call i32 @write_radio_reg(%struct.brcms_phy* %41, i32 %42, i32 3)
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %45 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_5G_ATTEN, align 4
  %46 = call i32 @write_radio_reg(%struct.brcms_phy* %44, i32 %45, i32 175)
  br label %70

47:                                               ; preds = %18
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %49 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_2G_PWRUP, align 4
  %50 = call i8* @read_radio_reg(%struct.brcms_phy* %48, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %57 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_2G_ATTEN, align 4
  %58 = call i8* @read_radio_reg(%struct.brcms_phy* %56, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %59, i32* %63, align 4
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %65 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_2G_PWRUP, align 4
  %66 = call i32 @write_radio_reg(%struct.brcms_phy* %64, i32 %65, i32 3)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %68 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_2G_ATTEN, align 4
  %69 = call i32 @write_radio_reg(%struct.brcms_phy* %67, i32 %68, i32 127)
  br label %70

70:                                               ; preds = %47, %24
  br label %124

71:                                               ; preds = %14
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %73 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @CHSPEC_IS5G(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %71
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %79 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_5G_PWRUP, align 4
  %80 = call i8* @read_radio_reg(%struct.brcms_phy* %78, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %87 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_5G_ATTEN, align 4
  %88 = call i8* @read_radio_reg(%struct.brcms_phy* %86, i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %91 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %89, i32* %93, align 4
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %95 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_5G_PWRUP, align 4
  %96 = call i32 @write_radio_reg(%struct.brcms_phy* %94, i32 %95, i32 3)
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %98 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_5G_ATTEN, align 4
  %99 = call i32 @write_radio_reg(%struct.brcms_phy* %97, i32 %98, i32 175)
  br label %123

100:                                              ; preds = %71
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %102 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_2G_PWRUP, align 4
  %103 = call i8* @read_radio_reg(%struct.brcms_phy* %101, i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %106 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %104, i32* %108, align 4
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %110 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_2G_ATTEN, align 4
  %111 = call i8* @read_radio_reg(%struct.brcms_phy* %109, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %114 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %112, i32* %116, align 4
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %118 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_2G_PWRUP, align 4
  %119 = call i32 @write_radio_reg(%struct.brcms_phy* %117, i32 %118, i32 3)
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %121 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_2G_ATTEN, align 4
  %122 = call i32 @write_radio_reg(%struct.brcms_phy* %120, i32 %121, i32 127)
  br label %123

123:                                              ; preds = %100, %77
  br label %124

124:                                              ; preds = %123, %70
  br label %534

125:                                              ; preds = %2
  %126 = load i64, i64* %4, align 8
  %127 = load i64, i64* @PHY_CORE_0, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %331

129:                                              ; preds = %125
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %131 = load i32, i32* @RADIO_2056_TX_RXIQCAL_TXMUX, align 4
  %132 = load i32, i32* @RADIO_2056_TX1, align 4
  %133 = or i32 %131, %132
  %134 = call i8* @read_radio_reg(%struct.brcms_phy* %130, i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %137 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %135, i32* %139, align 4
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %141 = load i32, i32* @RADIO_2056_RX_RXIQCAL_RXMUX, align 4
  %142 = load i32, i32* @RADIO_2056_RX0, align 4
  %143 = or i32 %141, %142
  %144 = call i8* @read_radio_reg(%struct.brcms_phy* %140, i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %147 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 %145, i32* %149, align 4
  %150 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %151 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sge i32 %153, 5
  br i1 %154, label %155, label %176

155:                                              ; preds = %129
  %156 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %157 = load i32, i32* @RADIO_2056_RX_RXSPARE2, align 4
  %158 = load i32, i32* @RADIO_2056_RX0, align 4
  %159 = or i32 %157, %158
  %160 = call i8* @read_radio_reg(%struct.brcms_phy* %156, i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %163 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  store i32 %161, i32* %165, align 4
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %167 = load i32, i32* @RADIO_2056_TX_TXSPARE2, align 4
  %168 = load i32, i32* @RADIO_2056_TX1, align 4
  %169 = or i32 %167, %168
  %170 = call i8* @read_radio_reg(%struct.brcms_phy* %166, i32 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %173 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 3
  store i32 %171, i32* %175, align 4
  br label %176

176:                                              ; preds = %155, %129
  %177 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %178 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @CHSPEC_IS5G(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %256

182:                                              ; preds = %176
  %183 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %184 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sge i32 %186, 5
  br i1 %187, label %188, label %216

188:                                              ; preds = %182
  %189 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %190 = load i32, i32* @RADIO_2056_RX_LNAA_MASTER, align 4
  %191 = load i32, i32* @RADIO_2056_RX0, align 4
  %192 = or i32 %190, %191
  %193 = call i8* @read_radio_reg(%struct.brcms_phy* %189, i32 %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %196 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 4
  store i32 %194, i32* %198, align 4
  %199 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %200 = load i32, i32* @RADIO_2056_RX_LNAA_MASTER, align 4
  %201 = load i32, i32* @RADIO_2056_RX0, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @write_radio_reg(%struct.brcms_phy* %199, i32 %202, i32 64)
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %205 = load i32, i32* @RADIO_2056_TX_TXSPARE2, align 4
  %206 = load i32, i32* @RADIO_2056_TX1, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @write_radio_reg(%struct.brcms_phy* %204, i32 %207, i32 %208)
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %211 = load i32, i32* @RADIO_2056_RX_RXSPARE2, align 4
  %212 = load i32, i32* @RADIO_2056_RX0, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @write_radio_reg(%struct.brcms_phy* %210, i32 %213, i32 %214)
  br label %245

216:                                              ; preds = %182
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %218 = load i32, i32* @RADIO_2056_RX_LNAA_TUNE, align 4
  %219 = load i32, i32* @RADIO_2056_RX0, align 4
  %220 = or i32 %218, %219
  %221 = call i8* @read_radio_reg(%struct.brcms_phy* %217, i32 %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %224 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 4
  store i32 %222, i32* %226, align 4
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %228 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 2
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 240
  %233 = ashr i32 %232, 8
  store i32 %233, i32* %5, align 4
  %234 = load i32, i32* %5, align 4
  %235 = icmp sle i32 %234, 7
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 15, i32 0
  store i32 %237, i32* %5, align 4
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %239 = load i32, i32* @RADIO_2056_RX_LNAA_TUNE, align 4
  %240 = load i32, i32* @RADIO_2056_RX0, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* %5, align 4
  %243 = shl i32 %242, 8
  %244 = call i32 @mod_radio_reg(%struct.brcms_phy* %238, i32 %241, i32 240, i32 %243)
  br label %245

245:                                              ; preds = %216, %188
  %246 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %247 = load i32, i32* @RADIO_2056_TX_RXIQCAL_TXMUX, align 4
  %248 = load i32, i32* @RADIO_2056_TX1, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @write_radio_reg(%struct.brcms_phy* %246, i32 %249, i32 9)
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %252 = load i32, i32* @RADIO_2056_RX_RXIQCAL_RXMUX, align 4
  %253 = load i32, i32* @RADIO_2056_RX0, align 4
  %254 = or i32 %252, %253
  %255 = call i32 @write_radio_reg(%struct.brcms_phy* %251, i32 %254, i32 9)
  br label %330

256:                                              ; preds = %176
  %257 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %258 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp sge i32 %260, 5
  br i1 %261, label %262, label %290

262:                                              ; preds = %256
  %263 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %264 = load i32, i32* @RADIO_2056_RX_LNAG_MASTER, align 4
  %265 = load i32, i32* @RADIO_2056_RX0, align 4
  %266 = or i32 %264, %265
  %267 = call i8* @read_radio_reg(%struct.brcms_phy* %263, i32 %266)
  %268 = ptrtoint i8* %267 to i32
  %269 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %270 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 4
  store i32 %268, i32* %272, align 4
  %273 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %274 = load i32, i32* @RADIO_2056_RX_LNAG_MASTER, align 4
  %275 = load i32, i32* @RADIO_2056_RX0, align 4
  %276 = or i32 %274, %275
  %277 = call i32 @write_radio_reg(%struct.brcms_phy* %273, i32 %276, i32 64)
  %278 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %279 = load i32, i32* @RADIO_2056_TX_TXSPARE2, align 4
  %280 = load i32, i32* @RADIO_2056_TX1, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* %6, align 4
  %283 = call i32 @write_radio_reg(%struct.brcms_phy* %278, i32 %281, i32 %282)
  %284 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %285 = load i32, i32* @RADIO_2056_RX_RXSPARE2, align 4
  %286 = load i32, i32* @RADIO_2056_RX0, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* %6, align 4
  %289 = call i32 @write_radio_reg(%struct.brcms_phy* %284, i32 %287, i32 %288)
  br label %319

290:                                              ; preds = %256
  %291 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %292 = load i32, i32* @RADIO_2056_RX_LNAG_TUNE, align 4
  %293 = load i32, i32* @RADIO_2056_RX0, align 4
  %294 = or i32 %292, %293
  %295 = call i8* @read_radio_reg(%struct.brcms_phy* %291, i32 %294)
  %296 = ptrtoint i8* %295 to i32
  %297 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %298 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 4
  store i32 %296, i32* %300, align 4
  %301 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %302 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 2
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, 240
  %307 = ashr i32 %306, 8
  store i32 %307, i32* %5, align 4
  %308 = load i32, i32* %5, align 4
  %309 = icmp sle i32 %308, 7
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i32 15, i32 0
  store i32 %311, i32* %5, align 4
  %312 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %313 = load i32, i32* @RADIO_2056_RX_LNAG_TUNE, align 4
  %314 = load i32, i32* @RADIO_2056_RX0, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* %5, align 4
  %317 = shl i32 %316, 8
  %318 = call i32 @mod_radio_reg(%struct.brcms_phy* %312, i32 %315, i32 240, i32 %317)
  br label %319

319:                                              ; preds = %290, %262
  %320 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %321 = load i32, i32* @RADIO_2056_TX_RXIQCAL_TXMUX, align 4
  %322 = load i32, i32* @RADIO_2056_TX1, align 4
  %323 = or i32 %321, %322
  %324 = call i32 @write_radio_reg(%struct.brcms_phy* %320, i32 %323, i32 6)
  %325 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %326 = load i32, i32* @RADIO_2056_RX_RXIQCAL_RXMUX, align 4
  %327 = load i32, i32* @RADIO_2056_RX0, align 4
  %328 = or i32 %326, %327
  %329 = call i32 @write_radio_reg(%struct.brcms_phy* %325, i32 %328, i32 6)
  br label %330

330:                                              ; preds = %319, %245
  br label %533

331:                                              ; preds = %125
  %332 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %333 = load i32, i32* @RADIO_2056_TX_RXIQCAL_TXMUX, align 4
  %334 = load i32, i32* @RADIO_2056_TX0, align 4
  %335 = or i32 %333, %334
  %336 = call i8* @read_radio_reg(%struct.brcms_phy* %332, i32 %335)
  %337 = ptrtoint i8* %336 to i32
  %338 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %339 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  store i32 %337, i32* %341, align 4
  %342 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %343 = load i32, i32* @RADIO_2056_RX_RXIQCAL_RXMUX, align 4
  %344 = load i32, i32* @RADIO_2056_RX1, align 4
  %345 = or i32 %343, %344
  %346 = call i8* @read_radio_reg(%struct.brcms_phy* %342, i32 %345)
  %347 = ptrtoint i8* %346 to i32
  %348 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %349 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 1
  store i32 %347, i32* %351, align 4
  %352 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %353 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = icmp sge i32 %355, 5
  br i1 %356, label %357, label %378

357:                                              ; preds = %331
  %358 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %359 = load i32, i32* @RADIO_2056_RX_RXSPARE2, align 4
  %360 = load i32, i32* @RADIO_2056_RX1, align 4
  %361 = or i32 %359, %360
  %362 = call i8* @read_radio_reg(%struct.brcms_phy* %358, i32 %361)
  %363 = ptrtoint i8* %362 to i32
  %364 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %365 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 2
  store i32 %363, i32* %367, align 4
  %368 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %369 = load i32, i32* @RADIO_2056_TX_TXSPARE2, align 4
  %370 = load i32, i32* @RADIO_2056_TX0, align 4
  %371 = or i32 %369, %370
  %372 = call i8* @read_radio_reg(%struct.brcms_phy* %368, i32 %371)
  %373 = ptrtoint i8* %372 to i32
  %374 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %375 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 3
  store i32 %373, i32* %377, align 4
  br label %378

378:                                              ; preds = %357, %331
  %379 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %380 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = call i64 @CHSPEC_IS5G(i32 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %458

384:                                              ; preds = %378
  %385 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %386 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = icmp sge i32 %388, 5
  br i1 %389, label %390, label %418

390:                                              ; preds = %384
  %391 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %392 = load i32, i32* @RADIO_2056_RX_LNAA_MASTER, align 4
  %393 = load i32, i32* @RADIO_2056_RX1, align 4
  %394 = or i32 %392, %393
  %395 = call i8* @read_radio_reg(%struct.brcms_phy* %391, i32 %394)
  %396 = ptrtoint i8* %395 to i32
  %397 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %398 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %397, i32 0, i32 0
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 4
  store i32 %396, i32* %400, align 4
  %401 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %402 = load i32, i32* @RADIO_2056_RX_LNAA_MASTER, align 4
  %403 = load i32, i32* @RADIO_2056_RX1, align 4
  %404 = or i32 %402, %403
  %405 = call i32 @write_radio_reg(%struct.brcms_phy* %401, i32 %404, i32 64)
  %406 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %407 = load i32, i32* @RADIO_2056_TX_TXSPARE2, align 4
  %408 = load i32, i32* @RADIO_2056_TX0, align 4
  %409 = or i32 %407, %408
  %410 = load i32, i32* %7, align 4
  %411 = call i32 @write_radio_reg(%struct.brcms_phy* %406, i32 %409, i32 %410)
  %412 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %413 = load i32, i32* @RADIO_2056_RX_RXSPARE2, align 4
  %414 = load i32, i32* @RADIO_2056_RX1, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* %7, align 4
  %417 = call i32 @write_radio_reg(%struct.brcms_phy* %412, i32 %415, i32 %416)
  br label %447

418:                                              ; preds = %384
  %419 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %420 = load i32, i32* @RADIO_2056_RX_LNAA_TUNE, align 4
  %421 = load i32, i32* @RADIO_2056_RX1, align 4
  %422 = or i32 %420, %421
  %423 = call i8* @read_radio_reg(%struct.brcms_phy* %419, i32 %422)
  %424 = ptrtoint i8* %423 to i32
  %425 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %426 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %425, i32 0, i32 0
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 4
  store i32 %424, i32* %428, align 4
  %429 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %430 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %429, i32 0, i32 0
  %431 = load i32*, i32** %430, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 2
  %433 = load i32, i32* %432, align 4
  %434 = and i32 %433, 240
  %435 = ashr i32 %434, 8
  store i32 %435, i32* %5, align 4
  %436 = load i32, i32* %5, align 4
  %437 = icmp sle i32 %436, 7
  %438 = zext i1 %437 to i64
  %439 = select i1 %437, i32 15, i32 0
  store i32 %439, i32* %5, align 4
  %440 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %441 = load i32, i32* @RADIO_2056_RX_LNAA_TUNE, align 4
  %442 = load i32, i32* @RADIO_2056_RX1, align 4
  %443 = or i32 %441, %442
  %444 = load i32, i32* %5, align 4
  %445 = shl i32 %444, 8
  %446 = call i32 @mod_radio_reg(%struct.brcms_phy* %440, i32 %443, i32 240, i32 %445)
  br label %447

447:                                              ; preds = %418, %390
  %448 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %449 = load i32, i32* @RADIO_2056_TX_RXIQCAL_TXMUX, align 4
  %450 = load i32, i32* @RADIO_2056_TX0, align 4
  %451 = or i32 %449, %450
  %452 = call i32 @write_radio_reg(%struct.brcms_phy* %448, i32 %451, i32 9)
  %453 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %454 = load i32, i32* @RADIO_2056_RX_RXIQCAL_RXMUX, align 4
  %455 = load i32, i32* @RADIO_2056_RX1, align 4
  %456 = or i32 %454, %455
  %457 = call i32 @write_radio_reg(%struct.brcms_phy* %453, i32 %456, i32 9)
  br label %532

458:                                              ; preds = %378
  %459 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %460 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = icmp sge i32 %462, 5
  br i1 %463, label %464, label %492

464:                                              ; preds = %458
  %465 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %466 = load i32, i32* @RADIO_2056_RX_LNAG_MASTER, align 4
  %467 = load i32, i32* @RADIO_2056_RX1, align 4
  %468 = or i32 %466, %467
  %469 = call i8* @read_radio_reg(%struct.brcms_phy* %465, i32 %468)
  %470 = ptrtoint i8* %469 to i32
  %471 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %472 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %471, i32 0, i32 0
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 4
  store i32 %470, i32* %474, align 4
  %475 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %476 = load i32, i32* @RADIO_2056_RX_LNAG_MASTER, align 4
  %477 = load i32, i32* @RADIO_2056_RX1, align 4
  %478 = or i32 %476, %477
  %479 = call i32 @write_radio_reg(%struct.brcms_phy* %475, i32 %478, i32 64)
  %480 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %481 = load i32, i32* @RADIO_2056_TX_TXSPARE2, align 4
  %482 = load i32, i32* @RADIO_2056_TX0, align 4
  %483 = or i32 %481, %482
  %484 = load i32, i32* %6, align 4
  %485 = call i32 @write_radio_reg(%struct.brcms_phy* %480, i32 %483, i32 %484)
  %486 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %487 = load i32, i32* @RADIO_2056_RX_RXSPARE2, align 4
  %488 = load i32, i32* @RADIO_2056_RX1, align 4
  %489 = or i32 %487, %488
  %490 = load i32, i32* %6, align 4
  %491 = call i32 @write_radio_reg(%struct.brcms_phy* %486, i32 %489, i32 %490)
  br label %521

492:                                              ; preds = %458
  %493 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %494 = load i32, i32* @RADIO_2056_RX_LNAG_TUNE, align 4
  %495 = load i32, i32* @RADIO_2056_RX1, align 4
  %496 = or i32 %494, %495
  %497 = call i8* @read_radio_reg(%struct.brcms_phy* %493, i32 %496)
  %498 = ptrtoint i8* %497 to i32
  %499 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %500 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %499, i32 0, i32 0
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 4
  store i32 %498, i32* %502, align 4
  %503 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %504 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %503, i32 0, i32 0
  %505 = load i32*, i32** %504, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 2
  %507 = load i32, i32* %506, align 4
  %508 = and i32 %507, 240
  %509 = ashr i32 %508, 8
  store i32 %509, i32* %5, align 4
  %510 = load i32, i32* %5, align 4
  %511 = icmp sle i32 %510, 7
  %512 = zext i1 %511 to i64
  %513 = select i1 %511, i32 15, i32 0
  store i32 %513, i32* %5, align 4
  %514 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %515 = load i32, i32* @RADIO_2056_RX_LNAG_TUNE, align 4
  %516 = load i32, i32* @RADIO_2056_RX1, align 4
  %517 = or i32 %515, %516
  %518 = load i32, i32* %5, align 4
  %519 = shl i32 %518, 8
  %520 = call i32 @mod_radio_reg(%struct.brcms_phy* %514, i32 %517, i32 240, i32 %519)
  br label %521

521:                                              ; preds = %492, %464
  %522 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %523 = load i32, i32* @RADIO_2056_TX_RXIQCAL_TXMUX, align 4
  %524 = load i32, i32* @RADIO_2056_TX0, align 4
  %525 = or i32 %523, %524
  %526 = call i32 @write_radio_reg(%struct.brcms_phy* %522, i32 %525, i32 6)
  %527 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %528 = load i32, i32* @RADIO_2056_RX_RXIQCAL_RXMUX, align 4
  %529 = load i32, i32* @RADIO_2056_RX1, align 4
  %530 = or i32 %528, %529
  %531 = call i32 @write_radio_reg(%struct.brcms_phy* %527, i32 %530, i32 6)
  br label %532

532:                                              ; preds = %521, %447
  br label %533

533:                                              ; preds = %532, %330
  br label %534

534:                                              ; preds = %533, %124
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i8* @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, i32, i32, %struct.TYPE_2__*, i64, %struct.ieee80211_hw*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@RTL818X_RX_CONF_MGMT = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_DATA = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_BROADCAST = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_NICMAC = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_BSSID = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_RX_AUTORESETPHY = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_ONLYERLPKT = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_MULTICAST = common dso_local global i32 0, align 4
@RTL818X_TX_AGC_CTL_PERPACKET_GAIN_SHIFT = common dso_local global i32 0, align 4
@RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL_SHIFT = common dso_local global i32 0, align 4
@RTL818X_TX_AGC_CTL_FEEDBACK_ANT = common dso_local global i32 0, align 4
@RTL818X_TX_CONF_HW_SEQNUM = common dso_local global i32 0, align 4
@RTL818X_TX_CONF_DISREQQSIZE = common dso_local global i32 0, align 4
@RETRY_COUNT = common dso_local global i32 0, align 4
@RTL818X_CW_CONF_PERPACKET_CW_SHIFT = common dso_local global i32 0, align 4
@RTL818X_CW_CONF_PERPACKET_RETRY_SHIFT = common dso_local global i32 0, align 4
@RTL818X_TX_CONF_CW_MIN = common dso_local global i32 0, align 4
@RTL818X_TX_CONF_NO_ICV = common dso_local global i32 0, align 4
@RTL818X_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@RTL818X_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@rtl8187_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8187_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8187_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  store %struct.rtl8187_priv* %8, %struct.rtl8187_priv** %3, align 8
  %9 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call i32 @rtl8187_init_hw(%struct.ieee80211_hw* %17)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call i32 @rtl8187b_init_hw(%struct.ieee80211_hw* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %240

27:                                               ; preds = %22
  %28 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %29 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %28, i32 0, i32 6
  %30 = call i32 @init_usb_anchor(i32* %29)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %32, i32 0, i32 5
  store %struct.ieee80211_hw* %31, %struct.ieee80211_hw** %33, align 8
  %34 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %35 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %111

38:                                               ; preds = %27
  %39 = load i32, i32* @RTL818X_RX_CONF_MGMT, align 4
  %40 = load i32, i32* @RTL818X_RX_CONF_DATA, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RTL818X_RX_CONF_BROADCAST, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RTL818X_RX_CONF_NICMAC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RTL818X_RX_CONF_BSSID, align 4
  %47 = or i32 %45, %46
  %48 = or i32 %47, 57344
  %49 = or i32 %48, 7168
  %50 = load i32, i32* @RTL818X_RX_CONF_RX_AUTORESETPHY, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RTL818X_RX_CONF_ONLYERLPKT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RTL818X_RX_CONF_MULTICAST, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %58 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %60 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %59, i32* %63, i32 %64)
  %66 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %67 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %68 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %66, i32* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @RTL818X_TX_AGC_CTL_PERPACKET_GAIN_SHIFT, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL_SHIFT, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* @RTL818X_TX_AGC_CTL_FEEDBACK_ANT, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %85 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %86 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %84, i32* %88, i32 %89)
  %91 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %92 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %93 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* @RTL818X_TX_CONF_HW_SEQNUM, align 4
  %97 = load i32, i32* @RTL818X_TX_CONF_DISREQQSIZE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @RETRY_COUNT, align 4
  %100 = shl i32 %99, 8
  %101 = or i32 %98, %100
  %102 = load i32, i32* @RETRY_COUNT, align 4
  %103 = shl i32 %102, 0
  %104 = or i32 %101, %103
  %105 = or i32 %104, 14680064
  %106 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %91, i32* %95, i32 %105)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = call i32 @rtl8187_init_urbs(%struct.ieee80211_hw* %107)
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %110 = call i32 @rtl8187b_init_status_urb(%struct.ieee80211_hw* %109)
  br label %240

111:                                              ; preds = %27
  %112 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %113 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %114 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 6
  %117 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %112, i32* %116, i32 65535)
  %118 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %119 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %120 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %118, i32* %124, i32 -1)
  %126 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %127 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %128 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %127, i32 0, i32 3
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %126, i32* %132, i32 -1)
  %134 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %135 = call i32 @rtl8187_init_urbs(%struct.ieee80211_hw* %134)
  %136 = load i32, i32* @RTL818X_RX_CONF_ONLYERLPKT, align 4
  %137 = load i32, i32* @RTL818X_RX_CONF_RX_AUTORESETPHY, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @RTL818X_RX_CONF_BSSID, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @RTL818X_RX_CONF_MGMT, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @RTL818X_RX_CONF_DATA, align 4
  %144 = or i32 %142, %143
  %145 = or i32 %144, 57344
  %146 = or i32 %145, 7168
  %147 = load i32, i32* @RTL818X_RX_CONF_BROADCAST, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @RTL818X_RX_CONF_NICMAC, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %153 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %155 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %156 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %155, i32 0, i32 3
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 4
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %154, i32* %158, i32 %159)
  %161 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %162 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %163 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %162, i32 0, i32 3
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  %166 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %161, i32* %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* @RTL818X_CW_CONF_PERPACKET_CW_SHIFT, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %4, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* @RTL818X_CW_CONF_PERPACKET_RETRY_SHIFT, align 4
  %172 = load i32, i32* %4, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %4, align 4
  %174 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %175 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %176 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %175, i32 0, i32 3
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %174, i32* %178, i32 %179)
  %181 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %182 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %183 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %182, i32 0, i32 3
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %181, i32* %185)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* @RTL818X_TX_AGC_CTL_PERPACKET_GAIN_SHIFT, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %4, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* @RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL_SHIFT, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %4, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* @RTL818X_TX_AGC_CTL_FEEDBACK_ANT, align 4
  %196 = xor i32 %195, -1
  %197 = load i32, i32* %4, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %4, align 4
  %199 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %200 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %201 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %200, i32 0, i32 3
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %199, i32* %203, i32 %204)
  %206 = load i32, i32* @RTL818X_TX_CONF_CW_MIN, align 4
  %207 = or i32 %206, 14680064
  %208 = load i32, i32* @RTL818X_TX_CONF_NO_ICV, align 4
  %209 = or i32 %207, %208
  store i32 %209, i32* %4, align 4
  %210 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %211 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %212 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %211, i32 0, i32 3
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 1
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %210, i32* %214, i32 %215)
  %217 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %218 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %219 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %218, i32 0, i32 3
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %217, i32* %221)
  store i32 %222, i32* %4, align 4
  %223 = load i32, i32* @RTL818X_CMD_TX_ENABLE, align 4
  %224 = load i32, i32* %4, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %4, align 4
  %226 = load i32, i32* @RTL818X_CMD_RX_ENABLE, align 4
  %227 = load i32, i32* %4, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %4, align 4
  %229 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %230 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %231 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %230, i32 0, i32 3
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i32, i32* %4, align 4
  %235 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %229, i32* %233, i32 %234)
  %236 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %237 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %236, i32 0, i32 2
  %238 = load i32, i32* @rtl8187_work, align 4
  %239 = call i32 @INIT_DELAYED_WORK(i32* %237, i32 %238)
  br label %240

240:                                              ; preds = %111, %38, %26
  %241 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %242 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %241, i32 0, i32 1
  %243 = call i32 @mutex_unlock(i32* %242)
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl8187_init_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8187b_init_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl8187_init_urbs(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8187b_init_status_urb(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

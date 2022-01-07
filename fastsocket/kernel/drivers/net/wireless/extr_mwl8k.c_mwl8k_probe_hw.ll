; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_probe_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_probe_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_8__*, %struct.mwl8k_priv* }
%struct.TYPE_8__ = type { i32 }
%struct.mwl8k_priv = type { i32, i32, i32, %struct.TYPE_7__*, i64, i64, i32, %struct.TYPE_6__*, i32, i32, i64, i32, i64, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [66 x i8] c"Driver does not have AP firmware image support for this hardware\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@rxd_sta_ops = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@MWL8K_HIU_A2H_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@MWL8K_HIU_A2H_INTERRUPT_MASK = common dso_local global i64 0, align 8
@MWL8K_A2H_INT_TX_DONE = common dso_local global i32 0, align 4
@MWL8K_A2H_INT_RX_READY = common dso_local global i32 0, align 4
@MWL8K_A2H_INT_BA_WATCHDOG = common dso_local global i32 0, align 4
@MWL8K_HIU_A2H_INTERRUPT_CLEAR_SEL = common dso_local global i64 0, align 8
@MWL8K_A2H_INT_OPC_DONE = common dso_local global i32 0, align 4
@MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK = common dso_local global i64 0, align 8
@mwl8k_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@MWL8K_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to register IRQ handler\0A\00", align 1
@MWL8K_A2H_EVENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot initialise firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Cannot disable\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Cannot clear MAC address\0A\00", align 1
@MWL8K_RF_ANTENNA_RX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to set # of RX antennas\00", align 1
@MWL8K_RF_ANTENNA_TX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to set # of TX antennas\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"%s v%d, %pm, %s firmware %u.%u.%u.%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"STA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mwl8k_probe_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_probe_hw(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mwl8k_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 1
  %9 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  store %struct.mwl8k_priv* %9, %struct.mwl8k_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %15, i32 0, i32 7
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %20, i32 0, i32 13
  store i32* %19, i32** %21, align 8
  %22 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %22, i32 0, i32 13
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %14
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i32 @wiphy_err(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %293

33:                                               ; preds = %14
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %35, i32 0, i32 13
  store i32* @rxd_sta_ops, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %33
  %38 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %39 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %43 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %42, i32 0, i32 12
  store i64 0, i64* %43, align 8
  %44 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %45 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %44, i32 0, i32 11
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %48 = call i32 @mwl8k_rxq_init(%struct.ieee80211_hw* %47, i32 0)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %293

52:                                               ; preds = %37
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %54 = load i32, i32* @INT_MAX, align 4
  %55 = call i32 @rxq_refill(%struct.ieee80211_hw* %53, i32 0, i32 %54)
  %56 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %57 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %56, i32 0, i32 10
  store i64 0, i64* %57, align 8
  %58 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %59 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %52
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %64 = call i32 @mwl8k_init_txqs(%struct.ieee80211_hw* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %277

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %71 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_STATUS, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @iowrite32(i32 0, i64 %74)
  %76 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %77 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_MASK, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @iowrite32(i32 0, i64 %80)
  %82 = load i32, i32* @MWL8K_A2H_INT_TX_DONE, align 4
  %83 = load i32, i32* @MWL8K_A2H_INT_RX_READY, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @MWL8K_A2H_INT_BA_WATCHDOG, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %88 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_CLEAR_SEL, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @iowrite32(i32 %86, i64 %91)
  %93 = load i32, i32* @MWL8K_A2H_INT_OPC_DONE, align 4
  %94 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %95 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @iowrite32(i32 %93, i64 %98)
  %100 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %101 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %100, i32 0, i32 3
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @mwl8k_interrupt, align 4
  %106 = load i32, i32* @IRQF_SHARED, align 4
  %107 = load i32, i32* @MWL8K_NAME, align 4
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %109 = call i32 @request_irq(i32 %104, i32 %105, i32 %106, i32 %107, %struct.ieee80211_hw* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %69
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %114 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = call i32 @wiphy_err(%struct.TYPE_8__* %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %277

117:                                              ; preds = %69
  %118 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %119 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %124 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @memset(i32 %125, i32 0, i32 4)
  br label %127

127:                                              ; preds = %122, %117
  %128 = load i32, i32* @MWL8K_A2H_EVENTS, align 4
  %129 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %130 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_MASK, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @iowrite32(i32 %128, i64 %133)
  %135 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %136 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %127
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %141 = call i32 @mwl8k_cmd_get_hw_spec_ap(%struct.ieee80211_hw* %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %146 = call i32 @mwl8k_init_txqs(%struct.ieee80211_hw* %145)
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %144, %139
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %152 = call i32 @mwl8k_cmd_set_hw_spec(%struct.ieee80211_hw* %151)
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %150, %147
  br label %157

154:                                              ; preds = %127
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %156 = call i32 @mwl8k_cmd_get_hw_spec_sta(%struct.ieee80211_hw* %155)
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %154, %153
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %162 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = call i32 @wiphy_err(%struct.TYPE_8__* %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %263

165:                                              ; preds = %157
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %167 = call i32 @mwl8k_cmd_radio_disable(%struct.ieee80211_hw* %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %172 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %171, i32 0, i32 0
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = call i32 @wiphy_err(%struct.TYPE_8__* %173, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %263

175:                                              ; preds = %165
  %176 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %177 = call i32 @mwl8k_cmd_set_mac_addr(%struct.ieee80211_hw* %176, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %182 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %181, i32 0, i32 0
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = call i32 @wiphy_err(%struct.TYPE_8__* %183, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %263

185:                                              ; preds = %175
  %186 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %187 = load i32, i32* @MWL8K_RF_ANTENNA_RX, align 4
  %188 = call i32 @mwl8k_cmd_rf_antenna(%struct.ieee80211_hw* %186, i32 %187, i32 3)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %193 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %192, i32 0, i32 0
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = call i32 @wiphy_warn(%struct.TYPE_8__* %194, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %196

196:                                              ; preds = %191, %185
  %197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %198 = load i32, i32* @MWL8K_RF_ANTENNA_TX, align 4
  %199 = call i32 @mwl8k_cmd_rf_antenna(%struct.ieee80211_hw* %197, i32 %198, i32 7)
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %5, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %204 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %203, i32 0, i32 0
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = call i32 @wiphy_warn(%struct.TYPE_8__* %205, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %207

207:                                              ; preds = %202, %196
  %208 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %209 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_MASK, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @iowrite32(i32 0, i64 %212)
  %214 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %215 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %214, i32 0, i32 3
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %220 = call i32 @free_irq(i32 %218, %struct.ieee80211_hw* %219)
  %221 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %222 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %221, i32 0, i32 0
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %225 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %224, i32 0, i32 7
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %230 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %233 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %232, i32 0, i32 0
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %238 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %243 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %244 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = ashr i32 %245, 24
  %247 = and i32 %246, 255
  %248 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %249 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = ashr i32 %250, 16
  %252 = and i32 %251, 255
  %253 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %254 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = ashr i32 %255, 8
  %257 = and i32 %256, 255
  %258 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %259 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = and i32 %260, 255
  %262 = call i32 @wiphy_info(%struct.TYPE_8__* %223, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %228, i32 %231, i32 %236, i8* %242, i32 %247, i32 %252, i32 %257, i32 %261)
  store i32 0, i32* %2, align 4
  br label %297

263:                                              ; preds = %180, %170, %160
  %264 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %265 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_MASK, align 8
  %268 = add nsw i64 %266, %267
  %269 = call i32 @iowrite32(i32 0, i64 %268)
  %270 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %271 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %270, i32 0, i32 3
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %276 = call i32 @free_irq(i32 %274, %struct.ieee80211_hw* %275)
  br label %277

277:                                              ; preds = %263, %112, %67
  store i32 0, i32* %6, align 4
  br label %278

278:                                              ; preds = %287, %277
  %279 = load i32, i32* %6, align 4
  %280 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %281 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %280)
  %282 = icmp slt i32 %279, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %285 = load i32, i32* %6, align 4
  %286 = call i32 @mwl8k_txq_deinit(%struct.ieee80211_hw* %284, i32 %285)
  br label %287

287:                                              ; preds = %283
  %288 = load i32, i32* %6, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %6, align 4
  br label %278

290:                                              ; preds = %278
  %291 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %292 = call i32 @mwl8k_rxq_deinit(%struct.ieee80211_hw* %291, i32 0)
  br label %293

293:                                              ; preds = %290, %51, %26
  %294 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %295 = call i32 @mwl8k_hw_reset(%struct.mwl8k_priv* %294)
  %296 = load i32, i32* %5, align 4
  store i32 %296, i32* %2, align 4
  br label %297

297:                                              ; preds = %293, %207
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local i32 @wiphy_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mwl8k_rxq_init(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rxq_refill(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @mwl8k_init_txqs(%struct.ieee80211_hw*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mwl8k_cmd_get_hw_spec_ap(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_set_hw_spec(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_get_hw_spec_sta(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_radio_disable(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_set_mac_addr(%struct.ieee80211_hw*, i32*, i8*) #1

declare dso_local i32 @mwl8k_cmd_rf_antenna(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @wiphy_warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @wiphy_info(%struct.TYPE_8__*, i8*, i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mwl8k_tx_queues(%struct.mwl8k_priv*) #1

declare dso_local i32 @mwl8k_txq_deinit(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_rxq_deinit(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_hw_reset(%struct.mwl8k_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

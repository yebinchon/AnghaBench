; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_commit_rxon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_commit_rxon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.iwl_priv = type { i64, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_9__, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.iwl_rxon_cmd = type { i32 }

@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NUM_IWL_RXON_CTX = common dso_local global i32 0, align 4
@RXON_FLG_TSF2HOST_MSK = common dso_local global i32 0, align 4
@RXON_FLG_SELF_CTS_EN = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_SHORT_SLOT_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid RXON configuration. Not committing.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STATUS_CHANNEL_SWITCH_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"abort channel switch on %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error setting RXON_ASSOC (%d)\0A\00", align 1
@iwlwifi_mod_params = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [88 x i8] c"Going to commit RXON\0A  * with%s RXON_FILTER_ASSOC_MSK\0A  * channel = %d\0A  * bssid = %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_commit_rxon(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca %struct.iwl_rxon_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  %9 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %9, i32 0, i32 4
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.iwl_rxon_cmd*
  store %struct.iwl_rxon_cmd* %12, %struct.iwl_rxon_cmd** %6, align 8
  %13 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %14 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 4
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %27 = call i32 @iwl_is_alive(%struct.iwl_priv* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %213

32:                                               ; preds = %2
  %33 = load i32, i32* @NUM_IWL_RXON_CTX, align 4
  %34 = icmp ne i32 %33, 2
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  %37 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %213

42:                                               ; preds = %32
  %43 = load i32, i32* @RXON_FLG_TSF2HOST_MSK, align 4
  %44 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %45 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %50 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %51 = call i32 @iwl_calc_basic_rates(%struct.iwl_priv* %49, %struct.iwl_rxon_context* %50)
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %53 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* @RXON_FLG_SELF_CTS_EN, align 4
  %59 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %60 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %42
  %65 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %66 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %71 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %69, %64
  %78 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %79 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %77, %69
  %86 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %87 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %88 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %100

92:                                               ; preds = %77
  %93 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %96 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %94
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %92, %85
  %101 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %102 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %103 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @iwl_print_rx_config_cmd(%struct.iwl_priv* %101, i32 %104)
  %106 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %107 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %108 = call i32 @iwl_check_rxon_cmd(%struct.iwl_priv* %106, %struct.iwl_rxon_context* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %113 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %112, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %213

116:                                              ; preds = %100
  %117 = load i32, i32* @STATUS_CHANNEL_SWITCH_PENDING, align 4
  %118 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %119 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %118, i32 0, i32 2
  %120 = call i64 @test_bit(i32 %117, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %116
  %123 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %124 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %127 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %125, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %122
  %132 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %133 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %134 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @le16_to_cpu(i64 %135)
  %137 = call i32 @IWL_DEBUG_11H(%struct.iwl_priv* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %139 = call i32 @iwl_chswitch_done(%struct.iwl_priv* %138, i32 0)
  br label %140

140:                                              ; preds = %131, %122, %116
  %141 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %142 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %143 = call i32 @iwl_full_rxon_required(%struct.iwl_priv* %141, %struct.iwl_rxon_context* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %168, label %145

145:                                              ; preds = %140
  %146 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %147 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %148 = call i32 @iwlagn_send_rxon_assoc(%struct.iwl_priv* %146, %struct.iwl_rxon_context* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %3, align 4
  br label %213

156:                                              ; preds = %145
  %157 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %158 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %159 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %158, i32 0, i32 0
  %160 = call i32 @memcpy(%struct.iwl_rxon_cmd* %157, %struct.TYPE_9__* %159, i32 4)
  %161 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %162 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %163 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @iwl_set_tx_power(%struct.iwl_priv* %161, i32 %164, i32 0)
  %166 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %167 = call i32 @iwl_power_update_mode(%struct.iwl_priv* %166, i32 1)
  store i32 0, i32* %3, align 4
  br label %213

168:                                              ; preds = %140
  %169 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %170 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i32 @iwl_set_rxon_hwcrypto(%struct.iwl_priv* %169, %struct.iwl_rxon_context* %170, i32 %174)
  %176 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %181 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %182 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @le16_to_cpu(i64 %184)
  %186 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %187 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %176, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i8* %180, i32 %185, i32 %189)
  %191 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %192 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %193 = call i32 @iwlagn_rxon_disconn(%struct.iwl_priv* %191, %struct.iwl_rxon_context* %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %168
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %3, align 4
  br label %213

198:                                              ; preds = %168
  %199 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %200 = call i32 @iwlagn_set_pan_params(%struct.iwl_priv* %199)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* %8, align 4
  store i32 %204, i32* %3, align 4
  br label %213

205:                                              ; preds = %198
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %210 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %211 = call i32 @iwlagn_rxon_connect(%struct.iwl_priv* %209, %struct.iwl_rxon_context* %210)
  store i32 %211, i32* %3, align 4
  br label %213

212:                                              ; preds = %205
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %212, %208, %203, %196, %156, %151, %111, %41, %29
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_is_alive(%struct.iwl_priv*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @iwl_calc_basic_rates(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwl_print_rx_config_cmd(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_check_rxon_cmd(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_11H(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @iwl_chswitch_done(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_full_rxon_required(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwlagn_send_rxon_assoc(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @memcpy(%struct.iwl_rxon_cmd*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @iwl_set_tx_power(%struct.iwl_priv*, i32, i32) #1

declare dso_local i32 @iwl_power_update_mode(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_set_rxon_hwcrypto(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i8*, i32, i32) #1

declare dso_local i32 @iwlagn_rxon_disconn(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwlagn_set_pan_params(%struct.iwl_priv*) #1

declare dso_local i32 @iwlagn_rxon_connect(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

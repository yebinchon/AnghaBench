; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_commit_rxon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_commit_rxon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, %struct.il_rxon_cmd, i64, %struct.TYPE_4__*, i32, i32 }
%struct.il_rxon_cmd = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RXON_FLG_TSF2HOST_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid RXON configuration.  Not committing.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S_CHANNEL_SWITCH_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"abort channel switch on %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error setting RXON_ASSOC (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Toggling associated bit on current RXON\0A\00", align 1
@C_RXON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Error clearing ASSOC_MSK (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to restore WEP keys (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"Sending RXON\0A* with%s RXON_FILTER_ASSOC_MSK\0A* channel = %d\0A* bssid = %pM\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Error setting new RXON (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Return from !new_assoc RXON.\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Error sending TX power (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_commit_rxon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_commit_rxon(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rxon_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 6
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.il_rxon_cmd*
  store %struct.il_rxon_cmd* %10, %struct.il_rxon_cmd** %4, align 8
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %22 = call i32 @il_is_alive(%struct.il_priv* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %233

27:                                               ; preds = %1
  %28 = load i32, i32* @RXON_FLG_TSF2HOST_MSK, align 4
  %29 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %35 = call i32 @il_check_rxon_cmd(%struct.il_priv* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %233

42:                                               ; preds = %27
  %43 = load i32, i32* @S_CHANNEL_SWITCH_PENDING, align 4
  %44 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %45 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %44, i32 0, i32 5
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %48
  %58 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @le16_to_cpu(i64 %60)
  %62 = call i32 @D_11H(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %64 = call i32 @il_chswitch_done(%struct.il_priv* %63, i32 0)
  br label %65

65:                                               ; preds = %57, %48, %42
  %66 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %67 = call i32 @il_full_rxon_required(%struct.il_priv* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %90, label %69

69:                                               ; preds = %65
  %70 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %71 = call i32 @il_send_rxon_assoc(%struct.il_priv* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %233

78:                                               ; preds = %69
  %79 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %80 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %81 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %80, i32 0, i32 2
  %82 = call i32 @memcpy(%struct.il_rxon_cmd* %79, %struct.il_rxon_cmd* %81, i32 24)
  %83 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %84 = call i32 @il_print_rx_config_cmd(%struct.il_priv* %83)
  %85 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %86 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %87 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @il_set_tx_power(%struct.il_priv* %85, i32 %88, i32 0)
  store i32 0, i32* %2, align 4
  br label %233

90:                                               ; preds = %65
  %91 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %92 = call i64 @il_is_associated(%struct.il_priv* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %134

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %134

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %102 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %106 = load i32, i32* @C_RXON, align 4
  %107 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %108 = call i32 @il_send_cmd_pdu(%struct.il_priv* %105, i32 %106, i32 24, %struct.il_rxon_cmd* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %97
  %112 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %113 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %114 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %233

120:                                              ; preds = %97
  %121 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %122 = call i32 @il_clear_ucode_stations(%struct.il_priv* %121)
  %123 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %124 = call i32 @il_restore_stations(%struct.il_priv* %123)
  %125 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %126 = call i32 @il4965_restore_default_wep_keys(%struct.il_priv* %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load i32, i32* %5, align 4
  %131 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %233

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %94, %90
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %139 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %140 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @le16_to_cpu(i64 %142)
  %144 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %145 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i8* %138, i32 %143, i32 %147)
  %149 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %150 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %151 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %150, i32 0, i32 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i32 @il_set_rxon_hwcrypto(%struct.il_priv* %149, i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %194, label %163

163:                                              ; preds = %134
  %164 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %165 = load i32, i32* @C_RXON, align 4
  %166 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %167 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %166, i32 0, i32 2
  %168 = call i32 @il_send_cmd_pdu(%struct.il_priv* %164, i32 %165, i32 24, %struct.il_rxon_cmd* %167)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %163
  %172 = load i32, i32* %5, align 4
  %173 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %233

175:                                              ; preds = %163
  %176 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %177 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %178 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %179 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %178, i32 0, i32 2
  %180 = call i32 @memcpy(%struct.il_rxon_cmd* %177, %struct.il_rxon_cmd* %179, i32 24)
  %181 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %182 = call i32 @il_clear_ucode_stations(%struct.il_priv* %181)
  %183 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %184 = call i32 @il_restore_stations(%struct.il_priv* %183)
  %185 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %186 = call i32 @il4965_restore_default_wep_keys(%struct.il_priv* %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %175
  %190 = load i32, i32* %5, align 4
  %191 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %233

193:                                              ; preds = %175
  br label %194

194:                                              ; preds = %193, %134
  %195 = load i32, i32* %6, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %216

197:                                              ; preds = %194
  %198 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %199 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %198, i32 0, i32 3
  store i64 0, i64* %199, align 8
  %200 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %201 = load i32, i32* @C_RXON, align 4
  %202 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %203 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %202, i32 0, i32 2
  %204 = call i32 @il_send_cmd_pdu(%struct.il_priv* %200, i32 %201, i32 24, %struct.il_rxon_cmd* %203)
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %197
  %208 = load i32, i32* %5, align 4
  %209 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %5, align 4
  store i32 %210, i32* %2, align 4
  br label %233

211:                                              ; preds = %197
  %212 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %213 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %214 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %213, i32 0, i32 2
  %215 = call i32 @memcpy(%struct.il_rxon_cmd* %212, %struct.il_rxon_cmd* %214, i32 24)
  br label %216

216:                                              ; preds = %211, %194
  %217 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %218 = call i32 @il_print_rx_config_cmd(%struct.il_priv* %217)
  %219 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %220 = call i32 @il4965_init_sensitivity(%struct.il_priv* %219)
  %221 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %222 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %223 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @il_set_tx_power(%struct.il_priv* %221, i32 %224, i32 1)
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* %5, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %216
  %229 = load i32, i32* %5, align 4
  %230 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %5, align 4
  store i32 %231, i32* %2, align 4
  br label %233

232:                                              ; preds = %216
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %232, %228, %207, %189, %171, %129, %111, %78, %74, %38, %24
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32 @il_is_alive(%struct.il_priv*) #1

declare dso_local i32 @il_check_rxon_cmd(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @D_11H(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @il_chswitch_done(%struct.il_priv*, i32) #1

declare dso_local i32 @il_full_rxon_required(%struct.il_priv*) #1

declare dso_local i32 @il_send_rxon_assoc(%struct.il_priv*) #1

declare dso_local i32 @memcpy(%struct.il_rxon_cmd*, %struct.il_rxon_cmd*, i32) #1

declare dso_local i32 @il_print_rx_config_cmd(%struct.il_priv*) #1

declare dso_local i32 @il_set_tx_power(%struct.il_priv*, i32, i32) #1

declare dso_local i64 @il_is_associated(%struct.il_priv*) #1

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.il_rxon_cmd*) #1

declare dso_local i32 @il_clear_ucode_stations(%struct.il_priv*) #1

declare dso_local i32 @il_restore_stations(%struct.il_priv*) #1

declare dso_local i32 @il4965_restore_default_wep_keys(%struct.il_priv*) #1

declare dso_local i32 @il_set_rxon_hwcrypto(%struct.il_priv*, i32) #1

declare dso_local i32 @il4965_init_sensitivity(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

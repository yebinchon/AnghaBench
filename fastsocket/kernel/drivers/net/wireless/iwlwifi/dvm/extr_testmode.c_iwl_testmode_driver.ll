; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_testmode.c_iwl_testmode_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_testmode.c_iwl_testmode_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.nlattr = type { i32 }
%struct.iwl_priv = type { i32, i8*, i32, i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.iwl_trans* }
%struct.TYPE_5__ = type { %struct.fw_img* }
%struct.fw_img = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_trans = type { i32 }
%struct.sk_buff = type { i32 }

@IWL_TM_ATTR_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Memory allocation fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IWL_TM_CMD_DEV2APP_SYNC_RSP = common dso_local global i64 0, align 8
@IWL_TM_ATTR_SYNC_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error sending msg : %d\0A\00", align 1
@IWL_UCODE_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Error loading init ucode: %d\0A\00", align 1
@IWL_UCODE_REGULAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Error loading runtime ucode: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error starting the device: %d\0A\00", align 1
@IWL_UCODE_WOWLAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Error loading WOWLAN ucode: %d\0A\00", align 1
@IWL_TM_CMD_DEV2APP_EEPROM_RSP = common dso_local global i64 0, align 8
@IWL_TM_ATTR_EEPROM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@IWL_TM_ATTR_FIXRATE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"Missing fixrate setting\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"No uCode has not been loaded\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWL_UCODE_SECTION_INST = common dso_local global i64 0, align 8
@IWL_UCODE_SECTION_DATA = common dso_local global i64 0, align 8
@IWL_TM_ATTR_FW_TYPE = common dso_local global i64 0, align 8
@IWL_TM_ATTR_FW_INST_SIZE = common dso_local global i64 0, align 8
@IWL_TM_ATTR_FW_DATA_SIZE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"Unknown testmode driver command ID\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.nlattr**)* @iwl_testmode_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_testmode_driver(%struct.ieee80211_hw* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_trans*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fw_img*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %15)
  store %struct.iwl_priv* %16, %struct.iwl_priv** %6, align 8
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 7
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %18, align 8
  store %struct.iwl_trans* %19, %struct.iwl_trans** %7, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %21 = load i64, i64* @IWL_TM_ATTR_COMMAND, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i32 @nla_get_u32(%struct.nlattr* %23)
  switch i32 %24, label %288 [
    i32 133, label %25
    i32 130, label %75
    i32 135, label %86
    i32 129, label %93
    i32 128, label %113
    i32 132, label %139
    i32 134, label %192
    i32 131, label %211
  ]

25:                                               ; preds = %2
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %9, align 8
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 6
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @strlen(i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 20
  %43 = call %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32 %40, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %8, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %25
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %48 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %300

51:                                               ; preds = %25
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load i64, i64* @IWL_TM_ATTR_COMMAND, align 8
  %54 = load i64, i64* @IWL_TM_CMD_DEV2APP_SYNC_RSP, align 8
  %55 = call i32 @nla_put_u32(%struct.sk_buff* %52, i64 %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load i32, i32* @IWL_TM_ATTR_SYNC_RSP, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @nla_put(%struct.sk_buff* %58, i32 %59, i32 %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %51
  br label %295

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = call i32 @cfg80211_testmode_reply(%struct.sk_buff* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %65
  br label %293

75:                                               ; preds = %2
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %77 = load i32, i32* @IWL_UCODE_INIT, align 4
  %78 = call i32 @iwl_load_ucode_wait_alive(%struct.iwl_priv* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %75
  br label %293

86:                                               ; preds = %2
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %88 = call i32 @iwl_testmode_cfg_init_calib(%struct.iwl_priv* %87)
  %89 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %90 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %92 = call i32 @iwl_trans_stop_device(%struct.iwl_trans* %91)
  br label %293

93:                                               ; preds = %2
  %94 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %95 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %96 = call i32 @iwl_load_ucode_wait_alive(%struct.iwl_priv* %94, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %293

103:                                              ; preds = %93
  %104 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %105 = call i32 @iwl_alive_start(%struct.iwl_priv* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %103
  br label %293

113:                                              ; preds = %2
  %114 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %115 = call i32 @iwl_scan_cancel_timeout(%struct.iwl_priv* %114, i32 200)
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %117 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %119 = call i32 @iwl_trans_stop_device(%struct.iwl_trans* %118)
  %120 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %121 = load i32, i32* @IWL_UCODE_WOWLAN, align 4
  %122 = call i32 @iwl_load_ucode_wait_alive(%struct.iwl_priv* %120, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %113
  %126 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  br label %293

129:                                              ; preds = %113
  %130 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %131 = call i32 @iwl_alive_start(%struct.iwl_priv* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %129
  br label %293

139:                                              ; preds = %2
  %140 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %141 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %188

144:                                              ; preds = %139
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %146 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %149 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 20
  %152 = call %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32 %147, i32 %151)
  store %struct.sk_buff* %152, %struct.sk_buff** %8, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %154 = icmp ne %struct.sk_buff* %153, null
  br i1 %154, label %160, label %155

155:                                              ; preds = %144
  %156 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %157 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %300

160:                                              ; preds = %144
  %161 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %162 = load i64, i64* @IWL_TM_ATTR_COMMAND, align 8
  %163 = load i64, i64* @IWL_TM_CMD_DEV2APP_EEPROM_RSP, align 8
  %164 = call i32 @nla_put_u32(%struct.sk_buff* %161, i64 %162, i64 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %177, label %166

166:                                              ; preds = %160
  %167 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %168 = load i32, i32* @IWL_TM_ATTR_EEPROM, align 4
  %169 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %170 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %173 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @nla_put(%struct.sk_buff* %167, i32 %168, i32 %171, i8* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %166, %160
  br label %295

178:                                              ; preds = %166
  %179 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %180 = call i32 @cfg80211_testmode_reply(%struct.sk_buff* %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %183, %178
  br label %191

188:                                              ; preds = %139
  %189 = load i32, i32* @ENODATA, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %3, align 4
  br label %300

191:                                              ; preds = %187
  br label %293

192:                                              ; preds = %2
  %193 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %194 = load i64, i64* @IWL_TM_ATTR_FIXRATE, align 8
  %195 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %193, i64 %194
  %196 = load %struct.nlattr*, %struct.nlattr** %195, align 8
  %197 = icmp ne %struct.nlattr* %196, null
  br i1 %197, label %203, label %198

198:                                              ; preds = %192
  %199 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %200 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %199, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %201 = load i32, i32* @ENOMSG, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %3, align 4
  br label %300

203:                                              ; preds = %192
  %204 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %205 = load i64, i64* @IWL_TM_ATTR_FIXRATE, align 8
  %206 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %204, i64 %205
  %207 = load %struct.nlattr*, %struct.nlattr** %206, align 8
  %208 = call i32 @nla_get_u32(%struct.nlattr* %207)
  %209 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %210 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  br label %293

211:                                              ; preds = %2
  %212 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %213 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32 %214, i32 28)
  store %struct.sk_buff* %215, %struct.sk_buff** %8, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %217 = icmp ne %struct.sk_buff* %216, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %211
  %219 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %220 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %219, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %221 = load i32, i32* @ENOMEM, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %3, align 4
  br label %300

223:                                              ; preds = %211
  %224 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %225 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %223
  %229 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %230 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %229, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %231 = load i32, i32* @EINVAL, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %3, align 4
  br label %300

233:                                              ; preds = %223
  %234 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %235 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %234, i32 0, i32 5
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load %struct.fw_img*, %struct.fw_img** %237, align 8
  %239 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %240 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %238, i64 %241
  store %struct.fw_img* %242, %struct.fw_img** %14, align 8
  %243 = load %struct.fw_img*, %struct.fw_img** %14, align 8
  %244 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %243, i32 0, i32 0
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = load i64, i64* @IWL_UCODE_SECTION_INST, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %12, align 8
  %250 = load %struct.fw_img*, %struct.fw_img** %14, align 8
  %251 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %250, i32 0, i32 0
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = load i64, i64* @IWL_UCODE_SECTION_DATA, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %13, align 8
  br label %257

257:                                              ; preds = %233
  %258 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %259 = load i64, i64* @IWL_TM_ATTR_FW_TYPE, align 8
  %260 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %261 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @nla_put_u32(%struct.sk_buff* %258, i64 %259, i64 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %277, label %265

265:                                              ; preds = %257
  %266 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %267 = load i64, i64* @IWL_TM_ATTR_FW_INST_SIZE, align 8
  %268 = load i64, i64* %12, align 8
  %269 = call i32 @nla_put_u32(%struct.sk_buff* %266, i64 %267, i64 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %265
  %272 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %273 = load i64, i64* @IWL_TM_ATTR_FW_DATA_SIZE, align 8
  %274 = load i64, i64* %13, align 8
  %275 = call i32 @nla_put_u32(%struct.sk_buff* %272, i64 %273, i64 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %271, %265, %257
  br label %295

278:                                              ; preds = %271
  %279 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %280 = call i32 @cfg80211_testmode_reply(%struct.sk_buff* %279)
  store i32 %280, i32* %10, align 4
  %281 = load i32, i32* %10, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %278
  %284 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %285 = load i32, i32* %10, align 4
  %286 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %284, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %285)
  br label %287

287:                                              ; preds = %283, %278
  br label %293

288:                                              ; preds = %2
  %289 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %290 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %289, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %291 = load i32, i32* @ENOSYS, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %3, align 4
  br label %300

293:                                              ; preds = %287, %203, %191, %138, %125, %112, %99, %86, %85, %74
  %294 = load i32, i32* %10, align 4
  store i32 %294, i32* %3, align 4
  br label %300

295:                                              ; preds = %277, %177, %64
  %296 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %297 = call i32 @kfree_skb(%struct.sk_buff* %296)
  %298 = load i32, i32* @EMSGSIZE, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %3, align 4
  br label %300

300:                                              ; preds = %295, %293, %288, %228, %218, %198, %188, %155, %46
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @cfg80211_testmode_reply(%struct.sk_buff*) #1

declare dso_local i32 @iwl_load_ucode_wait_alive(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_testmode_cfg_init_calib(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_trans_stop_device(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_alive_start(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_scan_cancel_timeout(%struct.iwl_priv*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

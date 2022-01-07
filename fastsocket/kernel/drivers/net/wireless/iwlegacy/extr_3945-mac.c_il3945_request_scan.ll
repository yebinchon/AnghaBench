; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_request_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_request_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_11__, %struct.il3945_scan_cmd*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.il3945_scan_cmd = type { i32, i32, i8*, %struct.TYPE_14__, i32*, i32, %struct.TYPE_9__*, i8*, i8*, i32, i32 }
%struct.TYPE_14__ = type { i8*, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.il_host_cmd = type { i32, %struct.il3945_scan_cmd*, i32, i32 }
%struct.ieee80211_mgmt = type { i32 }

@CMD_SIZE_HUGE = common dso_local global i32 0, align 4
@C_SCAN = common dso_local global i32 0, align 4
@IL_MAX_SCAN_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Fail to allocate scan memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IL_PLCP_QUIET_THRESH = common dso_local global i32 0, align 4
@IL_ACTIVE_QUIET_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Scanning while associated...\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"suspend_time 0x%X beacon interval %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Kicking off active scan\0A\00", align 1
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Kicking off passive scan.\0A\00", align 1
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_AUTO_DETECT_MSK = common dso_local global i32 0, align 4
@RATE_1M_PLCP = common dso_local global i32 0, align 4
@RATE_6M_PLCP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid scan band\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IL_GOOD_CRC_TH_DEFAULT = common dso_local global i32 0, align 4
@IL_GOOD_CRC_TH_NEVER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"channel count %d\0A\00", align 1
@S_SCAN_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il3945_request_scan(%struct.il_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.il_host_cmd, align 8
  %7 = alloca %struct.il3945_scan_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %19 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 0
  store i32 88, i32* %19, align 8
  %20 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 1
  store %struct.il3945_scan_cmd* null, %struct.il3945_scan_cmd** %20, align 8
  %21 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 2
  %22 = load i32, i32* @CMD_SIZE_HUGE, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 3
  %24 = load i32, i32* @C_SCAN, align 4
  store i32 %24, i32* %23, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %25 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 5
  %27 = call i32 @lockdep_assert_held(i32* %26)
  %28 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 4
  %30 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %29, align 8
  %31 = icmp ne %struct.il3945_scan_cmd* %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %2
  %33 = load i64, i64* @IL_MAX_SCAN_SIZE, align 8
  %34 = add i64 88, %33
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.il3945_scan_cmd* @kmalloc(i64 %34, i32 %35)
  %37 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 4
  store %struct.il3945_scan_cmd* %36, %struct.il3945_scan_cmd** %38, align 8
  %39 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 4
  %41 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %40, align 8
  %42 = icmp ne %struct.il3945_scan_cmd* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %341

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 4
  %51 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %50, align 8
  store %struct.il3945_scan_cmd* %51, %struct.il3945_scan_cmd** %7, align 8
  %52 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %53 = load i64, i64* @IL_MAX_SCAN_SIZE, align 8
  %54 = add i64 88, %53
  %55 = call i32 @memset(%struct.il3945_scan_cmd* %52, i32 0, i64 %54)
  %56 = load i32, i32* @IL_PLCP_QUIET_THRESH, align 4
  %57 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @IL_ACTIVE_QUIET_TIME, align 4
  %60 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %63 = call i64 @il_is_associated(%struct.il_priv* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %48
  store i32 100, i32* %15, align 4
  store i32 100, i32* %16, align 4
  %66 = call i32 @D_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %71, i32 0, i32 7
  store i8* null, i8** %72, align 8
  %73 = call i8* @cpu_to_le32(i32 204800)
  %74 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %74, i32 0, i32 8
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %78, %65
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sdiv i32 %81, %82
  %84 = shl i32 %83, 24
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %13, align 4
  %88 = srem i32 %86, %87
  %89 = mul nsw i32 %88, 1024
  %90 = or i32 %85, %89
  %91 = and i32 -15728641, %90
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i8* @cpu_to_le32(i32 %92)
  %94 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %80, %48
  %100 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %101 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %100, i32 0, i32 2
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %192

106:                                              ; preds = %99
  store i32 0, i32* %18, align 4
  %107 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %108

108:                                              ; preds = %188, %106
  %109 = load i32, i32* %17, align 4
  %110 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %111 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %110, i32 0, i32 2
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %109, %114
  br i1 %115, label %116, label %191

116:                                              ; preds = %108
  %117 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %118 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %117, i32 0, i32 2
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %116
  br label %188

129:                                              ; preds = %116
  %130 = load i32, i32* @WLAN_EID_SSID, align 4
  %131 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %131, i32 0, i32 6
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  store i32 %130, i32* %137, align 8
  %138 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %139 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %138, i32 0, i32 2
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %149 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %148, i32 0, i32 6
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  store i64 %147, i64* %154, align 8
  %155 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %156 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %155, i32 0, i32 6
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %164 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %163, i32 0, i32 2
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %174 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %173, i32 0, i32 2
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @memcpy(i32 %162, i32 %172, i64 %182)
  %184 = load i64, i64* %8, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %8, align 8
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %188

188:                                              ; preds = %129, %128
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %108

191:                                              ; preds = %108
  store i32 1, i32* %10, align 4
  br label %194

192:                                              ; preds = %99
  %193 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %191
  %195 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %196 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %197 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 4
  store i32 %195, i32* %198, align 4
  %199 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %200 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %204 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 3
  store i32 %202, i32* %205, align 8
  %206 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %207 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %208 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  store i32 %206, i32* %210, align 4
  %211 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %212 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  switch i32 %213, label %229 [
    i32 129, label %214
    i32 128, label %224
  ]

214:                                              ; preds = %194
  %215 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %216 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %217 = or i32 %215, %216
  %218 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %219 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* @RATE_1M_PLCP, align 4
  %221 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %222 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  store i32 %220, i32* %223, align 8
  store i32 129, i32* %9, align 4
  br label %233

224:                                              ; preds = %194
  %225 = load i32, i32* @RATE_6M_PLCP, align 4
  %226 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %227 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 1
  store i32 %225, i32* %228, align 8
  store i32 128, i32* %9, align 4
  br label %233

229:                                              ; preds = %194
  %230 = call i32 @IL_WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %231 = load i32, i32* @EIO, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %3, align 4
  br label %341

233:                                              ; preds = %224, %214
  %234 = load i32, i32* %10, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load i32, i32* @IL_GOOD_CRC_TH_DEFAULT, align 4
  br label %240

238:                                              ; preds = %233
  %239 = load i32, i32* @IL_GOOD_CRC_TH_NEVER, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  %242 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %243 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %242, i32 0, i32 5
  store i32 %241, i32* %243, align 8
  %244 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %245 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %246 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = bitcast i32* %247 to %struct.ieee80211_mgmt*
  %249 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %250 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %253 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %252, i32 0, i32 2
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %258 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %257, i32 0, i32 2
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i64, i64* @IL_MAX_SCAN_SIZE, align 8
  %263 = sub i64 %262, 88
  %264 = call i32 @il_fill_probe_req(%struct.il_priv* %244, %struct.ieee80211_mgmt* %248, i32 %251, i32 %256, i32 %261, i64 %263)
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %12, align 4
  %266 = call i8* @cpu_to_le16(i32 %265)
  %267 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %268 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  store i8* %266, i8** %269, align 8
  %270 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %271 = call i32 @il3945_get_antenna_flags(%struct.il_priv* %270)
  %272 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %273 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  %276 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %10, align 4
  %279 = load i64, i64* %8, align 8
  %280 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %281 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %280, i32 0, i32 4
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = bitcast i32* %285 to i8*
  %287 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %288 = call i32 @il3945_get_channels_for_scan(%struct.il_priv* %276, i32 %277, i32 %278, i64 %279, i8* %286, %struct.ieee80211_vif* %287)
  %289 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %290 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  %291 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %292 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %240
  %296 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %297 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i8*, ...) @D_SCAN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* @EIO, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %3, align 4
  br label %341

302:                                              ; preds = %240
  %303 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %304 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = call i64 @le16_to_cpu(i8* %306)
  %308 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %309 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = mul i64 %311, 4
  %313 = add i64 %307, %312
  %314 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = sext i32 %315 to i64
  %317 = add i64 %316, %313
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %314, align 8
  %319 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %320 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 1
  store %struct.il3945_scan_cmd* %319, %struct.il3945_scan_cmd** %320, align 8
  %321 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = call i8* @cpu_to_le16(i32 %322)
  %324 = load %struct.il3945_scan_cmd*, %struct.il3945_scan_cmd** %7, align 8
  %325 = getelementptr inbounds %struct.il3945_scan_cmd, %struct.il3945_scan_cmd* %324, i32 0, i32 2
  store i8* %323, i8** %325, align 8
  %326 = load i32, i32* @S_SCAN_HW, align 4
  %327 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %328 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %327, i32 0, i32 1
  %329 = call i32 @set_bit(i32 %326, i32* %328)
  %330 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %331 = call i32 @il_send_cmd_sync(%struct.il_priv* %330, %struct.il_host_cmd* %6)
  store i32 %331, i32* %11, align 4
  %332 = load i32, i32* %11, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %302
  %335 = load i32, i32* @S_SCAN_HW, align 4
  %336 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %337 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %336, i32 0, i32 1
  %338 = call i32 @clear_bit(i32 %335, i32* %337)
  br label %339

339:                                              ; preds = %334, %302
  %340 = load i32, i32* %11, align 4
  store i32 %340, i32* %3, align 4
  br label %341

341:                                              ; preds = %339, %295, %229, %43
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.il3945_scan_cmd* @kmalloc(i64, i32) #1

declare dso_local i32 @D_SCAN(i8*, ...) #1

declare dso_local i32 @memset(%struct.il3945_scan_cmd*, i32, i64) #1

declare dso_local i64 @il_is_associated(%struct.il_priv*) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @IL_WARN(i8*) #1

declare dso_local i32 @il_fill_probe_req(%struct.il_priv*, %struct.ieee80211_mgmt*, i32, i32, i32, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @il3945_get_antenna_flags(%struct.il_priv*) #1

declare dso_local i32 @il3945_get_channels_for_scan(%struct.il_priv*, i32, i32, i64, i8*, %struct.ieee80211_vif*) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @il_send_cmd_sync(%struct.il_priv*, %struct.il_host_cmd*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

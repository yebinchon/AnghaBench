; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*, %struct.TYPE_13__*, i32, %struct.brcms_bss_cfg* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_12__*, i64, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.brcms_bss_cfg = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"wl%d\0A\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@BFL_FEM = common dso_local global i32 0, align 4
@BCM4313_CHIP_ID = common dso_local global i64 0, align 8
@BFL_FEM_BT = common dso_local global i32 0, align 4
@MHF5 = common dso_local global i32 0, align 4
@MHF5_4313_GPIOCTRL = common dso_local global i32 0, align 4
@BRCM_BAND_ALL = common dso_local global i32 0, align 4
@MHF4 = common dso_local global i32 0, align 4
@MHF4_EXTPA_ENABLE = common dso_local global i32 0, align 4
@WL_RADIO_HW_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"wl%d: up: rfdisable -> bsscfg_disable()\0A\00", align 1
@MHF1 = common dso_local global i32 0, align 4
@MHF1_EDCF = common dso_local global i32 0, align 4
@TIMER_INTERVAL_WATCHDOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_up(%struct.brcms_c_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_bss_cfg*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 5
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 6
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @brcms_dbg_info(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %19 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %18, i32 0, i32 6
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %26 = call i64 @brcms_deviceremoved(%struct.brcms_c_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %1
  %29 = load i32, i32* @ENOMEDIUM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %240

31:                                               ; preds = %24
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 6
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %31
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %40 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %39, i32 0, i32 5
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = call i32 @brcms_b_hw_up(%struct.TYPE_15__* %41)
  %43 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %44 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %43, i32 0, i32 6
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %38, %31
  %48 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %49 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %48, i32 0, i32 6
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BFL_FEM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %47
  %57 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %58 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %57, i32 0, i32 5
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ai_get_chip_id(i32 %61)
  %63 = load i64, i64* @BCM4313_CHIP_ID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %56
  %66 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %67 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %66, i32 0, i32 6
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 4688
  br i1 %71, label %72, label %90

72:                                               ; preds = %65
  %73 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %74 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %73, i32 0, i32 6
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BFL_FEM_BT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %83 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %82, i32 0, i32 5
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = load i32, i32* @MHF5, align 4
  %86 = load i32, i32* @MHF5_4313_GPIOCTRL, align 4
  %87 = load i32, i32* @MHF5_4313_GPIOCTRL, align 4
  %88 = load i32, i32* @BRCM_BAND_ALL, align 4
  %89 = call i32 @brcms_b_mhf(%struct.TYPE_15__* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  br label %99

90:                                               ; preds = %72, %65
  %91 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %92 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %91, i32 0, i32 5
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load i32, i32* @MHF4, align 4
  %95 = load i32, i32* @MHF4_EXTPA_ENABLE, align 4
  %96 = load i32, i32* @MHF4_EXTPA_ENABLE, align 4
  %97 = load i32, i32* @BRCM_BAND_ALL, align 4
  %98 = call i32 @brcms_b_mhf(%struct.TYPE_15__* %93, i32 %94, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %90, %81
  br label %100

100:                                              ; preds = %99, %56, %47
  %101 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %102 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %101, i32 0, i32 6
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %160, label %107

107:                                              ; preds = %100
  %108 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %109 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %108, i32 0, i32 5
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = call i32 @brcms_b_up_prep(%struct.TYPE_15__* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @ENOMEDIUM, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %159

116:                                              ; preds = %107
  %117 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %118 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %117, i32 0, i32 6
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @WL_RADIO_HW_DISABLE, align 4
  %123 = call i32 @mboolisset(i64 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %158, label %125

125:                                              ; preds = %116
  %126 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %127 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %126, i32 0, i32 8
  %128 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %127, align 8
  store %struct.brcms_bss_cfg* %128, %struct.brcms_bss_cfg** %6, align 8
  %129 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %130 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %129, i32 0, i32 6
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @WL_RADIO_HW_DISABLE, align 4
  %135 = call i32 @mboolset(i64 %133, i32 %134)
  %136 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %6, align 8
  %137 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %125
  %141 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %6, align 8
  %142 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %147 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %146, i32 0, i32 5
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %152 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %151, i32 0, i32 6
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @brcms_err(i32 %150, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %145, %140, %125
  br label %158

158:                                              ; preds = %157, %116
  br label %159

159:                                              ; preds = %158, %107
  br label %160

160:                                              ; preds = %159, %100
  %161 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %162 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %161, i32 0, i32 6
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %169 = call i32 @brcms_c_radio_monitor_start(%struct.brcms_c_info* %168)
  store i32 0, i32* %2, align 4
  br label %240

170:                                              ; preds = %160
  %171 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %172 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %174 = call i32 @brcms_c_radio_monitor_stop(%struct.brcms_c_info* %173)
  %175 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %176 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %175, i32 0, i32 5
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = load i32, i32* @MHF1, align 4
  %179 = load i32, i32* @MHF1_EDCF, align 4
  %180 = load i32, i32* @MHF1_EDCF, align 4
  %181 = load i32, i32* @BRCM_BAND_ALL, align 4
  %182 = call i32 @brcms_b_mhf(%struct.TYPE_15__* %177, i32 %178, i32 %179, i32 %180, i32 %181)
  %183 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %184 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @brcms_init(i32 %185)
  %187 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %188 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %187, i32 0, i32 6
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  store i32 1, i32* %190, align 4
  %191 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %192 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %217

195:                                              ; preds = %170
  %196 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %197 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %196, i32 0, i32 6
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %203, align 8
  store %struct.ieee80211_channel* %204, %struct.ieee80211_channel** %4, align 8
  %205 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %206 = call i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info* %205)
  %207 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %208 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %209 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ch20mhz_chspec(i32 %210)
  %212 = call i32 @brcms_c_set_chanspec(%struct.brcms_c_info* %207, i32 %211)
  %213 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %214 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %213, i32 0, i32 1
  store i32 0, i32* %214, align 4
  %215 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %216 = call i32 @brcms_c_enable_mac(%struct.brcms_c_info* %215)
  br label %217

217:                                              ; preds = %195, %170
  %218 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %219 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %218, i32 0, i32 5
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %219, align 8
  %221 = call i32 @brcms_b_up_finish(%struct.TYPE_15__* %220)
  %222 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %223 = call i32 @brcms_c_wme_retries_write(%struct.brcms_c_info* %222)
  %224 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %225 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @TIMER_INTERVAL_WATCHDOG, align 4
  %228 = call i32 @brcms_add_timer(i32 %226, i32 %227, i32 1)
  %229 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %230 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %229, i32 0, i32 2
  store i32 1, i32* %230, align 8
  %231 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %232 = call i32 @brcms_c_stf_phy_txant_upd(%struct.brcms_c_info* %231)
  %233 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %234 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %235 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %234, i32 0, i32 3
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @brcms_c_ht_update_ldpc(%struct.brcms_c_info* %233, i32 %238)
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %217, %167, %28
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i32 @brcms_dbg_info(i32, i8*, i32) #1

declare dso_local i64 @brcms_deviceremoved(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_b_hw_up(%struct.TYPE_15__*) #1

declare dso_local i64 @ai_get_chip_id(i32) #1

declare dso_local i32 @brcms_b_mhf(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @brcms_b_up_prep(%struct.TYPE_15__*) #1

declare dso_local i32 @mboolisset(i64, i32) #1

declare dso_local i32 @mboolset(i64, i32) #1

declare dso_local i32 @brcms_err(i32, i8*, i32) #1

declare dso_local i32 @brcms_c_radio_monitor_start(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_radio_monitor_stop(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_init(i32) #1

declare dso_local i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_set_chanspec(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @ch20mhz_chspec(i32) #1

declare dso_local i32 @brcms_c_enable_mac(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_b_up_finish(%struct.TYPE_15__*) #1

declare dso_local i32 @brcms_c_wme_retries_write(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_add_timer(i32, i32, i32) #1

declare dso_local i32 @brcms_c_stf_phy_txant_upd(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_ht_update_ldpc(%struct.brcms_c_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.b43_wl = type { i64, %struct.TYPE_10__*, i32, %struct.b43_wldev* }
%struct.TYPE_10__ = type { i32 }
%struct.b43_wldev = type { %struct.TYPE_8__*, i32, %struct.b43_phy }
%struct.TYPE_8__ = type { i32 }
%struct.b43_phy = type { i32, i64, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.b43_wldev*, i32)* }

@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@B43_TXPWR_IGNORE_TIME = common dso_local global i32 0, align 4
@B43_TXPWR_IGNORE_TSSI = common dso_local global i32 0, align 4
@B43_ANTENNA_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Radio turned on by software\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"The hardware RF-kill button still turns the radio physically off. Press the button to turn it on.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Radio turned off by software\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @b43_op_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_op_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wl*, align 8
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca %struct.b43_phy*, align 8
  %8 = alloca %struct.ieee80211_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %12)
  store %struct.b43_wl* %13, %struct.b43_wl** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  store %struct.ieee80211_conf* %15, %struct.ieee80211_conf** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %17 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %20 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %19, i32 0, i32 3
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %20, align 8
  store %struct.b43_wldev* %21, %struct.b43_wldev** %6, align 8
  %22 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %23 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = call i32 @b43_switch_band(%struct.b43_wl* %22, %struct.TYPE_9__* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %208

31:                                               ; preds = %2
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %33 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %34 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %33, i32 0, i32 3
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %34, align 8
  %36 = icmp ne %struct.b43_wldev* %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %39 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %38, i32 0, i32 3
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %39, align 8
  store %struct.b43_wldev* %40, %struct.b43_wldev** %6, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %43 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %42, i32 0, i32 2
  store %struct.b43_phy* %43, %struct.b43_phy** %7, align 8
  %44 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %45 = call i64 @conf_is_ht(%struct.ieee80211_conf* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %49 = call i64 @conf_is_ht40_minus(%struct.ieee80211_conf* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %53 = call i64 @conf_is_ht40_plus(%struct.ieee80211_conf* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ true, %47 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %59 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %63

60:                                               ; preds = %41
  %61 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %62 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %65 = call i32 @b43_mac_suspend(%struct.b43_wldev* %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %72 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %73 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %76 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @b43_set_retry_limits(%struct.b43_wldev* %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %70, %63
  %80 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %205

87:                                               ; preds = %79
  %88 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %89 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %95 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %87
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %100 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %101 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @b43_switch_channel(%struct.b43_wldev* %99, i64 %105)
  br label %107

107:                                              ; preds = %98, %87
  %108 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %109 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %118 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 4
  %121 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %122 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %107
  %126 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %127 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %130 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %125
  %134 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %135 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %138 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %137, i32 0, i32 2
  store i64 %136, i64* %138, align 8
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %140 = load i32, i32* @B43_TXPWR_IGNORE_TIME, align 4
  %141 = load i32, i32* @B43_TXPWR_IGNORE_TSSI, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @b43_phy_txpower_check(%struct.b43_wldev* %139, i32 %142)
  br label %144

144:                                              ; preds = %133, %125
  br label %145

145:                                              ; preds = %144, %107
  %146 = load i32, i32* @B43_ANTENNA_DEFAULT, align 4
  store i32 %146, i32* %9, align 4
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @b43_mgmtframe_txantenna(%struct.b43_wldev* %147, i32 %148)
  %150 = load i32, i32* @B43_ANTENNA_DEFAULT, align 4
  store i32 %150, i32* %9, align 4
  %151 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %152 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %151, i32 0, i32 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %154, align 8
  %156 = icmp ne i32 (%struct.b43_wldev*, i32)* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %145
  %158 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %159 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %158, i32 0, i32 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %161, align 8
  %163 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 %162(%struct.b43_wldev* %163, i32 %164)
  br label %166

166:                                              ; preds = %157, %145
  %167 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %168 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %171 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %204

174:                                              ; preds = %166
  %175 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %176 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %174
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %181 = call i32 @b43_software_rfkill(%struct.b43_wldev* %180, i32 0)
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %183 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = call i32 @b43info(%struct.TYPE_8__* %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %187 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %179
  %191 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %192 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %191, i32 0, i32 0
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = call i32 @b43info(%struct.TYPE_8__* %193, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0))
  br label %195

195:                                              ; preds = %190, %179
  br label %203

196:                                              ; preds = %174
  %197 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %198 = call i32 @b43_software_rfkill(%struct.b43_wldev* %197, i32 1)
  %199 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %200 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %199, i32 0, i32 0
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = call i32 @b43info(%struct.TYPE_8__* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %203

203:                                              ; preds = %196, %195
  br label %204

204:                                              ; preds = %203, %166
  br label %205

205:                                              ; preds = %204, %86
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %207 = call i32 @b43_mac_enable(%struct.b43_wldev* %206)
  br label %208

208:                                              ; preds = %205, %30
  %209 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %210 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %209, i32 0, i32 2
  %211 = call i32 @mutex_unlock(i32* %210)
  %212 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %213 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %212, i32 0, i32 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = icmp ne %struct.TYPE_10__* %214, null
  br i1 %215, label %216, label %229

216:                                              ; preds = %208
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %216
  %220 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %221 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %222 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %221, i32 0, i32 1
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %225 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %224, i32 0, i32 1
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = call i32 @b43_op_bss_info_changed(%struct.ieee80211_hw* %220, %struct.TYPE_10__* %223, i32* %227, i32 -1)
  br label %229

229:                                              ; preds = %219, %216, %208
  %230 = load i32, i32* %10, align 4
  ret i32 %230
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @b43_switch_band(%struct.b43_wl*, %struct.TYPE_9__*) #1

declare dso_local i64 @conf_is_ht(%struct.ieee80211_conf*) #1

declare dso_local i64 @conf_is_ht40_minus(%struct.ieee80211_conf*) #1

declare dso_local i64 @conf_is_ht40_plus(%struct.ieee80211_conf*) #1

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_set_retry_limits(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i64) #1

declare dso_local i32 @b43_phy_txpower_check(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_mgmtframe_txantenna(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_software_rfkill(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43info(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @b43_op_bss_info_changed(%struct.ieee80211_hw*, %struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

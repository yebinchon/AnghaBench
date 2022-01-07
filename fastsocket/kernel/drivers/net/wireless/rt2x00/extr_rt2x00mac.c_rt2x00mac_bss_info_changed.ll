; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i64, i64, i32 }
%struct.rt2x00_intf = type { i32, i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@CONFIG_QOS_DISABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00mac_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt2x00_dev*, align 8
  %10 = alloca %struct.rt2x00_intf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %12, align 8
  store %struct.rt2x00_dev* %13, %struct.rt2x00_dev** %9, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = call %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif* %14)
  store %struct.rt2x00_intf* %15, %struct.rt2x00_intf** %10, align 8
  %16 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %199

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %29 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @rt2x00lib_config_intf(%struct.rt2x00_dev* %28, %struct.rt2x00_intf* %29, i32 %32, i32* null, i32 %35)
  br label %37

37:                                               ; preds = %27, %22
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %44 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %49 = call i32 @rt2x00queue_update_beacon(%struct.rt2x00_dev* %47, %struct.ieee80211_vif* %48)
  br label %50

50:                                               ; preds = %46, %42, %37
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %126

55:                                               ; preds = %50
  %56 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %91, label %60

60:                                               ; preds = %55
  %61 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %62 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %60
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %68 = call i32 @rt2x00queue_clear_beacon(%struct.rt2x00_dev* %66, %struct.ieee80211_vif* %67)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %70 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %74 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %65
  %80 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %81 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %80, i32 0, i32 1
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %84 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @rt2x00queue_stop_queue(i32 %85)
  %87 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %88 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  br label %90

90:                                               ; preds = %79, %65
  br label %125

91:                                               ; preds = %60, %55
  %92 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %93 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %91
  %97 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %98 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %124, label %101

101:                                              ; preds = %96
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %103 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %107 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %109 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %123

112:                                              ; preds = %101
  %113 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %114 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %113, i32 0, i32 1
  %115 = call i32 @mutex_lock(i32* %114)
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %117 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @rt2x00queue_start_queue(i32 %118)
  %120 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %121 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %120, i32 0, i32 1
  %122 = call i32 @mutex_unlock(i32* %121)
  br label %123

123:                                              ; preds = %112, %101
  br label %124

124:                                              ; preds = %123, %96, %91
  br label %125

125:                                              ; preds = %124, %90
  br label %126

126:                                              ; preds = %125, %50
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %163

131:                                              ; preds = %126
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %133 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %136 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %141 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  br label %149

144:                                              ; preds = %131
  %145 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %146 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %152 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = call i32 @rt2x00leds_led_assoc(%struct.rt2x00_dev* %150, i32 %157)
  %159 = load i32, i32* @CONFIG_QOS_DISABLED, align 4
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %161 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %160, i32 0, i32 1
  %162 = call i32 @clear_bit(i32 %159, i32* %161)
  br label %163

163:                                              ; preds = %149, %126
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %170 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load i32, i32* @CONFIG_QOS_DISABLED, align 4
  %175 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %176 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %175, i32 0, i32 1
  %177 = call i32 @set_bit(i32 %174, i32* %176)
  br label %178

178:                                              ; preds = %173, %168, %163
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %181 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @BSS_CHANGED_HT, align 4
  %190 = or i32 %188, %189
  %191 = and i32 %179, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %178
  %194 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %195 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %196 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @rt2x00lib_config_erp(%struct.rt2x00_dev* %194, %struct.rt2x00_intf* %195, %struct.ieee80211_bss_conf* %196, i32 %197)
  br label %199

199:                                              ; preds = %21, %193, %178
  ret void
}

declare dso_local %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_config_intf(%struct.rt2x00_dev*, %struct.rt2x00_intf*, i32, i32*, i32) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00queue_update_beacon(%struct.rt2x00_dev*, %struct.ieee80211_vif*) #1

declare dso_local i32 @rt2x00queue_clear_beacon(%struct.rt2x00_dev*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rt2x00queue_stop_queue(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rt2x00queue_start_queue(i32) #1

declare dso_local i32 @rt2x00leds_led_assoc(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_config_erp(%struct.rt2x00_dev*, %struct.rt2x00_intf*, %struct.ieee80211_bss_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

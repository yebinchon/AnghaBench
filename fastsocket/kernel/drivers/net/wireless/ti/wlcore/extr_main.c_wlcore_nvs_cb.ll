; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_nvs_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_nvs_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i64, i32 }
%struct.wl1271 = type { i64, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i64, %struct.platform_device* }
%struct.TYPE_10__ = type { i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.wlcore_platdev_data* }
%struct.wlcore_platdev_data = type { i32, %struct.wl12xx_platform_data* }
%struct.wl12xx_platform_data = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not allocate nvs data\00", align 1
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not get nvs file %s\00", align 1
@WL12XX_NVS_NAME = common dso_local global i32 0, align 4
@WLCORE_MAX_TX_DESCRIPTORS = common dso_local global i64 0, align 8
@WL12XX_PLATFORM_QUIRK_EDGE_IRQ = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@IRQF_TRIGGER_HIGH = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@wlcore_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"request_irq() failed: %d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"couldn't get hw info\00", align 1
@dev_attr_bt_coex_state = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to create sysfs file bt_coex_state\00", align 1
@dev_attr_hw_pg_ver = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to create sysfs file hw_pg_ver\00", align 1
@fwlog_attr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to create sysfs file fwlog\00", align 1
@WIPHY_WOWLAN_ANY = common dso_local global i32 0, align 4
@WL1271_MAX_RX_FILTERS = common dso_local global i32 0, align 4
@WL1271_RX_FILTER_MAX_PATTERN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @wlcore_nvs_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_nvs_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.wlcore_platdev_data*, align 8
  %8 = alloca %struct.wl12xx_platform_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.wl1271*
  store %struct.wl1271* %12, %struct.wl1271** %5, align 8
  %13 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 12
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %6, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %18, align 8
  store %struct.wlcore_platdev_data* %19, %struct.wlcore_platdev_data** %7, align 8
  %20 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %7, align 8
  %21 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %20, i32 0, i32 1
  %22 = load %struct.wl12xx_platform_data*, %struct.wl12xx_platform_data** %21, align 8
  store %struct.wl12xx_platform_data* %22, %struct.wl12xx_platform_data** %8, align 8
  %23 = load %struct.firmware*, %struct.firmware** %3, align 8
  %24 = icmp ne %struct.firmware* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %2
  %26 = load %struct.firmware*, %struct.firmware** %3, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.firmware*, %struct.firmware** %3, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kmemdup(i32 %28, i64 %31, i32 %32)
  %34 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 5
  store i32* %33, i32** %35, align 8
  %36 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %25
  %41 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %207

42:                                               ; preds = %25
  %43 = load %struct.firmware*, %struct.firmware** %3, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 11
  store i64 %45, i64* %47, align 8
  br label %56

48:                                               ; preds = %2
  %49 = load i32, i32* @DEBUG_BOOT, align 4
  %50 = load i32, i32* @WL12XX_NVS_NAME, align 4
  %51 = call i32 @wl1271_debug(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 5
  store i32* null, i32** %53, align 8
  %54 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 11
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %48, %42
  %57 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %60, align 8
  %62 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %63 = call i32 %61(%struct.wl1271* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %202

67:                                               ; preds = %56
  %68 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WLCORE_MAX_TX_DESCRIPTORS, align 8
  %72 = icmp sgt i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %76 = call i32 @wlcore_adjust_conf(%struct.wl1271* %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %78 = call i32 @platform_get_irq(%struct.platform_device* %77, i32 0)
  %79 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %80 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.wl12xx_platform_data*, %struct.wl12xx_platform_data** %8, align 8
  %82 = getelementptr inbounds %struct.wl12xx_platform_data, %struct.wl12xx_platform_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %85 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %7, align 8
  %87 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %90 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 8
  %91 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %92 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @WL12XX_PLATFORM_QUIRK_EDGE_IRQ, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %67
  %98 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  store i64 %98, i64* %9, align 8
  br label %103

99:                                               ; preds = %67
  %100 = load i64, i64* @IRQF_TRIGGER_HIGH, align 8
  %101 = load i64, i64* @IRQF_ONESHOT, align 8
  %102 = or i64 %100, %101
  store i64 %102, i64* %9, align 8
  br label %103

103:                                              ; preds = %99, %97
  %104 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %105 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @wlcore_irq, align 4
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %113 = call i32 @request_threaded_irq(i32 %106, i32* null, i32 %107, i64 %108, i32 %111, %struct.wl1271* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %103
  %117 = load i32, i32* %10, align 4
  %118 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %202

119:                                              ; preds = %103
  %120 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %121 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @disable_irq(i32 %122)
  %124 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %125 = call i32 @wl12xx_get_hw_info(%struct.wl1271* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %196

130:                                              ; preds = %119
  %131 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %132 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %131, i32 0, i32 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %134, align 8
  %136 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %137 = call i32 %135(%struct.wl1271* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %196

141:                                              ; preds = %130
  %142 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %143 = call i32 @wl1271_init_ieee80211(%struct.wl1271* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %196

147:                                              ; preds = %141
  %148 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %149 = call i32 @wl1271_register_hw(%struct.wl1271* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %196

153:                                              ; preds = %147
  %154 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %155 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @device_create_file(i32 %156, i32* @dev_attr_bt_coex_state)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %193

162:                                              ; preds = %153
  %163 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %164 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @device_create_file(i32 %165, i32* @dev_attr_hw_pg_ver)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %188

171:                                              ; preds = %162
  %172 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %173 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @device_create_bin_file(i32 %174, i32* @fwlog_attr)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %183

180:                                              ; preds = %171
  %181 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %182 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %181, i32 0, i32 3
  store i32 1, i32* %182, align 8
  br label %207

183:                                              ; preds = %178
  %184 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %185 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @device_remove_file(i32 %186, i32* @dev_attr_hw_pg_ver)
  br label %188

188:                                              ; preds = %183, %169
  %189 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %190 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @device_remove_file(i32 %191, i32* @dev_attr_bt_coex_state)
  br label %193

193:                                              ; preds = %188, %160
  %194 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %195 = call i32 @wl1271_unregister_hw(%struct.wl1271* %194)
  br label %196

196:                                              ; preds = %193, %152, %146, %140, %128
  %197 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %198 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %201 = call i32 @free_irq(i32 %199, %struct.wl1271* %200)
  br label %202

202:                                              ; preds = %196, %116, %66
  %203 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %204 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @kfree(i32* %205)
  br label %207

207:                                              ; preds = %202, %180, %40
  %208 = load %struct.firmware*, %struct.firmware** %3, align 8
  %209 = call i32 @release_firmware(%struct.firmware* %208)
  %210 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %211 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %210, i32 0, i32 4
  %212 = call i32 @complete_all(i32* %211)
  ret void
}

declare dso_local i32* @kmemdup(i32, i64, i32) #1

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wlcore_adjust_conf(%struct.wl1271*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i64, i32, %struct.wl1271*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @wl12xx_get_hw_info(%struct.wl1271*) #1

declare dso_local i32 @wl1271_init_ieee80211(%struct.wl1271*) #1

declare dso_local i32 @wl1271_register_hw(%struct.wl1271*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @device_create_bin_file(i32, i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @wl1271_unregister_hw(%struct.wl1271*) #1

declare dso_local i32 @free_irq(i32, %struct.wl1271*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

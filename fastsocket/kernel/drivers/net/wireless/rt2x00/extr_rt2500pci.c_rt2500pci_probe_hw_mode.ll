; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_probe_hw_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_probe_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_3__*, i32, %struct.hw_mode_spec }
%struct.TYPE_3__ = type { i32 }
%struct.hw_mode_spec = type { i32, i32, %struct.channel_info*, i8*, i32 }
%struct.channel_info = type { i32, i8* }

@IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@SUPPORT_BAND_2GHZ = common dso_local global i32 0, align 4
@SUPPORT_RATE_CCK = common dso_local global i32 0, align 4
@SUPPORT_RATE_OFDM = common dso_local global i32 0, align 4
@RF2522 = common dso_local global i32 0, align 4
@rf_vals_bg_2522 = common dso_local global i8* null, align 8
@RF2523 = common dso_local global i32 0, align 4
@rf_vals_bg_2523 = common dso_local global i8* null, align 8
@RF2524 = common dso_local global i32 0, align 4
@rf_vals_bg_2524 = common dso_local global i8* null, align 8
@RF2525 = common dso_local global i32 0, align 4
@rf_vals_bg_2525 = common dso_local global i8* null, align 8
@RF2525E = common dso_local global i32 0, align 4
@rf_vals_bg_2525e = common dso_local global i8* null, align 8
@RF5222 = common dso_local global i32 0, align 4
@SUPPORT_BAND_5GHZ = common dso_local global i32 0, align 4
@rf_vals_5222 = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_START = common dso_local global i32 0, align 4
@MAX_TXPOWER = common dso_local global i8* null, align 8
@DEFAULT_TXPOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2500pci_probe_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500pci_probe_hw_mode(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.hw_mode_spec*, align 8
  %5 = alloca %struct.channel_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 2
  store %struct.hw_mode_spec* %9, %struct.hw_mode_spec** %4, align 8
  %10 = load i32, i32* @IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING, align 4
  %11 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IEEE80211_HW_SUPPORTS_PS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IEEE80211_HW_PS_NULLFUNC_STACK, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @SET_IEEE80211_DEV(%struct.TYPE_3__* %23, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %33 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %31, i32 %32)
  %34 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_3__* %30, i8* %33)
  %35 = load i32, i32* @SUPPORT_BAND_2GHZ, align 4
  %36 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %37 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @SUPPORT_RATE_CCK, align 4
  %39 = load i32, i32* @SUPPORT_RATE_OFDM, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %42 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = load i32, i32* @RF2522, align 4
  %45 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %1
  %48 = load i8*, i8** @rf_vals_bg_2522, align 8
  %49 = call i8* @ARRAY_SIZE(i8* %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %52 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i8*, i8** @rf_vals_bg_2522, align 8
  %54 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %55 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  br label %136

56:                                               ; preds = %1
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %58 = load i32, i32* @RF2523, align 4
  %59 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i8*, i8** @rf_vals_bg_2523, align 8
  %63 = call i8* @ARRAY_SIZE(i8* %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %66 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i8*, i8** @rf_vals_bg_2523, align 8
  %68 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %69 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  br label %135

70:                                               ; preds = %56
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %72 = load i32, i32* @RF2524, align 4
  %73 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i8*, i8** @rf_vals_bg_2524, align 8
  %77 = call i8* @ARRAY_SIZE(i8* %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %80 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i8*, i8** @rf_vals_bg_2524, align 8
  %82 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %83 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  br label %134

84:                                               ; preds = %70
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %86 = load i32, i32* @RF2525, align 4
  %87 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load i8*, i8** @rf_vals_bg_2525, align 8
  %91 = call i8* @ARRAY_SIZE(i8* %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %94 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i8*, i8** @rf_vals_bg_2525, align 8
  %96 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %97 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  br label %133

98:                                               ; preds = %84
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %100 = load i32, i32* @RF2525E, align 4
  %101 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load i8*, i8** @rf_vals_bg_2525e, align 8
  %105 = call i8* @ARRAY_SIZE(i8* %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %108 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i8*, i8** @rf_vals_bg_2525e, align 8
  %110 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %111 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  br label %132

112:                                              ; preds = %98
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %114 = load i32, i32* @RF5222, align 4
  %115 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  %118 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %119 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %120 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i8*, i8** @rf_vals_5222, align 8
  %124 = call i8* @ARRAY_SIZE(i8* %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %127 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i8*, i8** @rf_vals_5222, align 8
  %129 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %130 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %117, %112
  br label %132

132:                                              ; preds = %131, %103
  br label %133

133:                                              ; preds = %132, %89
  br label %134

134:                                              ; preds = %133, %75
  br label %135

135:                                              ; preds = %134, %61
  br label %136

136:                                              ; preds = %135, %47
  %137 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %138 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call %struct.channel_info* @kcalloc(i32 %139, i32 16, i32 %140)
  store %struct.channel_info* %141, %struct.channel_info** %5, align 8
  %142 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %143 = icmp ne %struct.channel_info* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %136
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %208

147:                                              ; preds = %136
  %148 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %149 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %150 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %149, i32 0, i32 2
  store %struct.channel_info* %148, %struct.channel_info** %150, align 8
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %152 = load i32, i32* @EEPROM_TXPOWER_START, align 4
  %153 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %151, i32 %152)
  store i8* %153, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %175, %147
  %155 = load i32, i32* %7, align 4
  %156 = icmp ult i32 %155, 14
  br i1 %156, label %157, label %178

157:                                              ; preds = %154
  %158 = load i8*, i8** @MAX_TXPOWER, align 8
  %159 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %160 = load i32, i32* %7, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %159, i64 %161
  %163 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %162, i32 0, i32 1
  store i8* %158, i8** %163, align 8
  %164 = load i8*, i8** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = call i32 @TXPOWER_FROM_DEV(i8 signext %168)
  %170 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %170, i64 %172
  %174 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %173, i32 0, i32 0
  store i32 %169, i32* %174, align 8
  br label %175

175:                                              ; preds = %157
  %176 = load i32, i32* %7, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %154

178:                                              ; preds = %154
  %179 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %180 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %181, 14
  br i1 %182, label %183, label %207

183:                                              ; preds = %178
  store i32 14, i32* %7, align 4
  br label %184

184:                                              ; preds = %203, %183
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %187 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ult i32 %185, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %184
  %191 = load i8*, i8** @MAX_TXPOWER, align 8
  %192 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %193 = load i32, i32* %7, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %192, i64 %194
  %196 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %195, i32 0, i32 1
  store i8* %191, i8** %196, align 8
  %197 = load i32, i32* @DEFAULT_TXPOWER, align 4
  %198 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %199 = load i32, i32* %7, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %198, i64 %200
  %202 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %201, i32 0, i32 0
  store i32 %197, i32* %202, align 8
  br label %203

203:                                              ; preds = %190
  %204 = load i32, i32* %7, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %184

206:                                              ; preds = %184
  br label %207

207:                                              ; preds = %206, %178
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %144
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @SET_IEEE80211_DEV(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_3__*, i8*) #1

declare dso_local i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.channel_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @TXPOWER_FROM_DEV(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

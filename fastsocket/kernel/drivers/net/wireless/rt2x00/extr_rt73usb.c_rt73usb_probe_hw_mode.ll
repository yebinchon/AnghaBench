; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_probe_hw_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_probe_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_3__*, i32, %struct.hw_mode_spec }
%struct.TYPE_3__ = type { i32 }
%struct.hw_mode_spec = type { i32, i32, %struct.channel_info*, i8*, i32 }
%struct.channel_info = type { i8*, i8* }

@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@SUPPORT_BAND_2GHZ = common dso_local global i32 0, align 4
@SUPPORT_RATE_CCK = common dso_local global i32 0, align 4
@SUPPORT_RATE_OFDM = common dso_local global i32 0, align 4
@RF2528 = common dso_local global i32 0, align 4
@rf_vals_bg_2528 = common dso_local global i8* null, align 8
@RF5226 = common dso_local global i32 0, align 4
@SUPPORT_BAND_5GHZ = common dso_local global i32 0, align 4
@rf_vals_5226 = common dso_local global i8* null, align 8
@RF2527 = common dso_local global i32 0, align 4
@rf_vals_5225_2527 = common dso_local global i8* null, align 8
@RF5225 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_G_START = common dso_local global i32 0, align 4
@MAX_TXPOWER = common dso_local global i8* null, align 8
@EEPROM_TXPOWER_A_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt73usb_probe_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt73usb_probe_hw_mode(%struct.rt2x00_dev* %0) #0 {
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
  %10 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %11 = load i32, i32* @IEEE80211_HW_SUPPORTS_PS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IEEE80211_HW_PS_NULLFUNC_STACK, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %20 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @SET_IEEE80211_DEV(%struct.TYPE_3__* %21, i32 %24)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %31 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %29, i32 %30)
  %32 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_3__* %28, i8* %31)
  %33 = load i32, i32* @SUPPORT_BAND_2GHZ, align 4
  %34 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %35 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @SUPPORT_RATE_CCK, align 4
  %37 = load i32, i32* @SUPPORT_RATE_OFDM, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %40 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = load i32, i32* @RF2528, align 4
  %43 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %1
  %46 = load i8*, i8** @rf_vals_bg_2528, align 8
  %47 = call i8* @ARRAY_SIZE(i8* %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %50 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** @rf_vals_bg_2528, align 8
  %52 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %53 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  br label %106

54:                                               ; preds = %1
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %56 = load i32, i32* @RF5226, align 4
  %57 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %61 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %62 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i8*, i8** @rf_vals_5226, align 8
  %66 = call i8* @ARRAY_SIZE(i8* %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %69 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i8*, i8** @rf_vals_5226, align 8
  %71 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %72 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  br label %105

73:                                               ; preds = %54
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = load i32, i32* @RF2527, align 4
  %76 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %80 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %79, i32 0, i32 1
  store i32 14, i32* %80, align 4
  %81 = load i8*, i8** @rf_vals_5225_2527, align 8
  %82 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %83 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  br label %104

84:                                               ; preds = %73
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %86 = load i32, i32* @RF5225, align 4
  %87 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %91 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %92 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i8*, i8** @rf_vals_5225_2527, align 8
  %96 = call i8* @ARRAY_SIZE(i8* %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %99 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i8*, i8** @rf_vals_5225_2527, align 8
  %101 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %102 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %89, %84
  br label %104

104:                                              ; preds = %103, %78
  br label %105

105:                                              ; preds = %104, %59
  br label %106

106:                                              ; preds = %105, %45
  %107 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %108 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.channel_info* @kcalloc(i32 %109, i32 16, i32 %110)
  store %struct.channel_info* %111, %struct.channel_info** %5, align 8
  %112 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %113 = icmp ne %struct.channel_info* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %187

117:                                              ; preds = %106
  %118 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %119 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %120 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %119, i32 0, i32 2
  store %struct.channel_info* %118, %struct.channel_info** %120, align 8
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %122 = load i32, i32* @EEPROM_TXPOWER_G_START, align 4
  %123 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %121, i32 %122)
  store i8* %123, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %145, %117
  %125 = load i32, i32* %7, align 4
  %126 = icmp ult i32 %125, 14
  br i1 %126, label %127, label %148

127:                                              ; preds = %124
  %128 = load i8*, i8** @MAX_TXPOWER, align 8
  %129 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %129, i64 %131
  %133 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %132, i32 0, i32 1
  store i8* %128, i8** %133, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = call i8* @TXPOWER_FROM_DEV(i8 signext %138)
  %140 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %141 = load i32, i32* %7, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %140, i64 %142
  %144 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %143, i32 0, i32 0
  store i8* %139, i8** %144, align 8
  br label %145

145:                                              ; preds = %127
  %146 = load i32, i32* %7, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %124

148:                                              ; preds = %124
  %149 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %150 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp sgt i32 %151, 14
  br i1 %152, label %153, label %186

153:                                              ; preds = %148
  %154 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %155 = load i32, i32* @EEPROM_TXPOWER_A_START, align 4
  %156 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %154, i32 %155)
  store i8* %156, i8** %6, align 8
  store i32 14, i32* %7, align 4
  br label %157

157:                                              ; preds = %182, %153
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %160 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ult i32 %158, %161
  br i1 %162, label %163, label %185

163:                                              ; preds = %157
  %164 = load i8*, i8** @MAX_TXPOWER, align 8
  %165 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %166 = load i32, i32* %7, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %165, i64 %167
  %169 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %168, i32 0, i32 1
  store i8* %164, i8** %169, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sub i32 %171, 14
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = call i8* @TXPOWER_FROM_DEV(i8 signext %175)
  %177 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %178 = load i32, i32* %7, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %177, i64 %179
  %181 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %180, i32 0, i32 0
  store i8* %176, i8** %181, align 8
  br label %182

182:                                              ; preds = %163
  %183 = load i32, i32* %7, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %157

185:                                              ; preds = %157
  br label %186

186:                                              ; preds = %185, %148
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %114
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @SET_IEEE80211_DEV(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_3__*, i8*) #1

declare dso_local i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.channel_info* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @TXPOWER_FROM_DEV(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

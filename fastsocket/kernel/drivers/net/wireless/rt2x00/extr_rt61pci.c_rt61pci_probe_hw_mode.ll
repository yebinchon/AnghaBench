; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_probe_hw_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_probe_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_5__*, i32, %struct.hw_mode_spec }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hw_mode_spec = type { i32, i32, %struct.channel_info*, i32, i32 }
%struct.channel_info = type { i8*, i8* }

@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@SUPPORT_BAND_2GHZ = common dso_local global i32 0, align 4
@SUPPORT_RATE_CCK = common dso_local global i32 0, align 4
@SUPPORT_RATE_OFDM = common dso_local global i32 0, align 4
@CAPABILITY_RF_SEQUENCE = common dso_local global i32 0, align 4
@rf_vals_noseq = common dso_local global i32 0, align 4
@rf_vals_seq = common dso_local global i32 0, align 4
@RF5225 = common dso_local global i32 0, align 4
@RF5325 = common dso_local global i32 0, align 4
@SUPPORT_BAND_5GHZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_G_START = common dso_local global i32 0, align 4
@MAX_TXPOWER = common dso_local global i8* null, align 8
@EEPROM_TXPOWER_A_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt61pci_probe_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_probe_hw_mode(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.hw_mode_spec*, align 8
  %5 = alloca %struct.channel_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 3
  store %struct.hw_mode_spec* %9, %struct.hw_mode_spec** %4, align 8
  %10 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %11
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING, align 4
  %21 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IEEE80211_HW_SUPPORTS_PS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IEEE80211_HW_PS_NULLFUNC_STACK, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @SET_IEEE80211_DEV(%struct.TYPE_5__* %33, i32 %36)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %43 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %41, i32 %42)
  %44 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_5__* %40, i8* %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 7, i32* %52, align 8
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %54 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* @SUPPORT_BAND_2GHZ, align 4
  %58 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %59 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @SUPPORT_RATE_CCK, align 4
  %61 = load i32, i32* @SUPPORT_RATE_OFDM, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %64 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @CAPABILITY_RF_SEQUENCE, align 4
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 0
  %68 = call i32 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %1
  %71 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %72 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %71, i32 0, i32 1
  store i32 14, i32* %72, align 4
  %73 = load i32, i32* @rf_vals_noseq, align 4
  %74 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %75 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  br label %82

76:                                               ; preds = %1
  %77 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %78 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %77, i32 0, i32 1
  store i32 14, i32* %78, align 4
  %79 = load i32, i32* @rf_vals_seq, align 4
  %80 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %81 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %84 = load i32, i32* @RF5225, align 4
  %85 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %89 = load i32, i32* @RF5325, align 4
  %90 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87, %82
  %93 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %94 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %95 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @rf_vals_seq, align 4
  %99 = call i32 @ARRAY_SIZE(i32 %98)
  %100 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %101 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %92, %87
  %103 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %104 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.channel_info* @kcalloc(i32 %105, i32 16, i32 %106)
  store %struct.channel_info* %107, %struct.channel_info** %5, align 8
  %108 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %109 = icmp ne %struct.channel_info* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %183

113:                                              ; preds = %102
  %114 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %115 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %116 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %115, i32 0, i32 2
  store %struct.channel_info* %114, %struct.channel_info** %116, align 8
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %118 = load i32, i32* @EEPROM_TXPOWER_G_START, align 4
  %119 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %117, i32 %118)
  store i8* %119, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %141, %113
  %121 = load i32, i32* %7, align 4
  %122 = icmp ult i32 %121, 14
  br i1 %122, label %123, label %144

123:                                              ; preds = %120
  %124 = load i8*, i8** @MAX_TXPOWER, align 8
  %125 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %126 = load i32, i32* %7, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %125, i64 %127
  %129 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %128, i32 0, i32 1
  store i8* %124, i8** %129, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = call i8* @TXPOWER_FROM_DEV(i8 signext %134)
  %136 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %136, i64 %138
  %140 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %139, i32 0, i32 0
  store i8* %135, i8** %140, align 8
  br label %141

141:                                              ; preds = %123
  %142 = load i32, i32* %7, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %120

144:                                              ; preds = %120
  %145 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %146 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %147, 14
  br i1 %148, label %149, label %182

149:                                              ; preds = %144
  %150 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %151 = load i32, i32* @EEPROM_TXPOWER_A_START, align 4
  %152 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %150, i32 %151)
  store i8* %152, i8** %6, align 8
  store i32 14, i32* %7, align 4
  br label %153

153:                                              ; preds = %178, %149
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %156 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ult i32 %154, %157
  br i1 %158, label %159, label %181

159:                                              ; preds = %153
  %160 = load i8*, i8** @MAX_TXPOWER, align 8
  %161 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %162 = load i32, i32* %7, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %161, i64 %163
  %165 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %164, i32 0, i32 1
  store i8* %160, i8** %165, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sub i32 %167, 14
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = call i8* @TXPOWER_FROM_DEV(i8 signext %171)
  %173 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %173, i64 %175
  %177 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %176, i32 0, i32 0
  store i8* %172, i8** %177, align 8
  br label %178

178:                                              ; preds = %159
  %179 = load i32, i32* %7, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %153

181:                                              ; preds = %153
  br label %182

182:                                              ; preds = %181, %144
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %182, %110
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @SET_IEEE80211_DEV(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_5__*, i8*) #1

declare dso_local i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.channel_info* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @TXPOWER_FROM_DEV(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

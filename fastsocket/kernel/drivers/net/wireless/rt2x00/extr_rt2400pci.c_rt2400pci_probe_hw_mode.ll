; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_probe_hw_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_probe_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_3__*, i32, %struct.hw_mode_spec }
%struct.TYPE_3__ = type { i32 }
%struct.hw_mode_spec = type { %struct.channel_info*, i32, i32, i32, i32 }
%struct.channel_info = type { i8*, i8* }

@IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@SUPPORT_BAND_2GHZ = common dso_local global i32 0, align 4
@SUPPORT_RATE_CCK = common dso_local global i32 0, align 4
@rf_vals_b = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_START = common dso_local global i32 0, align 4
@MAX_TXPOWER = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2400pci_probe_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2400pci_probe_hw_mode(%struct.rt2x00_dev* %0) #0 {
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
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @SUPPORT_RATE_CCK, align 4
  %39 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %40 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @rf_vals_b, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %44 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @rf_vals_b, align 4
  %46 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %47 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %49 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.channel_info* @kcalloc(i32 %50, i32 16, i32 %51)
  store %struct.channel_info* %52, %struct.channel_info** %5, align 8
  %53 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %54 = icmp ne %struct.channel_info* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %1
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %91

58:                                               ; preds = %1
  %59 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %60 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %61 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %60, i32 0, i32 0
  store %struct.channel_info* %59, %struct.channel_info** %61, align 8
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = load i32, i32* @EEPROM_TXPOWER_START, align 4
  %64 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %62, i32 %63)
  store i8* %64, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %87, %58
  %66 = load i32, i32* %7, align 4
  %67 = icmp ult i32 %66, 14
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i8, i8* @MAX_TXPOWER, align 1
  %70 = call i8* @TXPOWER_FROM_DEV(i8 signext %69)
  %71 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %71, i64 %73
  %75 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %74, i32 0, i32 1
  store i8* %70, i8** %75, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = call i8* @TXPOWER_FROM_DEV(i8 signext %80)
  %82 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %82, i64 %84
  %86 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %85, i32 0, i32 0
  store i8* %81, i8** %86, align 8
  br label %87

87:                                               ; preds = %68
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %65

90:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @SET_IEEE80211_DEV(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_3__*, i8*) #1

declare dso_local i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.channel_info* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @TXPOWER_FROM_DEV(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

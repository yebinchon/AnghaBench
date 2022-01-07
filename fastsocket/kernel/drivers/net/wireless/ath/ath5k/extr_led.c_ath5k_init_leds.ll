; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_led.c_ath5k_init_leds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_led.c_ath5k_init_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32, i32, i32, i32, %struct.pci_dev*, %struct.ieee80211_hw* }
%struct.pci_dev = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.pci_device_id = type { i32 }

@ATH5K_LED_MAX_NAME_LEN = common dso_local global i32 0, align 4
@ath5k_led_devices = common dso_local global i32* null, align 8
@ATH_STAT_LEDSOFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ath5k-%s::rx\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ath5k-%s::tx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_init_leds(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pci_device_id*, align 8
  %10 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 6
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  store %struct.ieee80211_hw* %13, %struct.ieee80211_hw** %5, align 8
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 5
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %6, align 8
  %17 = load i32, i32* @ATH5K_LED_MAX_NAME_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 5
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  %25 = icmp ne %struct.pci_dev* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %93

27:                                               ; preds = %1
  %28 = load i32*, i32** @ath5k_led_devices, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = call %struct.pci_device_id* @pci_match_id(i32* %29, %struct.pci_dev* %30)
  store %struct.pci_device_id* %31, %struct.pci_device_id** %9, align 8
  %32 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %33 = icmp ne %struct.pci_device_id* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load i32, i32* @ATH_STAT_LEDSOFT, align 4
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @__set_bit(i32 %35, i32 %38)
  %40 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %41 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ATH_PIN(i32 %42)
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %47 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ATH_POLARITY(i32 %48)
  %50 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %51 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %34, %27
  %53 = load i32, i32* @ATH_STAT_LEDSOFT, align 4
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @test_bit(i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %91

60:                                               ; preds = %52
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %62 = call i32 @ath5k_led_enable(%struct.ath5k_hw* %61)
  %63 = trunc i64 %19 to i32
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @wiphy_name(i32 %66)
  %68 = call i32 @snprintf(i8* %21, i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %70, i32 0, i32 1
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %73 = call i32 @ieee80211_get_rx_led_name(%struct.ieee80211_hw* %72)
  %74 = call i32 @ath5k_register_led(%struct.ath5k_hw* %69, i32* %71, i8* %21, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  br label %91

78:                                               ; preds = %60
  %79 = trunc i64 %19 to i32
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @wiphy_name(i32 %82)
  %84 = call i32 @snprintf(i8* %21, i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %86 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %87 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %86, i32 0, i32 0
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %89 = call i32 @ieee80211_get_tx_led_name(%struct.ieee80211_hw* %88)
  %90 = call i32 @ath5k_register_led(%struct.ath5k_hw* %85, i32* %87, i8* %21, i32 %89)
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %78, %77, %59
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %26
  %94 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pci_device_id* @pci_match_id(i32*, %struct.pci_dev*) #2

declare dso_local i32 @__set_bit(i32, i32) #2

declare dso_local i32 @ATH_PIN(i32) #2

declare dso_local i32 @ATH_POLARITY(i32) #2

declare dso_local i32 @test_bit(i32, i32) #2

declare dso_local i32 @ath5k_led_enable(%struct.ath5k_hw*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @wiphy_name(i32) #2

declare dso_local i32 @ath5k_register_led(%struct.ath5k_hw*, i32*, i8*, i32) #2

declare dso_local i32 @ieee80211_get_rx_led_name(%struct.ieee80211_hw*) #2

declare dso_local i32 @ieee80211_get_tx_led_name(%struct.ieee80211_hw*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

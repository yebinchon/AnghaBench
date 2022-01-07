; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_leds.c_b43legacy_map_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_leds.c_b43legacy_map_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32 }
%struct.TYPE_3__ = type { i32 }

@B43legacy_LED_MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"b43legacy-%s::tx\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"b43legacy-%s::rx\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"b43legacy-%s::radio\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"b43legacy-%s::assoc\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"LEDs: Unknown behaviour 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i32, i32, i32)* @b43legacy_map_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_map_led(%struct.b43legacy_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43legacy_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %15, align 8
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %9, align 8
  %17 = load i32, i32* @B43legacy_LED_MAX_NAME_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %108 [
    i32 136, label %23
    i32 134, label %24
    i32 133, label %29
    i32 139, label %34
    i32 129, label %34
    i32 138, label %34
    i32 131, label %63
    i32 132, label %63
    i32 130, label %63
    i32 135, label %63
    i32 128, label %93
    i32 137, label %93
  ]

23:                                               ; preds = %4
  br label %114

24:                                               ; preds = %4
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @b43legacy_led_turn_off(%struct.b43legacy_wldev* %25, i32 %26, i32 %27)
  br label %114

29:                                               ; preds = %4
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @b43legacy_led_turn_on(%struct.b43legacy_wldev* %30, i32 %31, i32 %32)
  br label %114

34:                                               ; preds = %4, %4, %4
  %35 = trunc i64 %19 to i32
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @wiphy_name(i32 %38)
  %40 = call i32 @snprintf(i8* %21, i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %43 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %42, i32 0, i32 5
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %45 = call i32 @ieee80211_get_tx_led_name(%struct.ieee80211_hw* %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @b43legacy_register_led(%struct.b43legacy_wldev* %41, i32* %43, i8* %21, i32 %45, i32 %46, i32 %47)
  %49 = trunc i64 %19 to i32
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @wiphy_name(i32 %52)
  %54 = call i32 @snprintf(i8* %21, i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %57 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %56, i32 0, i32 4
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %59 = call i32 @ieee80211_get_rx_led_name(%struct.ieee80211_hw* %58)
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @b43legacy_register_led(%struct.b43legacy_wldev* %55, i32* %57, i8* %21, i32 %59, i32 %60, i32 %61)
  br label %114

63:                                               ; preds = %4, %4, %4, %4
  %64 = trunc i64 %19 to i32
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @wiphy_name(i32 %67)
  %69 = call i32 @snprintf(i8* %21, i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %72 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %71, i32 0, i32 3
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %74 = call i32 @ieee80211_get_radio_led_name(%struct.ieee80211_hw* %73)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @b43legacy_register_led(%struct.b43legacy_wldev* %70, i32* %72, i8* %21, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %79 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %63
  %84 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %85 = call i32 @b43legacy_is_hw_radio_enabled(%struct.b43legacy_wldev* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @b43legacy_led_turn_on(%struct.b43legacy_wldev* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %83, %63
  br label %114

93:                                               ; preds = %4, %4
  %94 = trunc i64 %19 to i32
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %96 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @wiphy_name(i32 %97)
  %99 = call i32 @snprintf(i8* %21, i32 %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %101 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %102 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %101, i32 0, i32 1
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %104 = call i32 @ieee80211_get_assoc_led_name(%struct.ieee80211_hw* %103)
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @b43legacy_register_led(%struct.b43legacy_wldev* %100, i32* %102, i8* %21, i32 %104, i32 %105, i32 %106)
  br label %114

108:                                              ; preds = %4
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %110 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @b43legacywarn(%struct.TYPE_4__* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %108, %93, %92, %34, %29, %24, %23
  %115 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %115)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @b43legacy_led_turn_off(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_led_turn_on(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @wiphy_name(i32) #2

declare dso_local i32 @b43legacy_register_led(%struct.b43legacy_wldev*, i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @ieee80211_get_tx_led_name(%struct.ieee80211_hw*) #2

declare dso_local i32 @ieee80211_get_rx_led_name(%struct.ieee80211_hw*) #2

declare dso_local i32 @ieee80211_get_radio_led_name(%struct.ieee80211_hw*) #2

declare dso_local i32 @b43legacy_is_hw_radio_enabled(%struct.b43legacy_wldev*) #2

declare dso_local i32 @ieee80211_get_assoc_led_name(%struct.ieee80211_hw*) #2

declare dso_local i32 @b43legacywarn(%struct.TYPE_4__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_leds.c_b43_map_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_leds.c_b43_map_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.ieee80211_hw* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ieee80211_hw = type { i32 }

@B43_LED_MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"b43-%s::tx\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"b43-%s::rx\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"b43-%s::radio\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"b43-%s::assoc\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"LEDs: Unknown behaviour 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32)* @b43_map_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_map_led(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %15, align 8
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %9, align 8
  %17 = load i32, i32* @B43_LED_MAX_NAME_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %95 [
    i32 136, label %23
    i32 134, label %23
    i32 133, label %23
    i32 139, label %24
    i32 129, label %24
    i32 138, label %24
    i32 131, label %59
    i32 132, label %59
    i32 130, label %59
    i32 135, label %59
    i32 128, label %77
    i32 137, label %77
  ]

23:                                               ; preds = %4, %4, %4
  br label %101

24:                                               ; preds = %4, %4, %4
  %25 = trunc i64 %19 to i32
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @wiphy_name(i32 %28)
  %30 = call i32 @snprintf(i8* %21, i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %33 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %38 = call i32 @ieee80211_get_tx_led_name(%struct.ieee80211_hw* %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @b43_register_led(%struct.b43_wldev* %31, i32* %36, i8* %21, i32 %38, i32 %39, i32 %40)
  %42 = trunc i64 %19 to i32
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @wiphy_name(i32 %45)
  %47 = call i32 @snprintf(i8* %21, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %50 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %55 = call i32 @ieee80211_get_rx_led_name(%struct.ieee80211_hw* %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @b43_register_led(%struct.b43_wldev* %48, i32* %53, i8* %21, i32 %55, i32 %56, i32 %57)
  br label %101

59:                                               ; preds = %4, %4, %4, %4
  %60 = trunc i64 %19 to i32
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @wiphy_name(i32 %63)
  %65 = call i32 @snprintf(i8* %21, i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %68 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %73 = call i32 @ieee80211_get_radio_led_name(%struct.ieee80211_hw* %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @b43_register_led(%struct.b43_wldev* %66, i32* %71, i8* %21, i32 %73, i32 %74, i32 %75)
  br label %101

77:                                               ; preds = %4, %4
  %78 = trunc i64 %19 to i32
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @wiphy_name(i32 %81)
  %83 = call i32 @snprintf(i8* %21, i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %86 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %91 = call i32 @ieee80211_get_assoc_led_name(%struct.ieee80211_hw* %90)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @b43_register_led(%struct.b43_wldev* %84, i32* %89, i8* %21, i32 %91, i32 %92, i32 %93)
  br label %101

95:                                               ; preds = %4
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %97 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @b43warn(%struct.TYPE_4__* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %77, %59, %24, %23
  %102 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @wiphy_name(i32) #2

declare dso_local i32 @b43_register_led(%struct.b43_wldev*, i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @ieee80211_get_tx_led_name(%struct.ieee80211_hw*) #2

declare dso_local i32 @ieee80211_get_rx_led_name(%struct.ieee80211_hw*) #2

declare dso_local i32 @ieee80211_get_radio_led_name(%struct.ieee80211_hw*) #2

declare dso_local i32 @ieee80211_get_assoc_led_name(%struct.ieee80211_hw*) #2

declare dso_local i32 @b43warn(%struct.TYPE_4__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

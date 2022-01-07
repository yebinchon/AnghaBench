; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_led.c_iwl_mvm_leds_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_led.c_iwl_mvm_leds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.iwl_mvm = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@iwlwifi_mod_params = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"Led disabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-led\00", align 1
@iwl_led_brightness_set = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to enable led\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_leds_init(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %12 [
    i32 130, label %8
    i32 128, label %8
    i32 129, label %9
  ]

8:                                                ; preds = %1, %1
  store i32 128, i32* %4, align 4
  br label %15

9:                                                ; preds = %1
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = call i32 @IWL_INFO(%struct.iwl_mvm* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wiphy_name(i32 %21)
  %23 = call i32 @kasprintf(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @iwl_led_brightness_set, align 4
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 128
  br i1 %35, label %36, label %44

36:                                               ; preds = %15
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @ieee80211_get_radio_led_name(%struct.TYPE_8__* %39)
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  br label %44

44:                                               ; preds = %36, %15
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 0
  %52 = call i32 @led_classdev_register(i32 %49, %struct.TYPE_6__* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @kfree(i32 %59)
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %62 = call i32 @IWL_INFO(%struct.iwl_mvm* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %55, %12, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @IWL_INFO(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @ieee80211_get_radio_led_name(%struct.TYPE_8__*) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

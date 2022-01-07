; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_led.c_iwl_leds_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_led.c_iwl_leds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.iwl_priv = type { i32, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_11__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@iwlwifi_mod_params = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@IWL_LED_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Led disabled\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-led\00", align 1
@iwl_led_brightness_set = common dso_local global i32 0, align 4
@iwl_led_blink_set = common dso_local global i32 0, align 4
@IEEE80211_TPT_LEDTRIG_FL_CONNECTED = common dso_local global i32 0, align 4
@iwl_blink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_leds_init(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @IWL_LED_DISABLE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %11 = call i32 @IWL_INFO(%struct.iwl_priv* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %87

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wiphy_name(i32 %27)
  %29 = call i32 @kasprintf(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @iwl_led_brightness_set, align 4
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @iwl_led_blink_set, align 4
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  switch i32 %44, label %67 [
    i32 129, label %45
    i32 130, label %47
    i32 128, label %59
  ]

45:                                               ; preds = %21
  %46 = call i32 @WARN_ON(i32 1)
  br label %67

47:                                               ; preds = %21
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 3
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load i32, i32* @IEEE80211_TPT_LEDTRIG_FL_CONNECTED, align 4
  %52 = load i32, i32* @iwl_blink, align 4
  %53 = load i32, i32* @iwl_blink, align 4
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = call i32 @ieee80211_create_tpt_led_trigger(%struct.TYPE_11__* %50, i32 %51, i32 %52, i32 %54)
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %57 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  br label %67

59:                                               ; preds = %21
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 3
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = call i32 @ieee80211_get_radio_led_name(%struct.TYPE_11__* %62)
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %65 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %21, %59, %47, %45
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %69 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %74 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %73, i32 0, i32 1
  %75 = call i32 @led_classdev_register(i32 %72, %struct.TYPE_9__* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %80 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kfree(i32 %82)
  br label %87

84:                                               ; preds = %67
  %85 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %86 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %78, %9
  ret void
}

declare dso_local i32 @IWL_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_create_tpt_led_trigger(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ieee80211_get_radio_led_name(%struct.TYPE_11__*) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

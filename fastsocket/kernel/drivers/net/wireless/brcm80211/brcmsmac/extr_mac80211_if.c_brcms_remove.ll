; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32 }
%struct.ieee80211_hw = type { %struct.brcms_info* }
%struct.brcms_info = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_device*)* @brcms_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_remove(%struct.bcma_device* %0) #0 {
  %2 = alloca %struct.bcma_device*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.brcms_info*, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %2, align 8
  %5 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %6 = call %struct.ieee80211_hw* @bcma_get_drvdata(%struct.bcma_device* %5)
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.brcms_info*, %struct.brcms_info** %8, align 8
  store %struct.brcms_info* %9, %struct.brcms_info** %4, align 8
  %10 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %16 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wiphy_rfkill_set_hw_state(i32 %21, i32 0)
  %23 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %24 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wiphy_rfkill_stop_polling(i32 %29)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %32 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %31)
  br label %33

33:                                               ; preds = %14, %1
  %34 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %35 = call i32 @brcms_free(%struct.brcms_info* %34)
  %36 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %37 = call i32 @bcma_set_drvdata(%struct.bcma_device* %36, i32* null)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %38)
  ret void
}

declare dso_local %struct.ieee80211_hw* @bcma_get_drvdata(%struct.bcma_device*) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @wiphy_rfkill_stop_polling(i32) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @brcms_free(%struct.brcms_info*) #1

declare dso_local i32 @bcma_set_drvdata(%struct.bcma_device*, i32*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

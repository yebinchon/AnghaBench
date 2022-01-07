; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_rfkill_set_hw_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_rfkill_set_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_rfkill_set_hw_state(%struct.brcms_info* %0) #0 {
  %2 = alloca %struct.brcms_info*, align 8
  %3 = alloca i32, align 4
  store %struct.brcms_info* %0, %struct.brcms_info** %2, align 8
  %4 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @brcms_c_check_radio_disabled(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %9 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %8, i32 0, i32 0
  %10 = call i32 @spin_unlock_bh(i32* %9)
  %11 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @wiphy_rfkill_set_hw_state(i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wiphy_rfkill_start_polling(i32 %29)
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %33 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @brcms_c_check_radio_disabled(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @wiphy_rfkill_start_polling(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

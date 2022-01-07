; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43_wl = type { i32, i32, i32, i32, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@B43_STAT_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @b43_op_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_op_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.b43_wl*, align 8
  %4 = alloca %struct.b43_wldev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %5)
  store %struct.b43_wl* %6, %struct.b43_wl** %3, align 8
  %7 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %7, i32 0, i32 4
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  store %struct.b43_wldev* %9, %struct.b43_wldev** %4, align 8
  %10 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %10, i32 0, i32 3
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %14 = icmp ne %struct.b43_wldev* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %18 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %21 = call i64 @b43_status(%struct.b43_wldev* %20)
  %22 = load i64, i64* @B43_STAT_STARTED, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %26 = call %struct.b43_wldev* @b43_wireless_core_stop(%struct.b43_wldev* %25)
  store %struct.b43_wldev* %26, %struct.b43_wldev** %4, align 8
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %28 = icmp ne %struct.b43_wldev* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %36

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %33 = call i32 @b43_wireless_core_exit(%struct.b43_wldev* %32)
  %34 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %35 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %31, %29
  %37 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %38 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %37, i32 0, i32 2
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %40

40:                                               ; preds = %36, %15
  %41 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %42 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %41, i32 0, i32 1
  %43 = call i32 @cancel_work_sync(i32* %42)
  ret void
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local %struct.b43_wldev* @b43_wireless_core_stop(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wireless_core_exit(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

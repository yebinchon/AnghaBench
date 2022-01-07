; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }
%struct.b43legacy_wl = type { i32, i32, %struct.b43legacy_wldev*, i32 }
%struct.b43legacy_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_device*)* @b43legacy_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_remove(%struct.ssb_device* %0) #0 {
  %2 = alloca %struct.ssb_device*, align 8
  %3 = alloca %struct.b43legacy_wl*, align 8
  %4 = alloca %struct.b43legacy_wldev*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %2, align 8
  %5 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %6 = call %struct.b43legacy_wl* @ssb_get_devtypedata(%struct.ssb_device* %5)
  store %struct.b43legacy_wl* %6, %struct.b43legacy_wl** %3, align 8
  %7 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %8 = call %struct.b43legacy_wldev* @ssb_get_drvdata(%struct.ssb_device* %7)
  store %struct.b43legacy_wldev* %8, %struct.b43legacy_wldev** %4, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 1
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %12, i32 0, i32 3
  %14 = call i32 @cancel_work_sync(i32* %13)
  %15 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %16 = icmp ne %struct.b43legacy_wl* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @B43legacy_WARN_ON(i32 %18)
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %21 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %28 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %27, i32 0, i32 2
  %29 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %28, align 8
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %31 = icmp eq %struct.b43legacy_wldev* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %34 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ieee80211_unregister_hw(i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %39 = call i32 @b43legacy_one_core_detach(%struct.ssb_device* %38)
  %40 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %41 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %40, i32 0, i32 0
  %42 = call i64 @list_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %46 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %47 = call i32 @b43legacy_wireless_exit(%struct.ssb_device* %45, %struct.b43legacy_wl* %46)
  br label %48

48:                                               ; preds = %25, %44, %37
  ret void
}

declare dso_local %struct.b43legacy_wl* @ssb_get_devtypedata(%struct.ssb_device*) #1

declare dso_local %struct.b43legacy_wldev* @ssb_get_drvdata(%struct.ssb_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @ieee80211_unregister_hw(i32) #1

declare dso_local i32 @b43legacy_one_core_detach(%struct.ssb_device*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @b43legacy_wireless_exit(%struct.ssb_device*, %struct.b43legacy_wl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

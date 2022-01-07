; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_clear_tssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_clear_tssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32 }

@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_radio_clear_tssi(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %4 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %4, i32 0, i32 0
  store %struct.b43legacy_phy* %5, %struct.b43legacy_phy** %3, align 8
  %6 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %7 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %22 [
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %11 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %12 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %10, i32 %11, i32 88, i32 32639)
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %14 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %15 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %13, i32 %14, i32 90, i32 32639)
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %17 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %18 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %16, i32 %17, i32 112, i32 32639)
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %20 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %21 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %19, i32 %20, i32 114, i32 32639)
  br label %22

22:                                               ; preds = %1, %9
  ret void
}

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

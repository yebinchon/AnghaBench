; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i64, i32 }

@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@B43legacy_TMSLOW_GMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_phy_calibrate(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %4 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %4, i32 0, i32 0
  store %struct.b43legacy_phy* %5, %struct.b43legacy_phy** %3, align 8
  %6 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %7 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %8 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %6, i32 %7)
  %9 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %16 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %22 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %27 = call i32 @b43legacy_wireless_core_reset(%struct.b43legacy_wldev* %26, i32 0)
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %29 = call i32 @b43legacy_phy_initg(%struct.b43legacy_wldev* %28)
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %31 = load i32, i32* @B43legacy_TMSLOW_GMODE, align 4
  %32 = call i32 @b43legacy_wireless_core_reset(%struct.b43legacy_wldev* %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %20, %14
  %34 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %35 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_wireless_core_reset(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_phy_initg(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

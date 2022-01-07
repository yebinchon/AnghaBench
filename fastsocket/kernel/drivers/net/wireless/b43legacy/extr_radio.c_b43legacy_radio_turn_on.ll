; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_turn_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_turn_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@B43legacy_PHY_RFOVER = common dso_local global i32 0, align 4
@B43legacy_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@B43legacy_RADIO_DEFAULT_CHANNEL_BG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_radio_turn_on(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %6 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %6, i32 0, i32 0
  store %struct.b43legacy_phy* %7, %struct.b43legacy_phy** %3, align 8
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %73

14:                                               ; preds = %1
  %15 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %16 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %68 [
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %14, %14
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %20 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %19, i32 21, i32 32768)
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %22 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %21, i32 21, i32 52224)
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %24 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %25 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 192, i32 0
  %30 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %23, i32 21, i32 %29)
  %31 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %32 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %18
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %38 = load i32, i32* @B43legacy_PHY_RFOVER, align 4
  %39 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %40 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %37, i32 %38, i32 %42)
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %45 = load i32, i32* @B43legacy_PHY_RFOVERVAL, align 4
  %46 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %47 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %44, i32 %45, i32 %49)
  %51 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %52 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %36, %18
  %55 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %56 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  %58 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %59 = load i32, i32* @B43legacy_RADIO_DEFAULT_CHANNEL_BG, align 4
  %60 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %58, i32 %59, i32 1)
  store i32 %60, i32* %4, align 4
  %61 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %61, i32 %62, i32 0)
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @B43legacy_WARN_ON(i32 %66)
  br label %70

68:                                               ; preds = %14
  %69 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %70

70:                                               ; preds = %68, %54
  %71 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %72 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %13
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

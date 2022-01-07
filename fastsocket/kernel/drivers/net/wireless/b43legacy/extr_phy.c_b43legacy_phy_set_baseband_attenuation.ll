; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_set_baseband_attenuation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_set_baseband_attenuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_phy_set_baseband_attenuation(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %7, i32 0, i32 0
  store %struct.b43legacy_phy* %8, %struct.b43legacy_phy** %5, align 8
  %9 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %10 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %15 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %14, i32 998)
  %16 = and i32 %15, 65520
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 15
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %21, i32 998, i32 %22)
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %26 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %31 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %30, i32 96)
  %32 = and i32 %31, 65475
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 %33, 2
  %35 = and i32 %34, 60
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %47

38:                                               ; preds = %24
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %40 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %39, i32 96)
  %41 = and i32 %40, 65415
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 3
  %44 = and i32 %43, 120
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %38, %29
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %48, i32 96, i32 %49)
  br label %51

51:                                               ; preds = %47, %13
  ret void
}

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

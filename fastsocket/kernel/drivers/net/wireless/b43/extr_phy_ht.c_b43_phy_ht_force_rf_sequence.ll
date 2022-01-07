; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_force_rf_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_force_rf_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_PHY_HT_RF_SEQ_MODE = common dso_local global i32 0, align 4
@B43_PHY_HT_RF_SEQ_TRIG = common dso_local global i32 0, align 4
@B43_PHY_HT_RF_SEQ_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Forcing RF sequence timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_phy_ht_force_rf_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_force_rf_sequence(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = load i32, i32* @B43_PHY_HT_RF_SEQ_MODE, align 4
  %9 = call i32 @b43_phy_read(%struct.b43_wldev* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = load i32, i32* @B43_PHY_HT_RF_SEQ_MODE, align 4
  %12 = call i32 @b43_phy_set(%struct.b43_wldev* %10, i32 %11, i32 3)
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = load i32, i32* @B43_PHY_HT_RF_SEQ_TRIG, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @b43_phy_set(%struct.b43_wldev* %13, i32 %14, i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 200
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = load i32, i32* @B43_PHY_HT_RF_SEQ_STATUS, align 4
  %23 = call i32 @b43_phy_read(%struct.b43_wldev* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %33

28:                                               ; preds = %20
  %29 = call i32 @msleep(i32 1)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %17

33:                                               ; preds = %27, %17
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @b43err(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = load i32, i32* @B43_PHY_HT_RF_SEQ_MODE, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @b43_phy_write(%struct.b43_wldev* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

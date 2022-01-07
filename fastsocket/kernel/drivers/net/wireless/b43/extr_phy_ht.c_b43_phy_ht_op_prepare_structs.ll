; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_op_prepare_structs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_op_prepare_structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { %struct.b43_phy_ht* }
%struct.b43_phy_ht = type { i32, i32*, i64* }

@B43_PHY_HT_TXPCTL_CMD_C1_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_ht_op_prepare_structs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_op_prepare_structs(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_ht*, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %3, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 0
  %10 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %9, align 8
  store %struct.b43_phy_ht* %10, %struct.b43_phy_ht** %4, align 8
  %11 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %4, align 8
  %12 = call i32 @memset(%struct.b43_phy_ht* %11, i32 0, i32 24)
  %13 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %4, align 8
  %14 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %27, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i64, i64* @B43_PHY_HT_TXPCTL_CMD_C1_INIT, align 8
  %20 = add nsw i64 %19, 1
  %21 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %4, align 8
  %22 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64 %20, i64* %26, align 8
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %15

30:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %41, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %4, align 8
  %36 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 -1, i32* %40, align 4
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %31

44:                                               ; preds = %31
  ret void
}

declare dso_local i32 @memset(%struct.b43_phy_ht*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_tx_power_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_tx_power_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_ht_tx_power_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_tx_power_fix(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %43

9:                                                ; preds = %6
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = call i32 @B43_HTTAB32(i32 26, i32 232)
  %12 = call i32 @b43_httab_read(%struct.b43_wldev* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = call i32 @B43_PHY_EXTG(i32 264)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @b43_phy_mask(%struct.b43_wldev* %13, i32 %14, i32 %15)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 272, %18
  %20 = call i32 @B43_HTTAB16(i32 7, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 16
  %23 = call i32 @b43_httab_write(%struct.b43_wldev* %17, i32 %20, i32 %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 99, %26
  %28 = call i32 @B43_HTTAB8(i32 13, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @b43_httab_write(%struct.b43_wldev* %24, i32 %28, i32 %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 115, %34
  %36 = call i32 @B43_HTTAB8(i32 13, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 255
  %39 = call i32 @b43_httab_write(%struct.b43_wldev* %32, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %9
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %6

43:                                               ; preds = %6
  ret void
}

declare dso_local i32 @b43_httab_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_HTTAB32(i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_EXTG(i32) #1

declare dso_local i32 @b43_httab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_HTTAB16(i32, i32) #1

declare dso_local i32 @B43_HTTAB8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_lp_fbw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_lp_fbw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_NPHY_TXF_40CO_B32S2 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_lp_fbw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_lp_fbw(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 3
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  store i32 4, i32* %3, align 4
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = load i32, i32* @B43_NPHY_TXF_40CO_B32S2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 3
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %17, %18
  %20 = shl i32 %19, 3
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %20, %21
  %23 = shl i32 %22, 3
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @b43_phy_write(%struct.b43_wldev* %14, i32 %15, i32 %25)
  br label %27

27:                                               ; preds = %13, %9
  store i32 1, i32* %3, align 4
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @B43_NPHY_TXF_40CO_B1S2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 %30, 3
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %31, %32
  %34 = shl i32 %33, 3
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %34, %35
  %37 = shl i32 %36, 3
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @b43_phy_write(%struct.b43_wldev* %28, i32 %29, i32 %39)
  br label %41

41:                                               ; preds = %27, %1
  ret void
}

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

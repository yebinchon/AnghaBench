; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_analog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i64 }

@B43_PHY_VERSION_OFDM = common dso_local global i32 0, align 4
@B43_PHYVER_VERSION = common dso_local global i32 0, align 4
@B43_PHYTYPE_A = common dso_local global i64 0, align 8
@B43_PHY_PWRDOWN = common dso_local global i32 0, align 4
@B43_OFDMTAB_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wa_analog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wa_analog(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  store %struct.b43_phy* %6, %struct.b43_phy** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = load i32, i32* @B43_PHY_VERSION_OFDM, align 4
  %9 = call i32 @b43_phy_read(%struct.b43_wldev* %7, i32 %8)
  %10 = load i32, i32* @B43_PHYVER_VERSION, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %16 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @B43_PHYTYPE_A, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = load i32, i32* @B43_PHY_PWRDOWN, align 4
  %23 = call i32 @b43_phy_write(%struct.b43_wldev* %21, i32 %22, i32 6152)
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = load i32, i32* @B43_PHY_PWRDOWN, align 4
  %27 = call i32 @b43_phy_write(%struct.b43_wldev* %25, i32 %26, i32 4096)
  br label %28

28:                                               ; preds = %24, %20
  br label %39

29:                                               ; preds = %1
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load i32, i32* @B43_OFDMTAB_DAC, align 4
  %32 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %30, i32 %31, i32 3, i32 4164)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_OFDMTAB_DAC, align 4
  %35 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %33, i32 %34, i32 4, i32 29185)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = load i32, i32* @B43_OFDMTAB_DAC, align 4
  %38 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %36, i32 %37, i32 6, i32 64)
  br label %39

39:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_chantab_phy_upload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_chantab_phy_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.b43_phy_n_sfo_cfg = type { i32, i32, i32, i32, i32, i32 }

@B43_NPHY_BW1A = common dso_local global i32 0, align 4
@B43_NPHY_BW2 = common dso_local global i32 0, align 4
@B43_NPHY_BW3 = common dso_local global i32 0, align 4
@B43_NPHY_BW4 = common dso_local global i32 0, align 4
@B43_NPHY_BW5 = common dso_local global i32 0, align 4
@B43_NPHY_BW6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_phy_n_sfo_cfg*)* @b43_chantab_phy_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_chantab_phy_upload(%struct.b43_wldev* %0, %struct.b43_phy_n_sfo_cfg* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy_n_sfo_cfg*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_phy_n_sfo_cfg* %1, %struct.b43_phy_n_sfo_cfg** %4, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = load i32, i32* @B43_NPHY_BW1A, align 4
  %7 = load %struct.b43_phy_n_sfo_cfg*, %struct.b43_phy_n_sfo_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.b43_phy_n_sfo_cfg, %struct.b43_phy_n_sfo_cfg* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @b43_phy_write(%struct.b43_wldev* %5, i32 %6, i32 %9)
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = load i32, i32* @B43_NPHY_BW2, align 4
  %13 = load %struct.b43_phy_n_sfo_cfg*, %struct.b43_phy_n_sfo_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.b43_phy_n_sfo_cfg, %struct.b43_phy_n_sfo_cfg* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @b43_phy_write(%struct.b43_wldev* %11, i32 %12, i32 %15)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = load i32, i32* @B43_NPHY_BW3, align 4
  %19 = load %struct.b43_phy_n_sfo_cfg*, %struct.b43_phy_n_sfo_cfg** %4, align 8
  %20 = getelementptr inbounds %struct.b43_phy_n_sfo_cfg, %struct.b43_phy_n_sfo_cfg* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @b43_phy_write(%struct.b43_wldev* %17, i32 %18, i32 %21)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = load i32, i32* @B43_NPHY_BW4, align 4
  %25 = load %struct.b43_phy_n_sfo_cfg*, %struct.b43_phy_n_sfo_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.b43_phy_n_sfo_cfg, %struct.b43_phy_n_sfo_cfg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @b43_phy_write(%struct.b43_wldev* %23, i32 %24, i32 %27)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = load i32, i32* @B43_NPHY_BW5, align 4
  %31 = load %struct.b43_phy_n_sfo_cfg*, %struct.b43_phy_n_sfo_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.b43_phy_n_sfo_cfg, %struct.b43_phy_n_sfo_cfg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @b43_phy_write(%struct.b43_wldev* %29, i32 %30, i32 %33)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = load i32, i32* @B43_NPHY_BW6, align 4
  %37 = load %struct.b43_phy_n_sfo_cfg*, %struct.b43_phy_n_sfo_cfg** %4, align 8
  %38 = getelementptr inbounds %struct.b43_phy_n_sfo_cfg, %struct.b43_phy_n_sfo_cfg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @b43_phy_write(%struct.b43_wldev* %35, i32 %36, i32 %39)
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

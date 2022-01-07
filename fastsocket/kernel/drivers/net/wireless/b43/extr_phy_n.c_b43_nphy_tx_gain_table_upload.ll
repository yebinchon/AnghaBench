; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_gain_table_upload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_gain_table_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@b43_ntab_papd_pga_gain_delta_ipa_2g = common dso_local global i32* null, align 8
@nphy = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_gain_table_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_gain_table_upload(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 1
  store %struct.b43_phy* %9, %struct.b43_phy** %3, align 8
  store i32* null, i32** %4, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = call i32* @b43_nphy_get_tx_gain_table(%struct.b43_wldev* %10)
  store i32* %11, i32** %4, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = call i32 @B43_NTAB32(i32 26, i32 192)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %12, i32 %13, i32 128, i32* %14)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = call i32 @B43_NTAB32(i32 27, i32 192)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %16, i32 %17, i32 128, i32* %18)
  %20 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %21 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 3
  br i1 %23, label %24, label %66

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %28, label %65

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 24
  %35 = and i32 %34, 15
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %6, align 8
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @b43_current_band(i32 %39)
  %41 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load i32*, i32** @b43_ntab_papd_pga_gain_delta_ipa_2g, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  br label %49

48:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 576, %51
  %53 = call i32 @B43_NTAB32(i32 26, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @b43_ntab_write(%struct.b43_wldev* %50, i32 %53, i32 %54)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 576, %57
  %59 = call i32 @B43_NTAB32(i32 27, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @b43_ntab_write(%struct.b43_wldev* %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %25

65:                                               ; preds = %25
  br label %66

66:                                               ; preds = %65, %1
  ret void
}

declare dso_local i32* @b43_nphy_get_tx_gain_table(%struct.b43_wldev*) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_NTAB32(i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

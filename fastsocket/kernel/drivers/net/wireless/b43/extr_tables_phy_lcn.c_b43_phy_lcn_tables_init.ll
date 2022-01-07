; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_lcn.c_b43_phy_lcn_tables_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_lcn.c_b43_phy_lcn_tables_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_BFL_FEM = common dso_local global i32 0, align 4
@b43_lcntab_tx_gain_tbl_2ghz_ext_pa_rev0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TX gain table unknown for this card\0A\00", align 1
@B43_BFH_FEM_BT = common dso_local global i32 0, align 4
@b43_lcntab_sw_ctl_4313_epa_rev0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SW ctl table is unknown for this card\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_phy_lcn_tables_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ssb_sprom*, %struct.ssb_sprom** %7, align 8
  store %struct.ssb_sprom* %8, %struct.ssb_sprom** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = call i32 @b43_phy_lcn_upload_static_tables(%struct.b43_wldev* %9)
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @b43_current_band(i32 %13)
  %15 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %19 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @B43_BFL_FEM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = load i32, i32* @b43_lcntab_tx_gain_tbl_2ghz_ext_pa_rev0, align 4
  %27 = call i32 @b43_phy_lcn_load_tx_gain_tab(%struct.b43_wldev* %25, i32 %26)
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @b43err(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %36 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @B43_BFL_FEM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %43 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @B43_BFH_FEM_BT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = call i32 @B43_LCNTAB16(i32 15, i32 0)
  %51 = load i32, i32* @b43_lcntab_sw_ctl_4313_epa_rev0, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = load i32, i32* @b43_lcntab_sw_ctl_4313_epa_rev0, align 4
  %54 = call i32 @b43_lcntab_write_bulk(%struct.b43_wldev* %49, i32 %50, i32 %52, i32 %53)
  br label %60

55:                                               ; preds = %41, %34
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @b43err(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %48
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = call i32 @b43_phy_lcn_load_rfpower(%struct.b43_wldev* %61)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = call i32 @b43_phy_lcn_rewrite_rfpower_table(%struct.b43_wldev* %63)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = call i32 @b43_phy_lcn_clean_papd_comp_table(%struct.b43_wldev* %65)
  ret void
}

declare dso_local i32 @b43_phy_lcn_upload_static_tables(%struct.b43_wldev*) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_phy_lcn_load_tx_gain_tab(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_lcntab_write_bulk(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_LCNTAB16(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @b43_phy_lcn_load_rfpower(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_lcn_rewrite_rfpower_table(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_lcn_clean_papd_comp_table(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

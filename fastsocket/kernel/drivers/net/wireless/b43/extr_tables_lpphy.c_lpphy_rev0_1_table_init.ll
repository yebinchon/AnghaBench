; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_lpphy.c_lpphy_rev0_1_table_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_lpphy.c_lpphy_rev0_1_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@lpphy_min_sig_sq_table = common dso_local global i32 0, align 4
@lpphy_rev01_noise_scale_table = common dso_local global i32 0, align 4
@lpphy_crs_gain_nft_table = common dso_local global i32 0, align 4
@lpphy_rev01_filter_control_table = common dso_local global i32 0, align 4
@lpphy_rev01_ps_control_table = common dso_local global i32 0, align 4
@lpphy_pll_fraction_table = common dso_local global i32 0, align 4
@lpphy_iqlo_cal_table = common dso_local global i32 0, align 4
@lpphy_rev0_ofdm_cck_gain_table = common dso_local global i32 0, align 4
@lpphy_rev1_ofdm_cck_gain_table = common dso_local global i32 0, align 4
@lpphy_gain_delta_table = common dso_local global i32 0, align 4
@lpphy_tx_power_control_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpphy_rev0_1_table_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 2
  %8 = zext i1 %7 to i32
  %9 = call i32 @B43_WARN_ON(i32 %8)
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = call i32 @B43_LPTAB8(i32 2, i32 0)
  %12 = load i32, i32* @lpphy_min_sig_sq_table, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = load i32, i32* @lpphy_min_sig_sq_table, align 4
  %15 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %10, i32 %11, i32 %13, i32 %14)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = call i32 @B43_LPTAB16(i32 1, i32 0)
  %18 = load i32, i32* @lpphy_rev01_noise_scale_table, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load i32, i32* @lpphy_rev01_noise_scale_table, align 4
  %21 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %16, i32 %17, i32 %19, i32 %20)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = call i32 @B43_LPTAB16(i32 14, i32 0)
  %24 = load i32, i32* @lpphy_crs_gain_nft_table, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = load i32, i32* @lpphy_crs_gain_nft_table, align 4
  %27 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %22, i32 %23, i32 %25, i32 %26)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = call i32 @B43_LPTAB16(i32 8, i32 0)
  %30 = load i32, i32* @lpphy_rev01_filter_control_table, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = load i32, i32* @lpphy_rev01_filter_control_table, align 4
  %33 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %28, i32 %29, i32 %31, i32 %32)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = call i32 @B43_LPTAB32(i32 9, i32 0)
  %36 = load i32, i32* @lpphy_rev01_ps_control_table, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load i32, i32* @lpphy_rev01_ps_control_table, align 4
  %39 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %34, i32 %35, i32 %37, i32 %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = call i32 @B43_LPTAB8(i32 6, i32 0)
  %42 = load i32, i32* @lpphy_pll_fraction_table, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load i32, i32* @lpphy_pll_fraction_table, align 4
  %45 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %40, i32 %41, i32 %43, i32 %44)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = call i32 @B43_LPTAB16(i32 0, i32 0)
  %48 = load i32, i32* @lpphy_iqlo_cal_table, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = load i32, i32* @lpphy_iqlo_cal_table, align 4
  %51 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %46, i32 %47, i32 %49, i32 %50)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %1
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @B43_LPTAB16(i32 13, i32 0)
  %60 = load i32, i32* @lpphy_rev0_ofdm_cck_gain_table, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = load i32, i32* @lpphy_rev0_ofdm_cck_gain_table, align 4
  %63 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %58, i32 %59, i32 %61, i32 %62)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = call i32 @B43_LPTAB16(i32 12, i32 0)
  %66 = load i32, i32* @lpphy_rev0_ofdm_cck_gain_table, align 4
  %67 = call i32 @ARRAY_SIZE(i32 %66)
  %68 = load i32, i32* @lpphy_rev0_ofdm_cck_gain_table, align 4
  %69 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %64, i32 %65, i32 %67, i32 %68)
  br label %83

70:                                               ; preds = %1
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = call i32 @B43_LPTAB16(i32 13, i32 0)
  %73 = load i32, i32* @lpphy_rev1_ofdm_cck_gain_table, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = load i32, i32* @lpphy_rev1_ofdm_cck_gain_table, align 4
  %76 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %71, i32 %72, i32 %74, i32 %75)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = call i32 @B43_LPTAB16(i32 12, i32 0)
  %79 = load i32, i32* @lpphy_rev1_ofdm_cck_gain_table, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = load i32, i32* @lpphy_rev1_ofdm_cck_gain_table, align 4
  %82 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %77, i32 %78, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %70, %57
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = call i32 @B43_LPTAB16(i32 15, i32 0)
  %86 = load i32, i32* @lpphy_gain_delta_table, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = load i32, i32* @lpphy_gain_delta_table, align 4
  %89 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %84, i32 %85, i32 %87, i32 %88)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = call i32 @B43_LPTAB32(i32 10, i32 0)
  %92 = load i32, i32* @lpphy_tx_power_control_table, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = load i32, i32* @lpphy_tx_power_control_table, align 4
  %95 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %90, i32 %91, i32 %93, i32 %94)
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_lptab_write_bulk(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_LPTAB8(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @B43_LPTAB16(i32, i32) #1

declare dso_local i32 @B43_LPTAB32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

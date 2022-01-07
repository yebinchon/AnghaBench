; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_lpphy.c_lpphy_rev2plus_table_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_lpphy.c_lpphy_rev2plus_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@lpphy_min_sig_sq_table = common dso_local global i32 0, align 4
@lpphy_rev2plus_noise_scale_table = common dso_local global i32 0, align 4
@lpphy_rev2plus_filter_control_table = common dso_local global i32 0, align 4
@lpphy_rev2plus_ps_control_table = common dso_local global i32 0, align 4
@lpphy_gain_idx_table = common dso_local global i32 0, align 4
@lpphy_aux_gain_idx_table = common dso_local global i32 0, align 4
@lpphy_sw_control_table = common dso_local global i32 0, align 4
@lpphy_hf_table = common dso_local global i32 0, align 4
@lpphy_gain_value_table = common dso_local global i32 0, align 4
@lpphy_gain_table = common dso_local global i32 0, align 4
@lpphy_pll_fraction_table = common dso_local global i32 0, align 4
@lpphy_iqlo_cal_table = common dso_local global i32 0, align 4
@lpphy_papd_eps_table = common dso_local global i32 0, align 4
@lpphy_papd_mult_table = common dso_local global i32 0, align 4
@lpphy_a0_gain_idx_table = common dso_local global i32 0, align 4
@lpphy_a0_aux_gain_idx_table = common dso_local global i32 0, align 4
@lpphy_a0_gain_value_table = common dso_local global i32 0, align 4
@lpphy_a0_gain_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpphy_rev2plus_table_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 2
  %9 = zext i1 %8 to i32
  %10 = call i32 @B43_WARN_ON(i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 704
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @B43_LPTAB32(i32 7, i32 %16)
  %18 = call i32 @b43_lptab_write(%struct.b43_wldev* %15, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = call i32 @B43_LPTAB8(i32 2, i32 0)
  %25 = load i32, i32* @lpphy_min_sig_sq_table, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load i32, i32* @lpphy_min_sig_sq_table, align 4
  %28 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %23, i32 %24, i32 %26, i32 %27)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = call i32 @B43_LPTAB16(i32 1, i32 0)
  %31 = load i32, i32* @lpphy_rev2plus_noise_scale_table, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = load i32, i32* @lpphy_rev2plus_noise_scale_table, align 4
  %34 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %29, i32 %30, i32 %32, i32 %33)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = call i32 @B43_LPTAB32(i32 11, i32 0)
  %37 = load i32, i32* @lpphy_rev2plus_filter_control_table, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load i32, i32* @lpphy_rev2plus_filter_control_table, align 4
  %40 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %35, i32 %36, i32 %38, i32 %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = call i32 @B43_LPTAB32(i32 12, i32 0)
  %43 = load i32, i32* @lpphy_rev2plus_ps_control_table, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = load i32, i32* @lpphy_rev2plus_ps_control_table, align 4
  %46 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %41, i32 %42, i32 %44, i32 %45)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = call i32 @B43_LPTAB32(i32 13, i32 0)
  %49 = load i32, i32* @lpphy_gain_idx_table, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = load i32, i32* @lpphy_gain_idx_table, align 4
  %52 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %47, i32 %48, i32 %50, i32 %51)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = call i32 @B43_LPTAB16(i32 14, i32 0)
  %55 = load i32, i32* @lpphy_aux_gain_idx_table, align 4
  %56 = call i32 @ARRAY_SIZE(i32 %55)
  %57 = load i32, i32* @lpphy_aux_gain_idx_table, align 4
  %58 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %53, i32 %54, i32 %56, i32 %57)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = call i32 @B43_LPTAB16(i32 15, i32 0)
  %61 = load i32, i32* @lpphy_sw_control_table, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = load i32, i32* @lpphy_sw_control_table, align 4
  %64 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %59, i32 %60, i32 %62, i32 %63)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = call i32 @B43_LPTAB8(i32 16, i32 0)
  %67 = load i32, i32* @lpphy_hf_table, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = load i32, i32* @lpphy_hf_table, align 4
  %70 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %65, i32 %66, i32 %68, i32 %69)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = call i32 @B43_LPTAB32(i32 17, i32 0)
  %73 = load i32, i32* @lpphy_gain_value_table, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = load i32, i32* @lpphy_gain_value_table, align 4
  %76 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %71, i32 %72, i32 %74, i32 %75)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = call i32 @B43_LPTAB16(i32 18, i32 0)
  %79 = load i32, i32* @lpphy_gain_table, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = load i32, i32* @lpphy_gain_table, align 4
  %82 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %77, i32 %78, i32 %80, i32 %81)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = call i32 @B43_LPTAB8(i32 6, i32 0)
  %85 = load i32, i32* @lpphy_pll_fraction_table, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = load i32, i32* @lpphy_pll_fraction_table, align 4
  %88 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %83, i32 %84, i32 %86, i32 %87)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = call i32 @B43_LPTAB16(i32 0, i32 0)
  %91 = load i32, i32* @lpphy_iqlo_cal_table, align 4
  %92 = call i32 @ARRAY_SIZE(i32 %91)
  %93 = load i32, i32* @lpphy_iqlo_cal_table, align 4
  %94 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %89, i32 %90, i32 %92, i32 %93)
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %96 = call i32 @B43_LPTAB32(i32 9, i32 0)
  %97 = load i32, i32* @lpphy_papd_eps_table, align 4
  %98 = call i32 @ARRAY_SIZE(i32 %97)
  %99 = load i32, i32* @lpphy_papd_eps_table, align 4
  %100 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %95, i32 %96, i32 %98, i32 %99)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = call i32 @B43_LPTAB32(i32 10, i32 0)
  %103 = load i32, i32* @lpphy_papd_mult_table, align 4
  %104 = call i32 @ARRAY_SIZE(i32 %103)
  %105 = load i32, i32* @lpphy_papd_mult_table, align 4
  %106 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %101, i32 %102, i32 %104, i32 %105)
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 17189
  br i1 %112, label %113, label %145

113:                                              ; preds = %22
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %113
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = call i32 @B43_LPTAB32(i32 13, i32 0)
  %123 = load i32, i32* @lpphy_a0_gain_idx_table, align 4
  %124 = call i32 @ARRAY_SIZE(i32 %123)
  %125 = load i32, i32* @lpphy_a0_gain_idx_table, align 4
  %126 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %121, i32 %122, i32 %124, i32 %125)
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %128 = call i32 @B43_LPTAB16(i32 14, i32 0)
  %129 = load i32, i32* @lpphy_a0_aux_gain_idx_table, align 4
  %130 = call i32 @ARRAY_SIZE(i32 %129)
  %131 = load i32, i32* @lpphy_a0_aux_gain_idx_table, align 4
  %132 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %127, i32 %128, i32 %130, i32 %131)
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = call i32 @B43_LPTAB32(i32 17, i32 0)
  %135 = load i32, i32* @lpphy_a0_gain_value_table, align 4
  %136 = call i32 @ARRAY_SIZE(i32 %135)
  %137 = load i32, i32* @lpphy_a0_gain_value_table, align 4
  %138 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %133, i32 %134, i32 %136, i32 %137)
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %140 = call i32 @B43_LPTAB16(i32 18, i32 0)
  %141 = load i32, i32* @lpphy_a0_gain_table, align 4
  %142 = call i32 @ARRAY_SIZE(i32 %141)
  %143 = load i32, i32* @lpphy_a0_gain_table, align 4
  %144 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %139, i32 %140, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %120, %113, %22
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_lptab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_LPTAB32(i32, i32) #1

declare dso_local i32 @b43_lptab_write_bulk(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_LPTAB8(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @B43_LPTAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

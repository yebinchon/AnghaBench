; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_cal_phy_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_cal_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@B43_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG_RSTRX = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@N_INTC_OVERRIDE_PA = common dso_local global i32 0, align 4
@N_INTC_OVERRIDE_TRSW = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_cal_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_cal_phy_setup(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %13 = call i32 @b43_phy_read(%struct.b43_wldev* %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %18 = call i32 @b43_phy_read(%struct.b43_wldev* %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %119

26:                                               ; preds = %1
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %29 = call i32 @b43_phy_maskset(%struct.b43_wldev* %27, i32 %28, i32 61695, i32 2560)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %32 = call i32 @b43_phy_maskset(%struct.b43_wldev* %30, i32 %31, i32 61695, i32 2560)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %35 = call i32 @b43_phy_read(%struct.b43_wldev* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, 1536
  %43 = call i32 @b43_phy_write(%struct.b43_wldev* %39, i32 %40, i32 %42)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %46 = call i32 @b43_phy_read(%struct.b43_wldev* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, 1536
  %54 = call i32 @b43_phy_write(%struct.b43_wldev* %50, i32 %51, i32 %53)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %57 = call i32 @b43_phy_read(%struct.b43_wldev* %55, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %62 = load i32, i32* @B43_NPHY_BBCFG_RSTRX, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %63, 65535
  %65 = call i32 @b43_phy_mask(%struct.b43_wldev* %60, i32 %61, i32 %64)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = call i32 @B43_NTAB16(i32 8, i32 3)
  %68 = call i32 @b43_ntab_read(%struct.b43_wldev* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = call i32 @B43_NTAB16(i32 8, i32 3)
  %74 = call i32 @b43_ntab_write(%struct.b43_wldev* %72, i32 %73, i32 0)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = call i32 @B43_NTAB16(i32 8, i32 19)
  %77 = call i32 @b43_ntab_read(%struct.b43_wldev* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 6
  store i32 %78, i32* %80, align 4
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = call i32 @B43_NTAB16(i32 8, i32 19)
  %83 = call i32 @b43_ntab_write(%struct.b43_wldev* %81, i32 %82, i32 0)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %86 = call i32 @b43_phy_read(%struct.b43_wldev* %84, i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %91 = call i32 @b43_phy_read(%struct.b43_wldev* %89, i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 8
  store i32 %91, i32* %93, align 4
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = load i32, i32* @N_INTC_OVERRIDE_PA, align 4
  %96 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %94, i32 %95, i32 1, i32 3)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = load i32, i32* @N_INTC_OVERRIDE_TRSW, align 4
  %99 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %97, i32 %98, i32 2, i32 1)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = load i32, i32* @N_INTC_OVERRIDE_TRSW, align 4
  %102 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %100, i32 %101, i32 8, i32 2)
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  %105 = call i32 @b43_phy_read(%struct.b43_wldev* %103, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 9
  store i32 %105, i32* %107, align 4
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  %110 = call i32 @b43_phy_read(%struct.b43_wldev* %108, i32 %109)
  %111 = load i32*, i32** %3, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 10
  store i32 %110, i32* %112, align 4
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %114 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  %115 = call i32 @b43_phy_mask(%struct.b43_wldev* %113, i32 %114, i32 -2)
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %117 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  %118 = call i32 @b43_phy_mask(%struct.b43_wldev* %116, i32 %117, i32 -2)
  br label %188

119:                                              ; preds = %1
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %121 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %122 = call i32 @b43_phy_maskset(%struct.b43_wldev* %120, i32 %121, i32 4095, i32 40960)
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %124 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %125 = call i32 @b43_phy_maskset(%struct.b43_wldev* %123, i32 %124, i32 4095, i32 40960)
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %128 = call i32 @b43_phy_read(%struct.b43_wldev* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32*, i32** %3, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  store i32 %129, i32* %131, align 4
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %134 = load i32, i32* %4, align 4
  %135 = or i32 %134, 12288
  %136 = call i32 @b43_phy_write(%struct.b43_wldev* %132, i32 %133, i32 %135)
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %138 = call i32 @B43_NTAB16(i32 8, i32 2)
  %139 = call i32 @b43_ntab_read(%struct.b43_wldev* %137, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = load i32*, i32** %3, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %4, align 4
  %144 = or i32 %143, 8192
  store i32 %144, i32* %4, align 4
  %145 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %146 = call i32 @B43_NTAB16(i32 8, i32 2)
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @b43_ntab_write(%struct.b43_wldev* %145, i32 %146, i32 %147)
  %149 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %150 = call i32 @B43_NTAB16(i32 8, i32 18)
  %151 = call i32 @b43_ntab_read(%struct.b43_wldev* %149, i32 %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32*, i32** %3, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %4, align 4
  %156 = or i32 %155, 8192
  store i32 %156, i32* %4, align 4
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %158 = call i32 @B43_NTAB16(i32 8, i32 18)
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @b43_ntab_write(%struct.b43_wldev* %157, i32 %158, i32 %159)
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %162 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %163 = call i32 @b43_phy_read(%struct.b43_wldev* %161, i32 %162)
  %164 = load i32*, i32** %3, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  store i32 %163, i32* %165, align 4
  %166 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %167 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %168 = call i32 @b43_phy_read(%struct.b43_wldev* %166, i32 %167)
  %169 = load i32*, i32** %3, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 6
  store i32 %168, i32* %170, align 4
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %172 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @b43_current_band(i32 %173)
  %175 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %119
  store i32 384, i32* %4, align 4
  br label %179

178:                                              ; preds = %119
  store i32 288, i32* %4, align 4
  br label %179

179:                                              ; preds = %178, %177
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %181 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @b43_phy_write(%struct.b43_wldev* %180, i32 %181, i32 %182)
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @b43_phy_write(%struct.b43_wldev* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %26
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ntab_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

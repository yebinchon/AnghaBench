; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_save_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_save_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, %struct.TYPE_3__, %struct.b43_chanspec, %struct.b43_chanspec }
%struct.TYPE_3__ = type { i32*, i32*, %struct.b43_phy_n_iq_comp, i32*, i32*, %struct.b43_phy_n_iq_comp }
%struct.b43_phy_n_iq_comp = type { i32 }
%struct.b43_chanspec = type { i32, i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_save_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_save_cal(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca %struct.b43_phy_n_iq_comp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.b43_chanspec*, align 8
  %7 = alloca i32*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  store %struct.b43_phy_n* %11, %struct.b43_phy_n** %3, align 8
  store %struct.b43_phy_n_iq_comp* null, %struct.b43_phy_n_iq_comp** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %7, align 8
  %12 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %13 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %17, i32 1)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @b43_current_band(i32 %22)
  %24 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %28 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  store %struct.b43_phy_n_iq_comp* %29, %struct.b43_phy_n_iq_comp** %4, align 8
  %30 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %31 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %5, align 8
  %34 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %35 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %34, i32 0, i32 3
  store %struct.b43_chanspec* %35, %struct.b43_chanspec** %6, align 8
  %36 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %37 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  br label %54

40:                                               ; preds = %19
  %41 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %42 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store %struct.b43_phy_n_iq_comp* %43, %struct.b43_phy_n_iq_comp** %4, align 8
  %44 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %45 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %5, align 8
  %48 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %49 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %48, i32 0, i32 2
  store %struct.b43_chanspec* %49, %struct.b43_chanspec** %6, align 8
  %50 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %51 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %7, align 8
  br label %54

54:                                               ; preds = %40, %26
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load %struct.b43_phy_n_iq_comp*, %struct.b43_phy_n_iq_comp** %4, align 8
  %57 = call i32 @b43_nphy_rx_iq_coeffs(%struct.b43_wldev* %55, i32 0, %struct.b43_phy_n_iq_comp* %56)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 3
  br i1 %62, label %63, label %96

63:                                               ; preds = %54
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = call i32 @b43_radio_read(%struct.b43_wldev* %64, i32 8225)
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = call i32 @b43_radio_read(%struct.b43_wldev* %68, i32 8226)
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = call i32 @b43_radio_read(%struct.b43_wldev* %72, i32 12321)
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %77 = call i32 @b43_radio_read(%struct.b43_wldev* %76, i32 12322)
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = call i32 @b43_radio_read(%struct.b43_wldev* %80, i32 8227)
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32 %81, i32* %83, align 4
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = call i32 @b43_radio_read(%struct.b43_wldev* %84, i32 8228)
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %89 = call i32 @b43_radio_read(%struct.b43_wldev* %88, i32 12323)
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  store i32 %89, i32* %91, align 4
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %93 = call i32 @b43_radio_read(%struct.b43_wldev* %92, i32 12324)
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 7
  store i32 %93, i32* %95, align 4
  br label %113

96:                                               ; preds = %54
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = call i32 @b43_radio_read(%struct.b43_wldev* %97, i32 139)
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = call i32 @b43_radio_read(%struct.b43_wldev* %101, i32 186)
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = call i32 @b43_radio_read(%struct.b43_wldev* %105, i32 141)
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = call i32 @b43_radio_read(%struct.b43_wldev* %109, i32 188)
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %96, %63
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.b43_chanspec*, %struct.b43_chanspec** %6, align 8
  %119 = getelementptr inbounds %struct.b43_chanspec, %struct.b43_chanspec* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %121 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.b43_chanspec*, %struct.b43_chanspec** %6, align 8
  %125 = getelementptr inbounds %struct.b43_chanspec, %struct.b43_chanspec* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = call i32 @B43_NTAB16(i32 15, i32 80)
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %126, i32 %127, i32 8, i32* %128)
  %130 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %131 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %113
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %135, i32 0)
  br label %137

137:                                              ; preds = %134, %113
  ret void
}

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_nphy_rx_iq_coeffs(%struct.b43_wldev*, i32, %struct.b43_phy_n_iq_comp*) #1

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_ntab_read_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

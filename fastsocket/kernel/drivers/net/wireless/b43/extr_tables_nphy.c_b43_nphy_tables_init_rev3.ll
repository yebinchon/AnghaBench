; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_nphy.c_b43_nphy_tables_init_rev3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_nphy.c_b43_nphy_tables_init_rev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_NTAB_FRAMESTRUCT_R3 = common dso_local global i32 0, align 4
@b43_ntab_framestruct_r3 = common dso_local global i32 0, align 4
@B43_NTAB_PILOT_R3 = common dso_local global i32 0, align 4
@b43_ntab_pilot_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TMAP_R3 = common dso_local global i32 0, align 4
@b43_ntab_tmap_r3 = common dso_local global i32 0, align 4
@B43_NTAB_INTLEVEL_R3 = common dso_local global i32 0, align 4
@b43_ntab_intlevel_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDTRN_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdtrn_r3 = common dso_local global i32 0, align 4
@B43_NTAB_NOISEVAR0_R3 = common dso_local global i32 0, align 4
@b43_ntab_noisevar0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_NOISEVAR1_R3 = common dso_local global i32 0, align 4
@b43_ntab_noisevar1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_MCS_R3 = common dso_local global i32 0, align 4
@b43_ntab_mcs_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI20A0_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi20a0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI20A1_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi20a1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI40A0_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi40a0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI40A1_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi40a1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_PILOTLT_R3 = common dso_local global i32 0, align 4
@b43_ntab_pilotlt_r3 = common dso_local global i32 0, align 4
@B43_NTAB_CHANEST_R3 = common dso_local global i32 0, align 4
@b43_ntab_channelest_r3 = common dso_local global i32 0, align 4
@B43_NTAB_FRAMELT_R3 = common dso_local global i32 0, align 4
@b43_ntab_framelookup_r3 = common dso_local global i32 0, align 4
@B43_NTAB_C0_ESTPLT_R3 = common dso_local global i32 0, align 4
@b43_ntab_estimatepowerlt0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_C1_ESTPLT_R3 = common dso_local global i32 0, align 4
@b43_ntab_estimatepowerlt1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_C0_ADJPLT_R3 = common dso_local global i32 0, align 4
@b43_ntab_adjustpower0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_C1_ADJPLT_R3 = common dso_local global i32 0, align 4
@b43_ntab_adjustpower1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_C0_GAINCTL_R3 = common dso_local global i32 0, align 4
@b43_ntab_gainctl0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_C1_GAINCTL_R3 = common dso_local global i32 0, align 4
@b43_ntab_gainctl1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_C0_IQLT_R3 = common dso_local global i32 0, align 4
@b43_ntab_iqlt0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_C1_IQLT_R3 = common dso_local global i32 0, align 4
@b43_ntab_iqlt1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_C0_LOFEEDTH_R3 = common dso_local global i32 0, align 4
@b43_ntab_loftlt0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_C1_LOFEEDTH_R3 = common dso_local global i32 0, align 4
@b43_ntab_loftlt1_r3 = common dso_local global i32 0, align 4
@b43_ntab_antswctl_r3 = common dso_local global i32* null, align 8
@B43_NTAB_ANT_SW_CTL_R3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tables_init_rev3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tables_init_rev3(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  store %struct.ssb_sprom* %9, %struct.ssb_sprom** %3, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @b43_current_band(i32 %12)
  %14 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %18 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %4, align 8
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %24 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = load i32, i32* @B43_NTAB_FRAMESTRUCT_R3, align 4
  %31 = load i32, i32* @b43_ntab_framestruct_r3, align 4
  %32 = call i32 @ntab_upload(%struct.b43_wldev* %29, i32 %30, i32 %31)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_NTAB_PILOT_R3, align 4
  %35 = load i32, i32* @b43_ntab_pilot_r3, align 4
  %36 = call i32 @ntab_upload(%struct.b43_wldev* %33, i32 %34, i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = load i32, i32* @B43_NTAB_TMAP_R3, align 4
  %39 = load i32, i32* @b43_ntab_tmap_r3, align 4
  %40 = call i32 @ntab_upload(%struct.b43_wldev* %37, i32 %38, i32 %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load i32, i32* @B43_NTAB_INTLEVEL_R3, align 4
  %43 = load i32, i32* @b43_ntab_intlevel_r3, align 4
  %44 = call i32 @ntab_upload(%struct.b43_wldev* %41, i32 %42, i32 %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_NTAB_TDTRN_R3, align 4
  %47 = load i32, i32* @b43_ntab_tdtrn_r3, align 4
  %48 = call i32 @ntab_upload(%struct.b43_wldev* %45, i32 %46, i32 %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* @B43_NTAB_NOISEVAR0_R3, align 4
  %51 = load i32, i32* @b43_ntab_noisevar0_r3, align 4
  %52 = call i32 @ntab_upload(%struct.b43_wldev* %49, i32 %50, i32 %51)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = load i32, i32* @B43_NTAB_NOISEVAR1_R3, align 4
  %55 = load i32, i32* @b43_ntab_noisevar1_r3, align 4
  %56 = call i32 @ntab_upload(%struct.b43_wldev* %53, i32 %54, i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i32, i32* @B43_NTAB_MCS_R3, align 4
  %59 = load i32, i32* @b43_ntab_mcs_r3, align 4
  %60 = call i32 @ntab_upload(%struct.b43_wldev* %57, i32 %58, i32 %59)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B43_NTAB_TDI20A0_R3, align 4
  %63 = load i32, i32* @b43_ntab_tdi20a0_r3, align 4
  %64 = call i32 @ntab_upload(%struct.b43_wldev* %61, i32 %62, i32 %63)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = load i32, i32* @B43_NTAB_TDI20A1_R3, align 4
  %67 = load i32, i32* @b43_ntab_tdi20a1_r3, align 4
  %68 = call i32 @ntab_upload(%struct.b43_wldev* %65, i32 %66, i32 %67)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* @B43_NTAB_TDI40A0_R3, align 4
  %71 = load i32, i32* @b43_ntab_tdi40a0_r3, align 4
  %72 = call i32 @ntab_upload(%struct.b43_wldev* %69, i32 %70, i32 %71)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = load i32, i32* @B43_NTAB_TDI40A1_R3, align 4
  %75 = load i32, i32* @b43_ntab_tdi40a1_r3, align 4
  %76 = call i32 @ntab_upload(%struct.b43_wldev* %73, i32 %74, i32 %75)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = load i32, i32* @B43_NTAB_PILOTLT_R3, align 4
  %79 = load i32, i32* @b43_ntab_pilotlt_r3, align 4
  %80 = call i32 @ntab_upload(%struct.b43_wldev* %77, i32 %78, i32 %79)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = load i32, i32* @B43_NTAB_CHANEST_R3, align 4
  %83 = load i32, i32* @b43_ntab_channelest_r3, align 4
  %84 = call i32 @ntab_upload(%struct.b43_wldev* %81, i32 %82, i32 %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = load i32, i32* @B43_NTAB_FRAMELT_R3, align 4
  %87 = load i32, i32* @b43_ntab_framelookup_r3, align 4
  %88 = call i32 @ntab_upload(%struct.b43_wldev* %85, i32 %86, i32 %87)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = load i32, i32* @B43_NTAB_C0_ESTPLT_R3, align 4
  %91 = load i32, i32* @b43_ntab_estimatepowerlt0_r3, align 4
  %92 = call i32 @ntab_upload(%struct.b43_wldev* %89, i32 %90, i32 %91)
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = load i32, i32* @B43_NTAB_C1_ESTPLT_R3, align 4
  %95 = load i32, i32* @b43_ntab_estimatepowerlt1_r3, align 4
  %96 = call i32 @ntab_upload(%struct.b43_wldev* %93, i32 %94, i32 %95)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = load i32, i32* @B43_NTAB_C0_ADJPLT_R3, align 4
  %99 = load i32, i32* @b43_ntab_adjustpower0_r3, align 4
  %100 = call i32 @ntab_upload(%struct.b43_wldev* %97, i32 %98, i32 %99)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = load i32, i32* @B43_NTAB_C1_ADJPLT_R3, align 4
  %103 = load i32, i32* @b43_ntab_adjustpower1_r3, align 4
  %104 = call i32 @ntab_upload(%struct.b43_wldev* %101, i32 %102, i32 %103)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = load i32, i32* @B43_NTAB_C0_GAINCTL_R3, align 4
  %107 = load i32, i32* @b43_ntab_gainctl0_r3, align 4
  %108 = call i32 @ntab_upload(%struct.b43_wldev* %105, i32 %106, i32 %107)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = load i32, i32* @B43_NTAB_C1_GAINCTL_R3, align 4
  %111 = load i32, i32* @b43_ntab_gainctl1_r3, align 4
  %112 = call i32 @ntab_upload(%struct.b43_wldev* %109, i32 %110, i32 %111)
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %114 = load i32, i32* @B43_NTAB_C0_IQLT_R3, align 4
  %115 = load i32, i32* @b43_ntab_iqlt0_r3, align 4
  %116 = call i32 @ntab_upload(%struct.b43_wldev* %113, i32 %114, i32 %115)
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %118 = load i32, i32* @B43_NTAB_C1_IQLT_R3, align 4
  %119 = load i32, i32* @b43_ntab_iqlt1_r3, align 4
  %120 = call i32 @ntab_upload(%struct.b43_wldev* %117, i32 %118, i32 %119)
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* @B43_NTAB_C0_LOFEEDTH_R3, align 4
  %123 = load i32, i32* @b43_ntab_loftlt0_r3, align 4
  %124 = call i32 @ntab_upload(%struct.b43_wldev* %121, i32 %122, i32 %123)
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %126 = load i32, i32* @B43_NTAB_C1_LOFEEDTH_R3, align 4
  %127 = load i32, i32* @b43_ntab_loftlt1_r3, align 4
  %128 = call i32 @ntab_upload(%struct.b43_wldev* %125, i32 %126, i32 %127)
  %129 = load i64, i64* %4, align 8
  %130 = load i32*, i32** @b43_ntab_antswctl_r3, align 8
  %131 = call i64 @ARRAY_SIZE(i32* %130)
  %132 = icmp ult i64 %129, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %28
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = load i32, i32* @B43_NTAB_ANT_SW_CTL_R3, align 4
  %136 = load i32*, i32** @b43_ntab_antswctl_r3, align 8
  %137 = load i64, i64* %4, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ntab_upload(%struct.b43_wldev* %134, i32 %135, i32 %139)
  br label %143

141:                                              ; preds = %28
  %142 = call i32 @B43_WARN_ON(i32 1)
  br label %143

143:                                              ; preds = %141, %133
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @ntab_upload(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

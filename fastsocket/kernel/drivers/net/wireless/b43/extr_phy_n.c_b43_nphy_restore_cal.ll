; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_restore_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_restore_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.b43_phy_n_iq_comp, i64*, %struct.b43_phy_n_iq_comp, i64*, i64*, i64* }
%struct.b43_phy_n_iq_comp = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_restore_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_restore_cal(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.b43_phy_n_iq_comp*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.b43_phy_n*, %struct.b43_phy_n** %12, align 8
  store %struct.b43_phy_n* %13, %struct.b43_phy_n** %3, align 8
  store i64* null, i64** %5, align 8
  store i64* null, i64** %6, align 8
  store i64* null, i64** %8, align 8
  store %struct.b43_phy_n_iq_comp* null, %struct.b43_phy_n_iq_comp** %9, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @b43_current_band(i32 %16)
  %18 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %22 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %201

27:                                               ; preds = %20
  %28 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %29 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = load i64*, i64** %30, align 8
  store i64* %31, i64** %6, align 8
  %32 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %33 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 5
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 5
  store i64* %36, i64** %5, align 8
  br label %54

37:                                               ; preds = %1
  %38 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %39 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %201

44:                                               ; preds = %37
  %45 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %46 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load i64*, i64** %47, align 8
  store i64* %48, i64** %6, align 8
  %49 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %50 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 5
  store i64* %53, i64** %5, align 8
  br label %54

54:                                               ; preds = %44, %27
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @B43_NTAB16(i32 15, i32 80)
  %57 = load i64*, i64** %6, align 8
  %58 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %55, i32 %56, i32 4, i64* %57)
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %82, %54
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %66, 3
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %72, i64* %76, align 8
  br label %81

77:                                               ; preds = %62
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %79
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %59

85:                                               ; preds = %59
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = call i32 @B43_NTAB16(i32 15, i32 88)
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %89 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %86, i32 %87, i32 4, i64* %88)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = call i32 @B43_NTAB16(i32 15, i32 85)
  %92 = load i64*, i64** %5, align 8
  %93 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %90, i32 %91, i32 2, i64* %92)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = call i32 @B43_NTAB16(i32 15, i32 93)
  %96 = load i64*, i64** %5, align 8
  %97 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %94, i32 %95, i32 2, i64* %96)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %106

103:                                              ; preds = %85
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = call i32 @b43_nphy_tx_iq_workaround(%struct.b43_wldev* %104)
  br label %106

106:                                              ; preds = %103, %85
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @b43_current_band(i32 %109)
  %111 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %115 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  store i64* %117, i64** %8, align 8
  %118 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %119 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  store %struct.b43_phy_n_iq_comp* %120, %struct.b43_phy_n_iq_comp** %9, align 8
  br label %129

121:                                              ; preds = %106
  %122 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %123 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  store i64* %125, i64** %8, align 8
  %126 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %127 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store %struct.b43_phy_n_iq_comp* %128, %struct.b43_phy_n_iq_comp** %9, align 8
  br label %129

129:                                              ; preds = %121, %113
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sge i32 %133, 3
  br i1 %134, label %135, label %176

135:                                              ; preds = %129
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %137 = load i64*, i64** %8, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @b43_radio_write(%struct.b43_wldev* %136, i32 8225, i64 %139)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %142 = load i64*, i64** %8, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @b43_radio_write(%struct.b43_wldev* %141, i32 8226, i64 %144)
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %147 = load i64*, i64** %8, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @b43_radio_write(%struct.b43_wldev* %146, i32 12321, i64 %149)
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %152 = load i64*, i64** %8, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 3
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @b43_radio_write(%struct.b43_wldev* %151, i32 12322, i64 %154)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = load i64*, i64** %8, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 4
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @b43_radio_write(%struct.b43_wldev* %156, i32 8227, i64 %159)
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %162 = load i64*, i64** %8, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 5
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @b43_radio_write(%struct.b43_wldev* %161, i32 8228, i64 %164)
  %166 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %167 = load i64*, i64** %8, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 6
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @b43_radio_write(%struct.b43_wldev* %166, i32 12323, i64 %169)
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %172 = load i64*, i64** %8, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 7
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @b43_radio_write(%struct.b43_wldev* %171, i32 12324, i64 %174)
  br label %197

176:                                              ; preds = %129
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %178 = load i64*, i64** %8, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @b43_radio_write(%struct.b43_wldev* %177, i32 139, i64 %180)
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %183 = load i64*, i64** %8, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @b43_radio_write(%struct.b43_wldev* %182, i32 186, i64 %185)
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %188 = load i64*, i64** %8, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 2
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @b43_radio_write(%struct.b43_wldev* %187, i32 141, i64 %190)
  %192 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %193 = load i64*, i64** %8, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 3
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @b43_radio_write(%struct.b43_wldev* %192, i32 188, i64 %195)
  br label %197

197:                                              ; preds = %176, %135
  %198 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %199 = load %struct.b43_phy_n_iq_comp*, %struct.b43_phy_n_iq_comp** %9, align 8
  %200 = call i32 @b43_nphy_rx_iq_coeffs(%struct.b43_wldev* %198, i32 1, %struct.b43_phy_n_iq_comp* %199)
  br label %201

201:                                              ; preds = %197, %43, %26
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i64*) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_nphy_tx_iq_workaround(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i64) #1

declare dso_local i32 @b43_nphy_rx_iq_coeffs(%struct.b43_wldev*, i32, %struct.b43_phy_n_iq_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

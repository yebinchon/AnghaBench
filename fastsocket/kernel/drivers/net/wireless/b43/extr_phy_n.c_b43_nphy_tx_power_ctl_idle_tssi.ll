; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_power_ctl_idle_tssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_power_ctl_idle_tssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@N_RSSI_TSSI_2G = common dso_local global i32 0, align 4
@N_RSSI_W1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_power_ctl_idle_tssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_power_ctl_idle_tssi(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  store %struct.b43_phy* %8, %struct.b43_phy** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 1
  %12 = load %struct.b43_phy_n*, %struct.b43_phy_n** %11, align 8
  store %struct.b43_phy_n* %12, %struct.b43_phy_n** %4, align 8
  %13 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = call i32 @b43_nphy_ipa_internal_tssi_setup(%struct.b43_wldev* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %22 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 7
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %26, i32 8192, i32 0, i32 3, i32 0, i32 0)
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %30 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %34, i32 8192, i32 0, i32 3, i32 0)
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = call i32 @b43_nphy_stop_playback(%struct.b43_wldev* %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = call i32 @b43_nphy_tx_tone(%struct.b43_wldev* %40, i32 4000, i32 0, i32 0, i32 0)
  %42 = call i32 @udelay(i32 20)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @N_RSSI_TSSI_2G, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %46 = call i32 @b43_nphy_poll_rssi(%struct.b43_wldev* %43, i32 %44, i32* %45, i32 1)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = call i32 @b43_nphy_stop_playback(%struct.b43_wldev* %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* @N_RSSI_W1, align 4
  %51 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %49, i32 0, i32 %50)
  %52 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %53 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 7
  br i1 %55, label %56, label %59

56:                                               ; preds = %37
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %57, i32 8192, i32 0, i32 3, i32 1, i32 0)
  br label %68

59:                                               ; preds = %37
  %60 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %61 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %62, 3
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %65, i32 8192, i32 0, i32 3, i32 1)
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %56
  %69 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %70 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 3
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = ashr i32 %74, 24
  %76 = and i32 %75, 255
  %77 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %78 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %86 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 4
  br label %106

90:                                               ; preds = %68
  %91 = load i32, i32* %5, align 4
  %92 = ashr i32 %91, 16
  %93 = and i32 %92, 255
  %94 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %95 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 4
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, 255
  %101 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %102 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 4
  br label %106

106:                                              ; preds = %90, %73
  %107 = load i32, i32* %5, align 4
  %108 = ashr i32 %107, 24
  %109 = and i32 %108, 255
  %110 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %111 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %109, i32* %114, align 4
  %115 = load i32, i32* %5, align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 255
  %118 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %119 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_ipa_internal_tssi_setup(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev*, i32, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_stop_playback(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_tx_tone(%struct.b43_wldev*, i32, i32, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @b43_nphy_poll_rssi(%struct.b43_wldev*, i32, i32*, i32) #2

declare dso_local i32 @b43_nphy_rssi_select(%struct.b43_wldev*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

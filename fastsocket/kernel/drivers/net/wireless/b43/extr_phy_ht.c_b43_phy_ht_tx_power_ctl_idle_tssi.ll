; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_tx_power_ctl_idle_tssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_tx_power_ctl_idle_tssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_ht* }
%struct.b43_phy_ht = type { i32* }

@b43_phy_ht_tx_power_ctl_idle_tssi.base = internal constant [3 x i32] [i32 2112, i32 2144, i32 2176], align 4
@HT_RSSI_TSSI_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_ht_tx_power_ctl_idle_tssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_tx_power_ctl_idle_tssi(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_ht*, align 8
  %4 = alloca [3 x [3 x i32]], align 16
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %9, align 8
  store %struct.b43_phy_ht* %10, %struct.b43_phy_ht** %3, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %76, %1
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %79

14:                                               ; preds = %11
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl_idle_tssi.base, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 6
  %21 = call i32 @b43_phy_read(%struct.b43_wldev* %15, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %4, i64 0, i64 %23
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl_idle_tssi.base, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 7
  %32 = call i32 @b43_phy_read(%struct.b43_wldev* %26, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %4, i64 0, i64 %34
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 2
  store i32 %32, i32* %36, align 4
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl_idle_tssi.base, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 0
  %43 = call i32 @b43_phy_read(%struct.b43_wldev* %37, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %4, i64 0, i64 %45
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %46, i64 0, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl_idle_tssi.base, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 6
  %54 = call i32 @b43_phy_write(%struct.b43_wldev* %48, i32 %53, i32 0)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl_idle_tssi.base, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 7
  %61 = call i32 @b43_phy_mask(%struct.b43_wldev* %55, i32 %60, i32 -16)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl_idle_tssi.base, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 0
  %68 = call i32 @b43_phy_set(%struct.b43_wldev* %62, i32 %67, i32 1024)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl_idle_tssi.base, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 0
  %75 = call i32 @b43_phy_set(%struct.b43_wldev* %69, i32 %74, i32 4096)
  br label %76

76:                                               ; preds = %14
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %11

79:                                               ; preds = %11
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = call i32 @b43_phy_ht_tx_tone(%struct.b43_wldev* %80)
  %82 = call i32 @udelay(i32 20)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = load i32, i32* @HT_RSSI_TSSI_2G, align 4
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %86 = call i32 @b43_phy_ht_poll_rssi(%struct.b43_wldev* %83, i32 %84, i32* %85, i32 1)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = call i32 @b43_phy_ht_stop_playback(%struct.b43_wldev* %87)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = call i32 @b43_phy_ht_reset_cca(%struct.b43_wldev* %89)
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = and i32 %92, 255
  %94 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %3, align 8
  %95 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %93, i32* %97, align 4
  %98 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 255
  %101 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %3, align 8
  %102 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %100, i32* %104, align 4
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %106 = load i32, i32* %105, align 16
  %107 = and i32 %106, 255
  %108 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %3, align 8
  %109 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 %107, i32* %111, align 4
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %152, %79
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 3
  br i1 %114, label %115, label %155

115:                                              ; preds = %112
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl_idle_tssi.base, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 0
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %4, i64 0, i64 %123
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %124, i64 0, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @b43_phy_write(%struct.b43_wldev* %116, i32 %121, i32 %126)
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl_idle_tssi.base, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 6
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %4, i64 0, i64 %135
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %136, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @b43_phy_write(%struct.b43_wldev* %128, i32 %133, i32 %138)
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl_idle_tssi.base, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 7
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %4, i64 0, i64 %147
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %148, i64 0, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @b43_phy_write(%struct.b43_wldev* %140, i32 %145, i32 %150)
  br label %152

152:                                              ; preds = %115
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %112

155:                                              ; preds = %112
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_ht_tx_tone(%struct.b43_wldev*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_phy_ht_poll_rssi(%struct.b43_wldev*, i32, i32*, i32) #1

declare dso_local i32 @b43_phy_ht_stop_playback(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_ht_reset_cca(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

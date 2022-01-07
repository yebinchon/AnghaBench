; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_b43_lpphy_op_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_b43_lpphy_op_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@B43_BUS_SSB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"LP-PHY is supported only on SSB!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Switch to channel 7 failed, error = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_lpphy_op_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_lpphy_op_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @B43_BUS_SSB, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @b43err(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = call i32 @lpphy_read_band_sprom(%struct.b43_wldev* %20)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = call i32 @lpphy_baseband_init(%struct.b43_wldev* %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = call i32 @lpphy_radio_init(%struct.b43_wldev* %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = call i32 @lpphy_calibrate_rc(%struct.b43_wldev* %26)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = call i32 @b43_lpphy_op_switch_channel(%struct.b43_wldev* %28, i32 7)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @b43dbg(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %19
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = call i32 @lpphy_tx_pctl_init(%struct.b43_wldev* %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %42 = call i32 @lpphy_calibration(%struct.b43_wldev* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @lpphy_read_band_sprom(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_baseband_init(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_radio_init(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_calibrate_rc(%struct.b43_wldev*) #1

declare dso_local i32 @b43_lpphy_op_switch_channel(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43dbg(i32, i8*, i32) #1

declare dso_local i32 @lpphy_tx_pctl_init(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_calibration(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

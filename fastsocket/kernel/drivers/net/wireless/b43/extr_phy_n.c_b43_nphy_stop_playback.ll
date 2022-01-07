; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_stop_playback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_stop_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i64 }

@B43_NPHY_SAMP_STAT = common dso_local global i32 0, align 4
@B43_NPHY_SAMP_CMD = common dso_local global i32 0, align 4
@B43_NPHY_SAMP_CMD_STOP = common dso_local global i32 0, align 4
@B43_NPHY_IQLOCAL_CMDGCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_stop_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_stop_playback(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.b43_phy_n*, %struct.b43_phy_n** %7, align 8
  store %struct.b43_phy_n* %8, %struct.b43_phy_n** %3, align 8
  %9 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %10 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %14, i32 1)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_NPHY_SAMP_STAT, align 4
  %19 = call i32 @b43_phy_read(%struct.b43_wldev* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @B43_NPHY_SAMP_CMD, align 4
  %26 = load i32, i32* @B43_NPHY_SAMP_CMD_STOP, align 4
  %27 = call i32 @b43_phy_set(%struct.b43_wldev* %24, i32 %25, i32 %26)
  br label %37

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_NPHY_IQLOCAL_CMDGCTL, align 4
  %35 = call i32 @b43_phy_mask(%struct.b43_wldev* %33, i32 %34, i32 32767)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load i32, i32* @B43_NPHY_SAMP_CMD, align 4
  %40 = call i32 @b43_phy_mask(%struct.b43_wldev* %38, i32 %39, i32 -5)
  %41 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %42 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, -2147483648
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %48 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 65535
  store i32 %50, i32* %4, align 4
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = call i32 @B43_NTAB16(i32 15, i32 87)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @b43_ntab_write(%struct.b43_wldev* %51, i32 %52, i32 %53)
  %55 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %56 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %46, %37
  %58 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %59 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %63, i32 0)
  br label %65

65:                                               ; preds = %62, %57
  ret void
}

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

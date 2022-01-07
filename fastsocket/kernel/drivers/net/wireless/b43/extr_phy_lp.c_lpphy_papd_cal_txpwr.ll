; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_papd_cal_txpwr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_papd_cal_txpwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32 }
%struct.lpphy_tx_gains = type { i32 }

@B43_LPPHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@B43_LPPHY_RF_PWR_OVERRIDE = common dso_local global i32 0, align 4
@B43_LPPHY_TXPCTL_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_papd_cal_txpwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_papd_cal_txpwr(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_lp*, align 8
  %4 = alloca %struct.lpphy_tx_gains, align 4
  %5 = alloca %struct.lpphy_tx_gains, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpphy_tx_gains, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %13, align 8
  store %struct.b43_phy_lp* %14, %struct.b43_phy_lp** %3, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = call i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev* %15)
  %17 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %18 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %22 = call i32 @b43_phy_read(%struct.b43_wldev* %20, i32 %21)
  %23 = and i32 %22, 64
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = call i32 @lpphy_get_tx_gains(%struct.b43_wldev* %27)
  %29 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %10, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = bitcast %struct.lpphy_tx_gains* %5 to i8*
  %31 = bitcast %struct.lpphy_tx_gains* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_LPPHY_RF_PWR_OVERRIDE, align 4
  %35 = call i32 @b43_phy_read(%struct.b43_wldev* %33, i32 %34)
  %36 = and i32 %35, 255
  store i32 %36, i32* %8, align 4
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = call i32 @lpphy_get_bb_mult(%struct.b43_wldev* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_LPPHY_TXPCTL_OFF, align 4
  %41 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %39, i32 %40)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 17189
  br i1 %47, label %48, label %60

48:                                               ; preds = %32
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lpphy_papd_cal(%struct.b43_wldev* %56, i32 %58, i32 0, i32 1, i32 30)
  br label %65

60:                                               ; preds = %48, %32
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @lpphy_papd_cal(%struct.b43_wldev* %61, i32 %63, i32 0, i32 1, i32 65)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @lpphy_set_tx_gains(%struct.b43_wldev* %69, i32 %71)
  br label %73

73:                                               ; preds = %68, %65
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @lpphy_set_bb_mult(%struct.b43_wldev* %74, i32 %75)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %77, i32 %78)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = load i32, i32* @B43_LPPHY_RF_PWR_OVERRIDE, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @b43_phy_maskset(%struct.b43_wldev* %80, i32 %81, i32 65280, i32 %82)
  ret void
}

declare dso_local i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_get_tx_gains(%struct.b43_wldev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lpphy_get_bb_mult(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_set_tx_power_control(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_papd_cal(%struct.b43_wldev*, i32, i32, i32, i32) #1

declare dso_local i32 @lpphy_set_tx_gains(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_bb_mult(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

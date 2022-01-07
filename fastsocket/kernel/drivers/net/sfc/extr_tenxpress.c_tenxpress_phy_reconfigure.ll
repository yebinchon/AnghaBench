; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_tenxpress_phy_reconfigure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_tenxpress_phy_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.tenxpress_phy_data* }
%struct.tenxpress_phy_data = type { i32, i32 }

@PHY_MODE_OFF = common dso_local global i32 0, align 4
@PHY_MODE_SPECIAL = common dso_local global i32 0, align 4
@PHY_MODE_NORMAL = common dso_local global i32 0, align 4
@LOOPBACK_GPHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @tenxpress_phy_reconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tenxpress_phy_reconfigure(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.tenxpress_phy_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 2
  %9 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %8, align 8
  store %struct.tenxpress_phy_data* %9, %struct.tenxpress_phy_data** %4, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PHY_MODE_OFF, align 4
  %14 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %4, align 8
  %23 = getelementptr inbounds %struct.tenxpress_phy_data, %struct.tenxpress_phy_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %2, align 4
  br label %86

24:                                               ; preds = %1
  %25 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PHY_MODE_NORMAL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %4, align 8
  %32 = getelementptr inbounds %struct.tenxpress_phy_data, %struct.tenxpress_phy_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PHY_MODE_NORMAL, align 4
  %35 = icmp ne i32 %33, %34
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ false, %24 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %4, align 8
  %40 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %41 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %42 = call i32 @LOOPBACKS_EXTERNAL(%struct.efx_nic* %41)
  %43 = call i64 @LOOPBACK_OUT_OF(%struct.tenxpress_phy_data* %39, %struct.efx_nic* %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %4, align 8
  %47 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %48 = load i32, i32* @LOOPBACK_GPHY, align 4
  %49 = shl i32 1, %48
  %50 = call i64 @LOOPBACK_CHANGED(%struct.tenxpress_phy_data* %46, %struct.efx_nic* %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %45, %36
  %53 = phi i1 [ true, %36 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57, %52
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = call i32 @tenxpress_special_reset(%struct.efx_nic* %61)
  %63 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %64 = call i32 @falcon_reset_xaui(%struct.efx_nic* %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %67 = call i32 @tenxpress_low_power(%struct.efx_nic* %66)
  %68 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %69 = call i32 @efx_mdio_transmit_disable(%struct.efx_nic* %68)
  %70 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %71 = call i32 @efx_mdio_phy_reconfigure(%struct.efx_nic* %70)
  %72 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %73 = call i32 @tenxpress_ext_loopback(%struct.efx_nic* %72)
  %74 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %75 = call i32 @efx_mdio_an_reconfigure(%struct.efx_nic* %74)
  %76 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %77 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %4, align 8
  %80 = getelementptr inbounds %struct.tenxpress_phy_data, %struct.tenxpress_phy_data* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %82 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %4, align 8
  %85 = getelementptr inbounds %struct.tenxpress_phy_data, %struct.tenxpress_phy_data* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %65, %18
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @LOOPBACK_OUT_OF(%struct.tenxpress_phy_data*, %struct.efx_nic*, i32) #1

declare dso_local i32 @LOOPBACKS_EXTERNAL(%struct.efx_nic*) #1

declare dso_local i64 @LOOPBACK_CHANGED(%struct.tenxpress_phy_data*, %struct.efx_nic*, i32) #1

declare dso_local i32 @tenxpress_special_reset(%struct.efx_nic*) #1

declare dso_local i32 @falcon_reset_xaui(%struct.efx_nic*) #1

declare dso_local i32 @tenxpress_low_power(%struct.efx_nic*) #1

declare dso_local i32 @efx_mdio_transmit_disable(%struct.efx_nic*) #1

declare dso_local i32 @efx_mdio_phy_reconfigure(%struct.efx_nic*) #1

declare dso_local i32 @tenxpress_ext_loopback(%struct.efx_nic*) #1

declare dso_local i32 @efx_mdio_an_reconfigure(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

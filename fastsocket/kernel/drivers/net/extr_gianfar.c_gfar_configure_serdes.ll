; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_configure_serdes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_configure_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gfar_private = type { i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"error: SGMII mode requires that the device tree specify a tbi-handle\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"error: Could not get TBI device\0A\00", align 1
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@MII_TBICON = common dso_local global i32 0, align 4
@TBICON_CLK_SELECT = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_1000XFULL = common dso_local global i32 0, align 4
@ADVERTISE_1000XPAUSE = common dso_local global i32 0, align 4
@ADVERTISE_1000XPSE_ASYM = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @gfar_configure_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_configure_serdes(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %5)
  store %struct.gfar_private* %6, %struct.gfar_private** %3, align 8
  %7 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %8 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = call i32 @dev_warn(i32* %13, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %17 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.phy_device* @of_phy_find_device(i32 %18)
  store %struct.phy_device* %19, %struct.phy_device** %4, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = icmp ne %struct.phy_device* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %57

26:                                               ; preds = %15
  %27 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %28 = load i32, i32* @MII_BMSR, align 4
  %29 = call i32 @phy_read(%struct.phy_device* %27, i32 %28)
  %30 = load i32, i32* @BMSR_LSTATUS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %57

34:                                               ; preds = %26
  %35 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %36 = load i32, i32* @MII_TBICON, align 4
  %37 = load i32, i32* @TBICON_CLK_SELECT, align 4
  %38 = call i32 @phy_write(%struct.phy_device* %35, i32 %36, i32 %37)
  %39 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %40 = load i32, i32* @MII_ADVERTISE, align 4
  %41 = load i32, i32* @ADVERTISE_1000XFULL, align 4
  %42 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @phy_write(%struct.phy_device* %39, i32 %40, i32 %45)
  %47 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %48 = load i32, i32* @MII_BMCR, align 4
  %49 = load i32, i32* @BMCR_ANENABLE, align 4
  %50 = load i32, i32* @BMCR_ANRESTART, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @BMCR_FULLDPLX, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @BMCR_SPEED1000, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @phy_write(%struct.phy_device* %47, i32 %48, i32 %55)
  br label %57

57:                                               ; preds = %34, %33, %22, %11
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.phy_device* @of_phy_find_device(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

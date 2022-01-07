; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_init_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ucc_geth_private = type { i32, i64, i64, %struct.phy_device*, i64, i64, %struct.ucc_geth_info* }
%struct.phy_device = type { i32, i32 }
%struct.ucc_geth_info = type { i32 }

@adjust_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_phy(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ucc_geth_private*, align 8
  %5 = alloca %struct.ucc_geth_info*, align 8
  %6 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ucc_geth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ucc_geth_private* %8, %struct.ucc_geth_private** %4, align 8
  %9 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %10 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %9, i32 0, i32 6
  %11 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %10, align 8
  store %struct.ucc_geth_info* %11, %struct.ucc_geth_info** %5, align 8
  %12 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %13 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %15 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %17 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %5, align 8
  %20 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %23 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %18, i32 %21, i32* @adjust_link, i32 0, i64 %24)
  store %struct.phy_device* %25, %struct.phy_device** %6, align 8
  %26 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %27 = icmp ne %struct.phy_device* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %31 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.phy_device* @of_phy_connect_fixed_link(%struct.net_device* %29, i32* @adjust_link, i64 %32)
  store %struct.phy_device* %33, %struct.phy_device** %6, align 8
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %36 = icmp ne %struct.phy_device* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %84

43:                                               ; preds = %34
  %44 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %45 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @uec_configure_serdes(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %54 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %65 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SPEED_1000, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %52
  %70 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %71 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %52
  %76 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %77 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %80 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %82 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %83 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %82, i32 0, i32 3
  store %struct.phy_device* %81, %struct.phy_device** %83, align 8
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %75, %37
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.ucc_geth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i32, i32*, i32, i64) #1

declare dso_local %struct.phy_device* @of_phy_connect_fixed_link(%struct.net_device*, i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @uec_configure_serdes(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

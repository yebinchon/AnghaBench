; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_check_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i64, i64, %struct.pci_dev*, %struct.net_device*, %struct.atl1e_hw }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.atl1e_hw = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i64 0, align 8
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@MAC_CTRL_RX_EN = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s: %s NIC Link is Up<%d Mbps %s>\0A\00", align 1
@atl1e_driver_name = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Full Duplex\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Half Duplex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1e_adapter*)* @atl1e_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_check_link(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_adapter*, align 8
  %4 = alloca %struct.atl1e_hw*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %3, align 8
  %12 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %12, i32 0, i32 4
  store %struct.atl1e_hw* %13, %struct.atl1e_hw** %4, align 8
  %14 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %14, i32 0, i32 3
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %17, i32 0, i32 2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %21 = load i32, i32* @MII_BMSR, align 4
  %22 = call i32 @atl1e_read_phy_reg(%struct.atl1e_hw* %20, i32 %21, i64* %10)
  %23 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %24 = load i32, i32* @MII_BMSR, align 4
  %25 = call i32 @atl1e_read_phy_reg(%struct.atl1e_hw* %23, i32 %24, i64* %10)
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @BMSR_LSTATUS, align 8
  %28 = and i64 %26, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i64 @netif_carrier_ok(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %36 = load i32, i32* @REG_MAC_CTRL, align 4
  %37 = call i32 @AT_READ_REG(%struct.atl1e_hw* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %43 = load i32, i32* @REG_MAC_CTRL, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %42, i32 %43, i32 %44)
  %46 = load i64, i64* @SPEED_0, align 8
  %47 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @netif_carrier_off(%struct.net_device* %49)
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @netif_stop_queue(%struct.net_device* %51)
  br label %53

53:                                               ; preds = %34, %30
  br label %110

54:                                               ; preds = %1
  %55 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %56 = call i32 @atl1e_get_speed_and_duplex(%struct.atl1e_hw* %55, i64* %8, i64* %9)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %111

62:                                               ; preds = %54
  %63 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %68, %62
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %82 = call i32 @atl1e_setup_mac_ctrl(%struct.atl1e_adapter* %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load i32, i32* @atl1e_driver_name, align 4
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @FULL_DUPLEX, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %99 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88, i64 %91, i8* %98)
  br label %100

100:                                              ; preds = %74, %68
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = call i64 @netif_carrier_ok(%struct.net_device* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = call i32 @netif_carrier_on(%struct.net_device* %105)
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = call i32 @netif_wake_queue(%struct.net_device* %107)
  br label %109

109:                                              ; preds = %104, %100
  br label %110

110:                                              ; preds = %109, %53
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %60
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @atl1e_read_phy_reg(%struct.atl1e_hw*, i32, i64*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @atl1e_get_speed_and_duplex(%struct.atl1e_hw*, i64*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atl1e_setup_mac_ctrl(%struct.atl1e_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i64, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

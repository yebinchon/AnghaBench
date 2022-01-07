; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_main.c_atl1c_check_link_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_main.c_atl1c_check_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i64, i64, i32, %struct.pci_dev*, %struct.net_device*, %struct.atl1c_hw }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.atl1c_hw = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"reset mac failed\0A\00", align 1
@SPEED_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: %s NIC Link is Up<%d Mbps %s>\0A\00", align 1
@atl1c_driver_name = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Full Duplex\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Half Duplex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_check_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_check_link_status(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %11 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %11, i32 0, i32 5
  store %struct.atl1c_hw* %12, %struct.atl1c_hw** %3, align 8
  %13 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %13, i32 0, i32 4
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 3
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %5, align 8
  %19 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %19, i32 0, i32 2
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %24 = load i32, i32* @MII_BMSR, align 4
  %25 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %23, i32 %24, i64* %10)
  %26 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %27 = load i32, i32* @MII_BMSR, align 4
  %28 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %26, i32 %27, i64* %10)
  %29 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %29, i32 0, i32 2
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @BMSR_LSTATUS, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %1
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @netif_carrier_off(%struct.net_device* %38)
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @netif_stop_queue(%struct.net_device* %40)
  %42 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %43 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %45 = call i64 @atl1c_reset_mac(%struct.atl1c_hw* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %49 = call i64 @netif_msg_hw(%struct.atl1c_adapter* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = call i32 @dev_warn(i32* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %58 = load i64, i64* @SPEED_0, align 8
  %59 = call i32 @atl1c_set_aspm(%struct.atl1c_hw* %57, i64 %58)
  %60 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %61 = load i64, i64* @SPEED_0, align 8
  %62 = call i32 @atl1c_post_phy_linkchg(%struct.atl1c_hw* %60, i64 %61)
  %63 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %64 = call i32 @atl1c_reset_dma_ring(%struct.atl1c_adapter* %63)
  %65 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %66 = call i32 @atl1c_configure(%struct.atl1c_adapter* %65)
  br label %141

67:                                               ; preds = %1
  %68 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %69 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %70, i32 0, i32 2
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %75 = call i32 @atl1c_get_speed_and_duplex(%struct.atl1c_hw* %74, i64* %8, i64* %9)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %76, i32 0, i32 2
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  br label %141

84:                                               ; preds = %67
  %85 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %133

96:                                               ; preds = %90, %84
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @atl1c_set_aspm(%struct.atl1c_hw* %103, i64 %104)
  %106 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @atl1c_post_phy_linkchg(%struct.atl1c_hw* %106, i64 %107)
  %109 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %110 = call i32 @atl1c_start_mac(%struct.atl1c_adapter* %109)
  %111 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %112 = call i64 @netif_msg_link(%struct.atl1c_adapter* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %96
  %115 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 0
  %117 = load i32, i32* @atl1c_driver_name, align 4
  %118 = load %struct.net_device*, %struct.net_device** %4, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %125 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @FULL_DUPLEX, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %131 = call i32 @dev_info(i32* %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %120, i64 %123, i8* %130)
  br label %132

132:                                              ; preds = %114, %96
  br label %133

133:                                              ; preds = %132, %90
  %134 = load %struct.net_device*, %struct.net_device** %4, align 8
  %135 = call i32 @netif_carrier_ok(%struct.net_device* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = call i32 @netif_carrier_on(%struct.net_device* %138)
  br label %140

140:                                              ; preds = %137, %133
  br label %141

141:                                              ; preds = %83, %140, %56
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atl1c_read_phy_reg(%struct.atl1c_hw*, i32, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @atl1c_reset_mac(%struct.atl1c_hw*) #1

declare dso_local i64 @netif_msg_hw(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @atl1c_set_aspm(%struct.atl1c_hw*, i64) #1

declare dso_local i32 @atl1c_post_phy_linkchg(%struct.atl1c_hw*, i64) #1

declare dso_local i32 @atl1c_reset_dma_ring(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_configure(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_get_speed_and_duplex(%struct.atl1c_hw*, i64*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atl1c_start_mac(%struct.atl1c_adapter*) #1

declare dso_local i64 @netif_msg_link(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i64, i8*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

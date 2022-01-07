; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_main.c_atl1c_link_chg_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_main.c_atl1c_link_chg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, i32, i32, i32, i32, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: %s NIC Link is Down\0A\00", align 1
@atl1c_driver_name = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i32 0, align 4
@ATL1C_WORK_EVENT_LINK_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_link_chg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_link_chg_event(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %7 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %7, i32 0, i32 6
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %10, i32 0, i32 5
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %13, i32 0, i32 3
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 4
  %18 = load i32, i32* @MII_BMSR, align 4
  %19 = call i32 @atl1c_read_phy_reg(i32* %17, i32 %18, i32* %5)
  %20 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %20, i32 0, i32 4
  %22 = load i32, i32* @MII_BMSR, align 4
  %23 = call i32 @atl1c_read_phy_reg(i32* %21, i32 %22, i32* %5)
  %24 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %24, i32 0, i32 3
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BMSR_LSTATUS, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i64 @netif_carrier_ok(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @netif_carrier_off(%struct.net_device* %37)
  %39 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %40 = call i64 @netif_msg_link(%struct.atl1c_adapter* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* @atl1c_driver_name, align 4
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %42, %36
  %51 = load i32, i32* @SPEED_0, align 4
  %52 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %32
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i32, i32* @ATL1C_WORK_EVENT_LINK_CHANGE, align 4
  %57 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %57, i32 0, i32 1
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  %60 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %60, i32 0, i32 0
  %62 = call i32 @schedule_work(i32* %61)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atl1c_read_phy_reg(i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i64 @netif_msg_link(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

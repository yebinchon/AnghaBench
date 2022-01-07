; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_link_chg_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_link_chg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, i32, i32, i32, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: %s NIC Link is Down\0A\00", align 1
@atl1e_driver_name = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_link_chg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_link_chg_event(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %7 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %7, i32 0, i32 5
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %10, i32 0, i32 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %16, i32 0, i32 3
  %18 = load i32, i32* @MII_BMSR, align 4
  %19 = call i32 @atl1e_read_phy_reg(i32* %17, i32 %18, i32* %5)
  %20 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %20, i32 0, i32 3
  %22 = load i32, i32* @MII_BMSR, align 4
  %23 = call i32 @atl1e_read_phy_reg(i32* %21, i32 %22, i32* %5)
  %24 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %24, i32 0, i32 2
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BMSR_LSTATUS, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i64 @netif_carrier_ok(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* @atl1e_driver_name, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i32, i32* @SPEED_0, align 4
  %45 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @netif_stop_queue(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %36, %32
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %51, i32 0, i32 0
  %53 = call i32 @schedule_work(i32* %52)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atl1e_read_phy_reg(i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

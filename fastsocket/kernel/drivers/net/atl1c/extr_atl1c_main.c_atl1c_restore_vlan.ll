; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_main.c_atl1c_restore_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_main.c_atl1c_restore_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"atl1c_restore_vlan !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_restore_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_restore_vlan(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %4 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %4, i32 0, i32 2
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %8 = call i64 @netif_msg_pktdata(%struct.atl1c_adapter* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @atl1c_vlan_rx_register(i32 %17, i32 %20)
  ret void
}

declare dso_local i64 @netif_msg_pktdata(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atl1c_vlan_rx_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

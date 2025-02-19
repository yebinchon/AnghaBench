; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_via-velocity.c_velocity_ethtool_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_via-velocity.c_velocity_ethtool_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.velocity_info = type { i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @velocity_ethtool_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_ethtool_up(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.velocity_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %4)
  store %struct.velocity_info* %5, %struct.velocity_info** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_running(%struct.net_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %11 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCI_D0, align 4
  %14 = call i32 @pci_set_power_state(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pci_set_power_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

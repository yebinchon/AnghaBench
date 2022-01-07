; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_get_eeprom_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_get_eeprom_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@PCI_DEV_REG2 = common dso_local global i32 0, align 4
@PCI_VPD_ROM_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sky2_get_eeprom_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_get_eeprom_len(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sky2_port*, align 8
  %4 = alloca %struct.sky2_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %6)
  store %struct.sky2_port* %7, %struct.sky2_port** %3, align 8
  %8 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %9 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %8, i32 0, i32 0
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %9, align 8
  store %struct.sky2_hw* %10, %struct.sky2_hw** %4, align 8
  %11 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %12 = load i32, i32* @PCI_DEV_REG2, align 4
  %13 = call i32 @sky2_pci_read16(%struct.sky2_hw* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PCI_VPD_ROM_SZ, align 4
  %16 = and i32 %14, %15
  %17 = ashr i32 %16, 14
  %18 = add nsw i32 %17, 8
  %19 = shl i32 1, %18
  ret i32 %19
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_pci_read16(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

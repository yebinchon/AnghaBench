; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc911x.c_smc911x_ethtool_write_eeprom_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc911x.c_smc911x_ethtool_write_eeprom_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smc911x_local = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @smc911x_ethtool_write_eeprom_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc911x_ethtool_write_eeprom_byte(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smc911x_local*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.smc911x_local* @netdev_priv(%struct.net_device* %8)
  store %struct.smc911x_local* %9, %struct.smc911x_local** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @smc911x_ethtool_wait_eeprom_ready(%struct.net_device* %10)
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @SMC_SET_E2P_DATA(%struct.smc911x_local* %16, i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.smc911x_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smc911x_ethtool_wait_eeprom_ready(%struct.net_device*) #1

declare dso_local i32 @SMC_SET_E2P_DATA(%struct.smc911x_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

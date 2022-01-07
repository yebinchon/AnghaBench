; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91ether_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91ether_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_private = type { i32, i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@AT91_EMAC_CTL = common dso_local global i32 0, align 4
@AT91_EMAC_CSR = common dso_local global i64 0, align 8
@AT91_EMAC_IER = common dso_local global i32 0, align 4
@AT91_EMAC_RCOM = common dso_local global i64 0, align 8
@AT91_EMAC_RBNA = common dso_local global i64 0, align 8
@AT91_EMAC_TUND = common dso_local global i64 0, align 8
@AT91_EMAC_RTRY = common dso_local global i64 0, align 8
@AT91_EMAC_TCOM = common dso_local global i64 0, align 8
@AT91_EMAC_ROVR = common dso_local global i64 0, align 8
@AT91_EMAC_ABT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @at91ether_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91ether_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.at91_private*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.at91_private* @netdev_priv(%struct.net_device* %6)
  store %struct.at91_private* %7, %struct.at91_private** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @is_valid_ether_addr(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EADDRNOTAVAIL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %61

16:                                               ; preds = %1
  %17 = load %struct.at91_private*, %struct.at91_private** %4, align 8
  %18 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_enable(i32 %19)
  %21 = load i32, i32* @AT91_EMAC_CTL, align 4
  %22 = call i64 @at91_emac_read(i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* @AT91_EMAC_CTL, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @AT91_EMAC_CSR, align 8
  %26 = or i64 %24, %25
  %27 = call i32 @at91_emac_write(i32 %23, i64 %26)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @update_mac_address(%struct.net_device* %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @enable_phyirq(%struct.net_device* %30)
  %32 = load i32, i32* @AT91_EMAC_IER, align 4
  %33 = load i64, i64* @AT91_EMAC_RCOM, align 8
  %34 = load i64, i64* @AT91_EMAC_RBNA, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* @AT91_EMAC_TUND, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* @AT91_EMAC_RTRY, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* @AT91_EMAC_TCOM, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @AT91_EMAC_ROVR, align 8
  %43 = or i64 %41, %42
  %44 = load i64, i64* @AT91_EMAC_ABT, align 8
  %45 = or i64 %43, %44
  %46 = call i32 @at91_emac_write(i32 %32, i64 %45)
  %47 = load %struct.at91_private*, %struct.at91_private** %4, align 8
  %48 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_irq(i32* %48)
  %50 = call i32 (...) @enable_mdi()
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @update_linkspeed(%struct.net_device* %51, i32 0)
  %53 = call i32 (...) @disable_mdi()
  %54 = load %struct.at91_private*, %struct.at91_private** %4, align 8
  %55 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @at91ether_start(%struct.net_device* %57)
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @netif_start_queue(%struct.net_device* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %16, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.at91_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i64 @at91_emac_read(i32) #1

declare dso_local i32 @at91_emac_write(i32, i64) #1

declare dso_local i32 @update_mac_address(%struct.net_device*) #1

declare dso_local i32 @enable_phyirq(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @enable_mdi(...) #1

declare dso_local i32 @update_linkspeed(%struct.net_device*, i32) #1

declare dso_local i32 @disable_mdi(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @at91ether_start(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

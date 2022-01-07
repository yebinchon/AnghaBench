; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_reset_and_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_reset_and_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bmac_data = type { i32, i64 }
%struct.sk_buff = type { i32 }

@INTDISABLE = common dso_local global i32 0, align 4
@EnableNormal = common dso_local global i32 0, align 4
@ETHERMINPACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bmac_reset_and_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmac_reset_and_enable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bmac_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.bmac_data* @netdev_priv(%struct.net_device* %7)
  store %struct.bmac_data* %8, %struct.bmac_data** %3, align 8
  %9 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %10 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @bmac_enable_and_reset_chip(%struct.net_device* %13)
  %15 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %16 = call i32 @bmac_init_tx_ring(%struct.bmac_data* %15)
  %17 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %18 = call i32 @bmac_init_rx_ring(%struct.bmac_data* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @bmac_init_chip(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @bmac_start_chip(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @INTDISABLE, align 4
  %25 = load i32, i32* @EnableNormal, align 4
  %26 = call i32 @bmwrite(%struct.net_device* %23, i32 %24, i32 %25)
  %27 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %28 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @ETHERMINPACKET, align 4
  %30 = call %struct.sk_buff* @dev_alloc_skb(i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %1
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* @ETHERMINPACKET, align 4
  %36 = call i8* @skb_put(%struct.sk_buff* %34, i32 %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @ETHERMINPACKET, align 4
  %39 = call i32 @memset(i8* %37, i32 0, i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i8* %40, i32 %43, i32 6)
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 6
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i8* %46, i32 %49, i32 6)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @bmac_transmit_packet(%struct.sk_buff* %51, %struct.net_device* %52)
  br label %54

54:                                               ; preds = %33, %1
  %55 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %56 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %55, i32 0, i32 0
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret void
}

declare dso_local %struct.bmac_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bmac_enable_and_reset_chip(%struct.net_device*) #1

declare dso_local i32 @bmac_init_tx_ring(%struct.bmac_data*) #1

declare dso_local i32 @bmac_init_rx_ring(%struct.bmac_data*) #1

declare dso_local i32 @bmac_init_chip(%struct.net_device*) #1

declare dso_local i32 @bmac_start_chip(%struct.net_device*) #1

declare dso_local i32 @bmwrite(%struct.net_device*, i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @bmac_transmit_packet(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

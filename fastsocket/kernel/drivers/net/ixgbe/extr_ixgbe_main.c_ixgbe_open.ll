; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, i32 }

@__IXGBE_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ixgbe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ixgbe_adapter* %7, %struct.ixgbe_adapter** %4, align 8
  %8 = load i32, i32* @__IXGBE_TESTING, align 4
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 2
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %64

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netif_carrier_off(%struct.net_device* %17)
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %20 = call i32 @ixgbe_setup_all_tx_resources(%struct.ixgbe_adapter* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %60

24:                                               ; preds = %16
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %26 = call i32 @ixgbe_setup_all_rx_resources(%struct.ixgbe_adapter* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %57

30:                                               ; preds = %24
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %32 = call i32 @ixgbe_configure(%struct.ixgbe_adapter* %31)
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %34 = call i32 @ixgbe_request_irq(%struct.ixgbe_adapter* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %54

38:                                               ; preds = %30
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %49

45:                                               ; preds = %38
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = phi i32 [ 1, %44 ], [ %48, %45 ]
  %51 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %39, i32 %50)
  %52 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %53 = call i32 @ixgbe_up_complete(%struct.ixgbe_adapter* %52)
  store i32 0, i32* %2, align 4
  br label %64

54:                                               ; preds = %37
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %56 = call i32 @ixgbe_free_all_rx_resources(%struct.ixgbe_adapter* %55)
  br label %57

57:                                               ; preds = %54, %29
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %59 = call i32 @ixgbe_free_all_tx_resources(%struct.ixgbe_adapter* %58)
  br label %60

60:                                               ; preds = %57, %23
  %61 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %62 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %49, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ixgbe_setup_all_tx_resources(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_setup_all_rx_resources(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_request_irq(%struct.ixgbe_adapter*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @ixgbe_up_complete(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_free_all_rx_resources(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_free_all_tx_resources(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

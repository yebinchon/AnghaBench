; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.mv643xx_eth_private = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"fatal error on re-opening device after MTU change\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mv643xx_eth_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv643xx_eth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.mv643xx_eth_private* %8, %struct.mv643xx_eth_private** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 64
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 9500
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %22 = call i32 @mv643xx_eth_recalc_skb_size(%struct.mv643xx_eth_private* %21)
  %23 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %24 = call i32 @tx_set_rate(%struct.mv643xx_eth_private* %23, i32 1000000000, i32 16777216)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %41

29:                                               ; preds = %17
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @mv643xx_eth_stop(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i64 @mv643xx_eth_open(%struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = call i32 @dev_printk(i32 %36, i32* %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %29
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %28, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mv643xx_eth_recalc_skb_size(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @tx_set_rate(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mv643xx_eth_stop(%struct.net_device*) #1

declare dso_local i64 @mv643xx_eth_open(%struct.net_device*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

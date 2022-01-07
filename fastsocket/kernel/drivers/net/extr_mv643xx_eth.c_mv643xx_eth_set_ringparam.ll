; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.mv643xx_eth_private = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"fatal error on re-opening device after ring param change\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @mv643xx_eth_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.mv643xx_eth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.mv643xx_eth_private* %8, %struct.mv643xx_eth_private** %6, align 8
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %13
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 4096
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 4096, %30 ]
  %33 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %34 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 4096
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  br label %44

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 4096, %43 ]
  %46 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %47 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i64 @netif_running(%struct.net_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @mv643xx_eth_stop(%struct.net_device* %52)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i64 @mv643xx_eth_open(%struct.net_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* @KERN_ERR, align 4
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = call i32 @dev_printk(i32 %58, i32* %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %44
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %57, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mv643xx_eth_stop(%struct.net_device*) #1

declare dso_local i64 @mv643xx_eth_open(%struct.net_device*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

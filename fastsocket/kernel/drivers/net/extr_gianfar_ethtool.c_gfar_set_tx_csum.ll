; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_set_tx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_set_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gfar_private = type { i32 }

@FSL_GIANFAR_DEV_HAS_CSUM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @gfar_set_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_set_tx_csum(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gfar_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %7)
  store %struct.gfar_private* %8, %struct.gfar_private** %6, align 8
  %9 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %10 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FSL_GIANFAR_DEV_HAS_CSUM, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @netif_tx_lock_bh(%struct.net_device* %19)
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %36

29:                                               ; preds = %18
  %30 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %23
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @netif_tx_unlock_bh(%struct.net_device* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

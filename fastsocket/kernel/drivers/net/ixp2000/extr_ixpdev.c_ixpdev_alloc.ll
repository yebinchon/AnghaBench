; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixpdev.c_ixpdev_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixpdev.c_ixpdev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32* }
%struct.ixpdev_priv = type { i32, i64, i32, %struct.net_device* }

@ixpdev_netdev_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@ixpdev_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @ixpdev_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ixpdev_priv*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.net_device* @alloc_etherdev(i32 %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = icmp eq %struct.net_device* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  store i32* @ixpdev_netdev_ops, i32** %15, align 8
  %16 = load i32, i32* @NETIF_F_SG, align 4
  %17 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call %struct.ixpdev_priv* @netdev_priv(%struct.net_device* %23)
  store %struct.ixpdev_priv* %24, %struct.ixpdev_priv** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load %struct.ixpdev_priv*, %struct.ixpdev_priv** %7, align 8
  %27 = getelementptr inbounds %struct.ixpdev_priv, %struct.ixpdev_priv* %26, i32 0, i32 3
  store %struct.net_device* %25, %struct.net_device** %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.ixpdev_priv*, %struct.ixpdev_priv** %7, align 8
  %30 = getelementptr inbounds %struct.ixpdev_priv, %struct.ixpdev_priv* %29, i32 0, i32 2
  %31 = load i32, i32* @ixpdev_poll, align 4
  %32 = call i32 @netif_napi_add(%struct.net_device* %28, i32* %30, i32 %31, i32 64)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.ixpdev_priv*, %struct.ixpdev_priv** %7, align 8
  %35 = getelementptr inbounds %struct.ixpdev_priv, %struct.ixpdev_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ixpdev_priv*, %struct.ixpdev_priv** %7, align 8
  %37 = getelementptr inbounds %struct.ixpdev_priv, %struct.ixpdev_priv* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %38, %struct.net_device** %3, align 8
  br label %39

39:                                               ; preds = %13, %12
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %40
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.ixpdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

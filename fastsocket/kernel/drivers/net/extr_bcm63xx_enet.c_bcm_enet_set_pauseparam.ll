; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.bcm_enet_priv = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @bcm_enet_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.bcm_enet_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bcm_enet_priv* %8, %struct.bcm_enet_priv** %6, align 8
  %9 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %10 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %18, %13
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %55

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %44 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %49 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %54 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %39, %35, %26
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32 }
%struct.ixgbe_adapter = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i8*)* @ixgbe_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ixgbe_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ixgbe_adapter* %10, %struct.ixgbe_adapter** %7, align 8
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %42 [
    i32 128, label %16
    i32 131, label %22
    i32 130, label %28
    i32 132, label %32
    i32 129, label %38
  ]

16:                                               ; preds = %3
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %8, align 4
  br label %43

22:                                               ; preds = %3
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %8, align 4
  br label %43

28:                                               ; preds = %3
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %31 = call i32 @ixgbe_get_ethtool_fdir_entry(%struct.ixgbe_adapter* %29, %struct.ethtool_rxnfc* %30)
  store i32 %31, i32* %8, align 4
  br label %43

32:                                               ; preds = %3
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %34 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = call i32 @ixgbe_get_ethtool_fdir_all(%struct.ixgbe_adapter* %33, %struct.ethtool_rxnfc* %34, i32* %36)
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %3
  %39 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %40 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %41 = call i32 @ixgbe_get_rss_hash_opts(%struct.ixgbe_adapter* %39, %struct.ethtool_rxnfc* %40)
  store i32 %41, i32* %8, align 4
  br label %43

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42, %38, %32, %28, %22, %16
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_get_ethtool_fdir_entry(%struct.ixgbe_adapter*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @ixgbe_get_ethtool_fdir_all(%struct.ixgbe_adapter*, %struct.ethtool_rxnfc*, i32*) #1

declare dso_local i32 @ixgbe_get_rss_hash_opts(%struct.ixgbe_adapter*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

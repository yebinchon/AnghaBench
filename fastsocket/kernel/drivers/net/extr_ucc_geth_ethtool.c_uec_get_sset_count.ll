; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth_ethtool.c_uec_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth_ethtool.c_uec_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ucc_geth_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UCC_GETH_STATISTICS_GATHERING_MODE_HARDWARE = common dso_local global i32 0, align 4
@UEC_HW_STATS_LEN = common dso_local global i32 0, align 4
@UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_TX = common dso_local global i32 0, align 4
@UEC_TX_FW_STATS_LEN = common dso_local global i32 0, align 4
@UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_RX = common dso_local global i32 0, align 4
@UEC_RX_FW_STATS_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @uec_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uec_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucc_geth_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ucc_geth_private* @netdev_priv(%struct.net_device* %9)
  store %struct.ucc_geth_private* %10, %struct.ucc_geth_private** %6, align 8
  %11 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %6, align 8
  %12 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %46 [
    i32 128, label %17
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @UCC_GETH_STATISTICS_GATHERING_MODE_HARDWARE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @UEC_HW_STATS_LEN, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_TX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @UEC_TX_FW_STATS_LEN, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_RX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @UEC_RX_FW_STATS_LEN, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %44
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.ucc_geth_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

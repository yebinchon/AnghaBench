; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i64, i64, i32, i32 }
%struct.jme_adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PCC_TX_TO = common dso_local global i32 0, align 4
@PCC_TX_CNT = common dso_local global i32 0, align 4
@JME_FLAG_POLL = common dso_local global i32 0, align 4
@PCC_P1_TO = common dso_local global i64 0, align 8
@PCC_P1_CNT = common dso_local global i64 0, align 8
@PCC_P2_TO = common dso_local global i64 0, align 8
@PCC_P2_CNT = common dso_local global i64 0, align 8
@PCC_P3_TO = common dso_local global i64 0, align 8
@PCC_P3_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @jme_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.jme_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.jme_adapter* %8, %struct.jme_adapter** %6, align 8
  %9 = load i32, i32* @PCC_TX_TO, align 4
  %10 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @PCC_TX_CNT, align 4
  %13 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @JME_FLAG_POLL, align 4
  %16 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  store i32 0, i32* %3, align 4
  br label %57

27:                                               ; preds = %2
  %28 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %55 [
    i32 130, label %34
    i32 129, label %41
    i32 128, label %48
  ]

34:                                               ; preds = %27
  %35 = load i64, i64* @PCC_P1_TO, align 8
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* @PCC_P1_CNT, align 8
  %39 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %56

41:                                               ; preds = %27
  %42 = load i64, i64* @PCC_P2_TO, align 8
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* @PCC_P2_CNT, align 8
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %56

48:                                               ; preds = %27
  %49 = load i64, i64* @PCC_P3_TO, align 8
  %50 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* @PCC_P3_CNT, align 8
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %56

55:                                               ; preds = %27
  br label %56

56:                                               ; preds = %55, %48, %41, %34
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.enic = type { i32 }
%struct.vnic_stats = type { i32, i32 }

@enic_n_tx_stats = common dso_local global i32 0, align 4
@enic_tx_stats = common dso_local global %struct.TYPE_3__* null, align 8
@enic_n_rx_stats = common dso_local global i32 0, align 4
@enic_rx_stats = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i8**)* @enic_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i8** %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.enic*, align 8
  %8 = alloca %struct.vnic_stats*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.enic* @netdev_priv(%struct.net_device* %10)
  store %struct.enic* %11, %struct.enic** %7, align 8
  %12 = load %struct.enic*, %struct.enic** %7, align 8
  %13 = call i32 @enic_dev_stats_dump(%struct.enic* %12, %struct.vnic_stats** %8)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @enic_n_tx_stats, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.vnic_stats*, %struct.vnic_stats** %8, align 8
  %20 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %19, i32 0, i32 1
  %21 = bitcast i32* %20 to i8**
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @enic_tx_stats, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8*, i8** %21, i64 %27
  %29 = load i8*, i8** %28, align 4
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %6, align 8
  store i8* %29, i8** %30, align 8
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %14

35:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %54, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @enic_n_rx_stats, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.vnic_stats*, %struct.vnic_stats** %8, align 8
  %42 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to i8**
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @enic_rx_stats, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %43, i64 %49
  %51 = load i8*, i8** %50, align 4
  %52 = load i8**, i8*** %6, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %6, align 8
  store i8* %51, i8** %52, align 8
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %36

57:                                               ; preds = %36
  ret void
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_dev_stats_dump(%struct.enic*, %struct.vnic_stats**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

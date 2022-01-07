; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64 }
%struct.ql_adapter = type { i32 }

@CFG_PAUSE_STD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @ql_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ql_adapter* %9, %struct.ql_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @CFG_PAUSE_STD, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %46

25:                                               ; preds = %14, %2
  %26 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @CFG_PAUSE_STD, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %45

42:                                               ; preds = %30, %25
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %48 = call i32 @ql_mb_set_port_cfg(%struct.ql_adapter* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %51, %42
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ql_mb_set_port_cfg(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

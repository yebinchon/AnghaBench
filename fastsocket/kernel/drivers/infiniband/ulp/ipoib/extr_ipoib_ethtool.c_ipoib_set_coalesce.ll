; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ethtool.c_ipoib_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ethtool.c_ipoib_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed modifying CQ (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @ipoib_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ipoib_dev_priv* %9, %struct.ipoib_dev_priv** %6, align 8
  %10 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 65535
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 65535
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %14
  %23 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ib_modify_cq(i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ENOSYS, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %35, %22
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %50 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %56 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %45, %40, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ib_modify_cq(i32, i32, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

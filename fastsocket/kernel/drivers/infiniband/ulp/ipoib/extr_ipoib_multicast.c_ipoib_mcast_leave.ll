; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_leave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_mcast = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@IPOIB_MCAST_FLAG_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"leaving MGID %pI6\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ib_detach_mcast failed (result = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ipoib_mcast*)* @ipoib_mcast_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcast_leave(%struct.net_device* %0, %struct.ipoib_mcast* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_mcast*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ipoib_mcast* %1, %struct.ipoib_mcast** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %10 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %11 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %10, i32 0, i32 1
  %12 = call i64 @test_and_clear_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %16 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ib_sa_free_multicast(i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @IPOIB_MCAST_FLAG_ATTACHED, align 4
  %21 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %22 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %21, i32 0, i32 1
  %23 = call i64 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %27 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %28 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %37 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %40 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  %44 = call i32 @ib_detach_mcast(i32 %35, %struct.TYPE_4__* %38, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %25
  br label %52

52:                                               ; preds = %51, %19
  ret i32 0
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ib_sa_free_multicast(i32) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @ib_detach_mcast(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

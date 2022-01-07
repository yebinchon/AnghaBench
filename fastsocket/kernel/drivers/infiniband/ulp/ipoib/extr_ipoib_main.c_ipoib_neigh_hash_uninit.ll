; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_hash_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_hash_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ipoib_neigh_hash_uninit\0A\00", align 1
@IPOIB_NEIGH_TBL_FLUSH = common dso_local global i32 0, align 4
@IPOIB_STOP_NEIGH_GC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipoib_neigh_hash_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_neigh_hash_uninit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ipoib_dev_priv* %6, %struct.ipoib_dev_priv** %3, align 8
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %8 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @init_completion(i32* %11)
  %13 = load i32, i32* @IPOIB_NEIGH_TBL_FLUSH, align 4
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 2
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @IPOIB_STOP_NEIGH_GC, align 4
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 2
  %20 = call i32 @test_and_set_bit(i32 %17, i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 1
  %26 = call i32 @cancel_delayed_work(i32* %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %29 = call i32 @ipoib_flush_neighs(%struct.ipoib_dev_priv* %28)
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @wait_for_completion(i32* %32)
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ipoib_flush_neighs(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

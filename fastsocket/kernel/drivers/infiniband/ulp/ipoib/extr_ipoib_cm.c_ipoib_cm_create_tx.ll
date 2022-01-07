; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_create_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_create_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_cm_tx = type { i32, i32, %struct.net_device*, %struct.ipoib_path*, %struct.ipoib_neigh* }
%struct.net_device = type { i32 }
%struct.ipoib_path = type { i32 }
%struct.ipoib_neigh = type { %struct.ipoib_cm_tx* }
%struct.ipoib_dev_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipoib_cm_tx* @ipoib_cm_create_tx(%struct.net_device* %0, %struct.ipoib_path* %1, %struct.ipoib_neigh* %2) #0 {
  %4 = alloca %struct.ipoib_cm_tx*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipoib_path*, align 8
  %7 = alloca %struct.ipoib_neigh*, align 8
  %8 = alloca %struct.ipoib_dev_priv*, align 8
  %9 = alloca %struct.ipoib_cm_tx*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ipoib_path* %1, %struct.ipoib_path** %6, align 8
  store %struct.ipoib_neigh* %2, %struct.ipoib_neigh** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.ipoib_dev_priv* %11, %struct.ipoib_dev_priv** %8, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.ipoib_cm_tx* @kzalloc(i32 32, i32 %12)
  store %struct.ipoib_cm_tx* %13, %struct.ipoib_cm_tx** %9, align 8
  %14 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %9, align 8
  %15 = icmp ne %struct.ipoib_cm_tx* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.ipoib_cm_tx* null, %struct.ipoib_cm_tx** %4, align 8
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %9, align 8
  %19 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %7, align 8
  %20 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %19, i32 0, i32 0
  store %struct.ipoib_cm_tx* %18, %struct.ipoib_cm_tx** %20, align 8
  %21 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %7, align 8
  %22 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %9, align 8
  %23 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %22, i32 0, i32 4
  store %struct.ipoib_neigh* %21, %struct.ipoib_neigh** %23, align 8
  %24 = load %struct.ipoib_path*, %struct.ipoib_path** %6, align 8
  %25 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %9, align 8
  %26 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %25, i32 0, i32 3
  store %struct.ipoib_path* %24, %struct.ipoib_path** %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %9, align 8
  %29 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %28, i32 0, i32 2
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  %30 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %9, align 8
  %31 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %30, i32 0, i32 1
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @list_add(i32* %31, i32* %34)
  %36 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %37 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %9, align 8
  %38 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load i32, i32* @ipoib_workqueue, align 4
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %42 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @queue_work(i32 %40, i32* %43)
  %45 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %9, align 8
  store %struct.ipoib_cm_tx* %45, %struct.ipoib_cm_tx** %4, align 8
  br label %46

46:                                               ; preds = %17, %16
  %47 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %4, align 8
  ret %struct.ipoib_cm_tx* %47
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ipoib_cm_tx* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

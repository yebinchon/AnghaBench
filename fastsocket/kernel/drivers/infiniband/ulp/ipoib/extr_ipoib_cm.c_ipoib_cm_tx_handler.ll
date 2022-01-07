; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_tx_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.ipoib_cm_tx* }
%struct.ipoib_cm_tx = type { i32, i32, %struct.ipoib_neigh*, i32 }
%struct.ipoib_neigh = type { i32* }
%struct.ib_cm_event = type { i32 }
%struct.ipoib_dev_priv = type { i32, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"DREQ received.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"REP received.\0A\00", align 1
@IB_CM_REJ_CONSUMER_DEFINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"CM error %d.\0A\00", align 1
@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, %struct.ib_cm_event*)* @ipoib_cm_tx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_tx_handler(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1) #0 {
  %3 = alloca %struct.ib_cm_id*, align 8
  %4 = alloca %struct.ib_cm_event*, align 8
  %5 = alloca %struct.ipoib_cm_tx*, align 8
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ipoib_neigh*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %3, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %4, align 8
  %11 = load %struct.ib_cm_id*, %struct.ib_cm_id** %3, align 8
  %12 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %11, i32 0, i32 0
  %13 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %12, align 8
  store %struct.ipoib_cm_tx* %13, %struct.ipoib_cm_tx** %5, align 8
  %14 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %5, align 8
  %15 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.ipoib_dev_priv* @netdev_priv(i32 %16)
  store %struct.ipoib_dev_priv* %17, %struct.ipoib_dev_priv** %6, align 8
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 2
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %22 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %91 [
    i32 132, label %24
    i32 130, label %29
    i32 129, label %42
    i32 131, label %42
    i32 128, label %42
  ]

24:                                               ; preds = %2
  %25 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %26 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_dbg(%struct.ipoib_dev_priv* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ib_cm_id*, %struct.ib_cm_id** %3, align 8
  %28 = call i32 @ib_send_cm_drep(%struct.ib_cm_id* %27, i32* null, i32 0)
  br label %92

29:                                               ; preds = %2
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %31 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_dbg(%struct.ipoib_dev_priv* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.ib_cm_id*, %struct.ib_cm_id** %3, align 8
  %33 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %34 = call i32 @ipoib_cm_rep_handler(%struct.ib_cm_id* %32, %struct.ib_cm_event* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.ib_cm_id*, %struct.ib_cm_id** %3, align 8
  %39 = load i32, i32* @IB_CM_REJ_CONSUMER_DEFINED, align 4
  %40 = call i32 @ib_send_cm_rej(%struct.ib_cm_id* %38, i32 %39, i32* null, i32 0, i32* null, i32 0)
  br label %41

41:                                               ; preds = %37, %29
  br label %92

42:                                               ; preds = %2, %2, %2
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %44 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %45 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_dbg(%struct.ipoib_dev_priv* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = call i32 @netif_tx_lock_bh(%struct.net_device* %48)
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %5, align 8
  %55 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %54, i32 0, i32 2
  %56 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %55, align 8
  store %struct.ipoib_neigh* %56, %struct.ipoib_neigh** %8, align 8
  %57 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %58 = icmp ne %struct.ipoib_neigh* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %42
  %60 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %61 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %63 = call i32 @ipoib_neigh_free(%struct.ipoib_neigh* %62)
  %64 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %5, align 8
  %65 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %64, i32 0, i32 2
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %65, align 8
  br label %66

66:                                               ; preds = %59, %42
  %67 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %68 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %5, align 8
  %69 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %68, i32 0, i32 1
  %70 = call i32 @test_and_clear_bit(i32 %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %5, align 8
  %74 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %73, i32 0, i32 0
  %75 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %76 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = call i32 @list_move(i32* %74, i32* %77)
  %79 = load i32, i32* @ipoib_workqueue, align 4
  %80 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %81 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @queue_work(i32 %79, i32* %82)
  br label %84

84:                                               ; preds = %72, %66
  %85 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %86 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = call i32 @netif_tx_unlock_bh(%struct.net_device* %89)
  br label %92

91:                                               ; preds = %2
  br label %92

92:                                               ; preds = %91, %84, %41, %24
  ret i32 0
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(i32) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i32 @ib_send_cm_drep(%struct.ib_cm_id*, i32*, i32) #1

declare dso_local i32 @ipoib_cm_rep_handler(%struct.ib_cm_id*, %struct.ib_cm_event*) #1

declare dso_local i32 @ib_send_cm_rej(%struct.ib_cm_id*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipoib_neigh_free(%struct.ipoib_neigh*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

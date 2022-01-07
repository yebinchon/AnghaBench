; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_destroy_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_destroy_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_cm_tx = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ipoib_dev_priv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reap connection for gid %pI6\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_cm_destroy_tx(%struct.ipoib_cm_tx* %0) #0 {
  %2 = alloca %struct.ipoib_cm_tx*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.ipoib_cm_tx* %0, %struct.ipoib_cm_tx** %2, align 8
  %5 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %6 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.ipoib_dev_priv* @netdev_priv(i32 %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %3, align 8
  %9 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %10 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %11 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %10, i32 0, i32 2
  %12 = call i64 @test_and_clear_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %1
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %20 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %19, i32 0, i32 1
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = call i32 @list_move(i32* %20, i32* %23)
  %25 = load i32, i32* @ipoib_workqueue, align 4
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @queue_work(i32 %25, i32* %28)
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %31 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %32 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 4
  %37 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %39 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %38, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %39, align 8
  %40 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

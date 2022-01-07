; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_resume_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_resume_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uld_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@db_fc_threshold = common dso_local global i64 0, align 8
@FLOW_CONTROL = common dso_local global i64 0, align 8
@NORMAL = common dso_local global i64 0, align 8
@enable_qp_db = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uld_ctx*)* @resume_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resume_queues(%struct.uld_ctx* %0) #0 {
  %2 = alloca %struct.uld_ctx*, align 8
  store %struct.uld_ctx* %0, %struct.uld_ctx** %2, align 8
  %3 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @db_fc_threshold, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FLOW_CONTROL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load i64, i64* @NORMAL, align 8
  %25 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 %24, i64* %28, align 8
  %29 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* @enable_qp_db, align 4
  %34 = call i32 @idr_for_each(i32* %32, i32 %33, i32* null)
  br label %35

35:                                               ; preds = %23, %15, %1
  %36 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock_irq(i32* %39)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @idr_for_each(i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

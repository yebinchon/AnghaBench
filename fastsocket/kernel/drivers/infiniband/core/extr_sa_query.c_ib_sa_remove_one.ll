; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_ib_sa_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_ib_sa_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_device = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@sa_client = common dso_local global i32 0, align 4
@ib_wq = common dso_local global i32 0, align 4
@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@free_sm_ah = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_sa_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_sa_remove_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_sa_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %5 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %6 = call %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device* %5, i32* @sa_client)
  store %struct.ib_sa_device* %6, %struct.ib_sa_device** %3, align 8
  %7 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %8 = icmp ne %struct.ib_sa_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %72

10:                                               ; preds = %1
  %11 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %12 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %11, i32 0, i32 3
  %13 = call i32 @ib_unregister_event_handler(i32* %12)
  %14 = load i32, i32* @ib_wq, align 4
  %15 = call i32 @flush_workqueue(i32 %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %66, %10
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %19 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %22 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = icmp sle i32 %17, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %16
  %27 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %27, i32 %29)
  %31 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %26
  %34 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %35 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ib_unregister_mad_agent(i32 %41)
  %43 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %44 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = icmp ne %struct.TYPE_3__* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %33
  %53 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %54 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* @free_sm_ah, align 4
  %63 = call i32 @kref_put(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %52, %33
  br label %65

65:                                               ; preds = %64, %26
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %16

69:                                               ; preds = %16
  %70 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %71 = call i32 @kfree(%struct.ib_sa_device* %70)
  br label %72

72:                                               ; preds = %69, %9
  ret void
}

declare dso_local %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @ib_unregister_event_handler(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kfree(%struct.ib_sa_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

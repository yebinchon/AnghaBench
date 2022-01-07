; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_mcast_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_mcast_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mcast_device = type { i32, i32, %struct.mcast_port*, i32 }
%struct.mcast_port = type { i32 }

@mcast_client = common dso_local global i32 0, align 4
@mcast_wq = common dso_local global i32 0, align 4
@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @mcast_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcast_remove_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.mcast_device*, align 8
  %4 = alloca %struct.mcast_port*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %7 = call %struct.mcast_device* @ib_get_client_data(%struct.ib_device* %6, i32* @mcast_client)
  store %struct.mcast_device* %7, %struct.mcast_device** %3, align 8
  %8 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %9 = icmp ne %struct.mcast_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %13 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %12, i32 0, i32 3
  %14 = call i32 @ib_unregister_event_handler(i32* %13)
  %15 = load i32, i32* @mcast_wq, align 4
  %16 = call i32 @flush_workqueue(i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %50, %11
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %20 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %23 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = icmp sle i32 %18, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %17
  %28 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %29 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %30 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %28, i32 %33)
  %35 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %27
  %38 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %39 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %38, i32 0, i32 2
  %40 = load %struct.mcast_port*, %struct.mcast_port** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %40, i64 %42
  store %struct.mcast_port* %43, %struct.mcast_port** %4, align 8
  %44 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %45 = call i32 @deref_port(%struct.mcast_port* %44)
  %46 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %47 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %46, i32 0, i32 0
  %48 = call i32 @wait_for_completion(i32* %47)
  br label %49

49:                                               ; preds = %37, %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %55 = call i32 @kfree(%struct.mcast_device* %54)
  br label %56

56:                                               ; preds = %53, %10
  ret void
}

declare dso_local %struct.mcast_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @ib_unregister_event_handler(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @deref_port(%struct.mcast_port*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(%struct.mcast_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

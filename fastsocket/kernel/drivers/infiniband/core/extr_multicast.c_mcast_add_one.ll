; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_mcast_add_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_mcast_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, i32 }
%struct.mcast_device = type { i32, i32, i32, %struct.ib_device*, %struct.mcast_port* }
%struct.mcast_port = type { i32, i32, i32, i32, i32, %struct.mcast_device* }

@RDMA_TRANSPORT_IB = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@RDMA_NODE_IB_SWITCH = common dso_local global i64 0, align 8
@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@RB_ROOT = common dso_local global i32 0, align 4
@mcast_client = common dso_local global i32 0, align 4
@mcast_event_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @mcast_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcast_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.mcast_device*, align 8
  %4 = alloca %struct.mcast_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %8 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @rdma_node_get_transport(i64 %9)
  %11 = load i64, i64* @RDMA_TRANSPORT_IB, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %123

14:                                               ; preds = %1
  %15 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %16 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 32
  %20 = add i64 32, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mcast_device* @kmalloc(i32 %21, i32 %22)
  store %struct.mcast_device* %23, %struct.mcast_device** %3, align 8
  %24 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %25 = icmp ne %struct.mcast_device* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  br label %123

27:                                               ; preds = %14
  %28 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %29 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %35 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %37 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %46

38:                                               ; preds = %27
  %39 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %40 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %42 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %45 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %33
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %99, %46
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %50 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %53 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %51, %54
  %56 = icmp sle i32 %48, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %47
  %58 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %59 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %60 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %58, i32 %63)
  %65 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %99

68:                                               ; preds = %57
  %69 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %70 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %69, i32 0, i32 4
  %71 = load %struct.mcast_port*, %struct.mcast_port** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %71, i64 %73
  store %struct.mcast_port* %74, %struct.mcast_port** %4, align 8
  %75 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %76 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %77 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %76, i32 0, i32 5
  store %struct.mcast_device* %75, %struct.mcast_device** %77, align 8
  %78 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %79 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %84 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %86 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %85, i32 0, i32 4
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load i32, i32* @RB_ROOT, align 4
  %89 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %90 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %92 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %91, i32 0, i32 2
  %93 = call i32 @init_completion(i32* %92)
  %94 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %95 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %94, i32 0, i32 1
  %96 = call i32 @atomic_set(i32* %95, i32 1)
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %68, %67
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %47

102:                                              ; preds = %47
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %107 = call i32 @kfree(%struct.mcast_device* %106)
  br label %123

108:                                              ; preds = %102
  %109 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %110 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %111 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %110, i32 0, i32 3
  store %struct.ib_device* %109, %struct.ib_device** %111, align 8
  %112 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %113 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %114 = call i32 @ib_set_client_data(%struct.ib_device* %112, i32* @mcast_client, %struct.mcast_device* %113)
  %115 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %116 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %115, i32 0, i32 2
  %117 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %118 = load i32, i32* @mcast_event_handler, align 4
  %119 = call i32 @INIT_IB_EVENT_HANDLER(i32* %116, %struct.ib_device* %117, i32 %118)
  %120 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %121 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %120, i32 0, i32 2
  %122 = call i32 @ib_register_event_handler(i32* %121)
  br label %123

123:                                              ; preds = %108, %105, %26, %13
  ret void
}

declare dso_local i64 @rdma_node_get_transport(i64) #1

declare dso_local %struct.mcast_device* @kmalloc(i32, i32) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.mcast_device*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.mcast_device*) #1

declare dso_local i32 @INIT_IB_EVENT_HANDLER(i32*, %struct.ib_device*, i32) #1

declare dso_local i32 @ib_register_event_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

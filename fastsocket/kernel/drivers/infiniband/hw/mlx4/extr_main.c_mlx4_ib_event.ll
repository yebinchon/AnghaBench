; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.ib_event = type { %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mlx4_ib_dev = type { i32, i32, i32 }
%struct.mlx4_eqe = type { i32 }
%struct.ib_event_work = type { i32, %struct.mlx4_ib_dev*, i32 }
%struct.ib_device = type { i32 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@IB_EVENT_DEVICE_FATAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to allocate memory for events work\0A\00", align 1
@wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i8*, i32, i64)* @mlx4_ib_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_event(%struct.mlx4_dev* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ib_event, align 8
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  %11 = alloca %struct.mlx4_eqe*, align 8
  %12 = alloca %struct.ib_event_work*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.ib_device*
  %16 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %15)
  store %struct.mlx4_ib_dev* %16, %struct.mlx4_ib_dev** %10, align 8
  store %struct.mlx4_eqe* null, %struct.mlx4_eqe** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 131
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to %struct.mlx4_eqe*
  store %struct.mlx4_eqe* %21, %struct.mlx4_eqe** %11, align 8
  br label %25

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %106 [
    i32 130, label %27
    i32 132, label %52
    i32 133, label %62
    i32 131, label %67
    i32 129, label %98
    i32 128, label %102
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %115

34:                                               ; preds = %27
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %36 = call i32 @mlx4_is_master(%struct.mlx4_dev* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @rdma_port_get_link_layer(i32* %40, i32 %41)
  %43 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @mlx4_ib_invalidate_all_guid_record(%struct.mlx4_ib_dev* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %38, %34
  %50 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  %51 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  br label %107

52:                                               ; preds = %25
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %115

59:                                               ; preds = %52
  %60 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  %61 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  br label %107

62:                                               ; preds = %25
  %63 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @IB_EVENT_DEVICE_FATAL, align 4
  %66 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  br label %107

67:                                               ; preds = %25
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call %struct.ib_event_work* @kmalloc(i32 24, i32 %68)
  store %struct.ib_event_work* %69, %struct.ib_event_work** %12, align 8
  %70 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %71 = icmp ne %struct.ib_event_work* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %107

74:                                               ; preds = %67
  %75 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %76 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %75, i32 0, i32 0
  %77 = call i32 @INIT_WORK(i32* %76, i32 (i32*)* @handle_port_mgmt_change_event)
  %78 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %79 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %78, i32 0, i32 2
  %80 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %11, align 8
  %81 = call i32 @memcpy(i32* %79, %struct.mlx4_eqe* %80, i32 4)
  %82 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %83 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %84 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %83, i32 0, i32 1
  store %struct.mlx4_ib_dev* %82, %struct.mlx4_ib_dev** %84, align 8
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %86 = call i32 @mlx4_is_master(%struct.mlx4_dev* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %74
  %89 = load i32, i32* @wq, align 4
  %90 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %91 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %90, i32 0, i32 0
  %92 = call i32 @queue_work(i32 %89, i32* %91)
  br label %97

93:                                               ; preds = %74
  %94 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %95 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %94, i32 0, i32 0
  %96 = call i32 @handle_port_mgmt_change_event(i32* %95)
  br label %97

97:                                               ; preds = %93, %88
  br label %115

98:                                               ; preds = %25
  %99 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @do_slave_init(%struct.mlx4_ib_dev* %99, i32 %100, i32 1)
  br label %115

102:                                              ; preds = %25
  %103 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @do_slave_init(%struct.mlx4_ib_dev* %103, i32 %104, i32 0)
  br label %115

106:                                              ; preds = %25
  br label %115

107:                                              ; preds = %72, %62, %59, %49
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = call i32 @ib_dispatch_event(%struct.ib_event* %9)
  br label %115

115:                                              ; preds = %107, %106, %102, %98, %97, %58, %33
  ret void
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @rdma_port_get_link_layer(i32*, i32) #1

declare dso_local i32 @mlx4_ib_invalidate_all_guid_record(%struct.mlx4_ib_dev*, i32) #1

declare dso_local %struct.ib_event_work* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32 (i32*)*) #1

declare dso_local i32 @handle_port_mgmt_change_event(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.mlx4_eqe*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @do_slave_init(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

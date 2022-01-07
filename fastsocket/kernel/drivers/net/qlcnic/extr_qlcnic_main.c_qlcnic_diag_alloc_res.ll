; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_diag_alloc_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_diag_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.qlcnic_host_rds_ring = type { i32 }

@QLCNIC_INTERRUPT_TEST = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_diag_alloc_res(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_device_detach(%struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i64 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @__qlcnic_down(%struct.qlcnic_adapter* %19, %struct.net_device* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %24 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %23)
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %37 = call i32 @qlcnic_attach(%struct.qlcnic_adapter* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %22
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @netif_device_attach(%struct.net_device* %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %128

44:                                               ; preds = %22
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %46 = call i32 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %51 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %50)
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @netif_device_attach(%struct.net_device* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %128

55:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %63, i32 0, i32 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %67, i64 %69
  store %struct.qlcnic_host_rds_ring* %70, %struct.qlcnic_host_rds_ring** %8, align 8
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %72 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @qlcnic_post_rx_buffers(%struct.qlcnic_adapter* %71, %struct.qlcnic_host_rds_ring* %72, i32 %73)
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %56

78:                                               ; preds = %56
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %80 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @QLCNIC_INTERRUPT_TEST, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %104, %86
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %87
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %95 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %94, i32 0, i32 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %98, i64 %100
  store %struct.qlcnic_host_sds_ring* %101, %struct.qlcnic_host_sds_ring** %7, align 8
  %102 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %103 = call i32 @qlcnic_enable_int(%struct.qlcnic_host_sds_ring* %102)
  br label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %87

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107, %78
  %109 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %110 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @QLCNIC_LOOPBACK_TEST, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %118 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %122 = call i32 @qlcnic_linkevent_request(%struct.qlcnic_adapter* %121, i32 1)
  br label %123

123:                                              ; preds = %116, %108
  %124 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %126 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %125, i32 0, i32 2
  %127 = call i32 @set_bit(i32 %124, i32* %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %123, %49, %40
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__qlcnic_down(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_detach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_attach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_post_rx_buffers(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32) #1

declare dso_local i32 @qlcnic_enable_int(%struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @qlcnic_linkevent_request(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

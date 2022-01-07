; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_diag_alloc_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_diag_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i64, i32, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 (%struct.qlcnic_adapter*, i32)* }
%struct.TYPE_4__ = type { %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.qlcnic_host_rds_ring = type { i32 }

@QLCNIC_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@QLCNIC_INTERRUPT_TEST = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @qlcnic_83xx_diag_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_diag_alloc_res(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_adapter*, align 8
  %9 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %10 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %8, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @netif_device_detach(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i64 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @__qlcnic_down(%struct.qlcnic_adapter* %25, %struct.net_device* %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %30 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %29)
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 5
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %43 = call i32 @qlcnic_attach(%struct.qlcnic_adapter* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %28
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @netif_device_attach(%struct.net_device* %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %4, align 4
  br label %161

50:                                               ; preds = %28
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %52 = call i32 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %57 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %56)
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @QLCNIC_ADAPTER_UP_MAGIC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %64 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %66 = call i32 @qlcnic_attach(%struct.qlcnic_adapter* %65)
  br label %67

67:                                               ; preds = %61, %55
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @netif_device_attach(%struct.net_device* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %4, align 4
  br label %161

71:                                               ; preds = %50
  store i64 0, i64* %12, align 8
  br label %72

72:                                               ; preds = %90, %71
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %75 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %80 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %79, i32 0, i32 6
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %83, i64 %84
  store %struct.qlcnic_host_rds_ring* %85, %struct.qlcnic_host_rds_ring** %10, align 8
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %87 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %10, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @qlcnic_post_rx_buffers(%struct.qlcnic_adapter* %86, %struct.qlcnic_host_rds_ring* %87, i64 %88)
  br label %90

90:                                               ; preds = %78
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %12, align 8
  br label %72

93:                                               ; preds = %72
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %95 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %94, i32 0, i32 5
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @QLCNIC_INTERRUPT_TEST, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %93
  store i64 0, i64* %12, align 8
  br label %102

102:                                              ; preds = %120, %101
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %105 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = icmp ult i64 %103, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %102
  %110 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %111 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %110, i32 0, i32 6
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %114, i64 %115
  store %struct.qlcnic_host_sds_ring* %116, %struct.qlcnic_host_sds_ring** %9, align 8
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %118 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %119 = call i32 @qlcnic_83xx_enable_intr(%struct.qlcnic_adapter* %117, %struct.qlcnic_host_sds_ring* %118)
  br label %120

120:                                              ; preds = %109
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %12, align 8
  br label %102

123:                                              ; preds = %102
  br label %124

124:                                              ; preds = %123, %93
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %126 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %125, i32 0, i32 5
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @QLCNIC_LOOPBACK_TEST, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %124
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %134 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %141 = call i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter* %140)
  br label %142

142:                                              ; preds = %139, %132
  %143 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %144 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %143, i32 0, i32 5
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %148 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %147, i32 0, i32 5
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32 (%struct.qlcnic_adapter*, i32)*, i32 (%struct.qlcnic_adapter*, i32)** %152, align 8
  %154 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %155 = call i32 %153(%struct.qlcnic_adapter* %154, i32 1)
  br label %156

156:                                              ; preds = %142, %124
  %157 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %158 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %159 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %158, i32 0, i32 4
  %160 = call i32 @set_bit(i32 %157, i32* %159)
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %156, %67, %46
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__qlcnic_down(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_detach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_attach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_post_rx_buffers(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i64) #1

declare dso_local i32 @qlcnic_83xx_enable_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

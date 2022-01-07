; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_send_cmd_descs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_send_cmd_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, %struct.nx_host_tx_ring* }
%struct.nx_host_tx_ring = type { i32, i32, i32, i32, i32*, %struct.netxen_cmd_buffer* }
%struct.netxen_cmd_buffer = type { i64, i32* }
%struct.cmd_desc_type0 = type { i32 }

@NETXEN_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@TX_STOP_THRESH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, %struct.cmd_desc_type0*, i32)* @netxen_send_cmd_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_send_cmd_descs(%struct.netxen_adapter* %0, %struct.cmd_desc_type0* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca %struct.cmd_desc_type0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netxen_cmd_buffer*, align 8
  %12 = alloca %struct.cmd_desc_type0*, align 8
  %13 = alloca %struct.nx_host_tx_ring*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %5, align 8
  store %struct.cmd_desc_type0* %1, %struct.cmd_desc_type0** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NETXEN_ADAPTER_UP_MAGIC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %118

22:                                               ; preds = %3
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %23, i32 0, i32 1
  %25 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %24, align 8
  store %struct.nx_host_tx_ring* %25, %struct.nx_host_tx_ring** %13, align 8
  %26 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %27 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @__netif_tx_lock_bh(i32 %28)
  %30 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %31 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %34 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %38 = call i32 @netxen_tx_avail(%struct.nx_host_tx_ring* %37)
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %22
  %41 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %42 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @netif_tx_stop_queue(i32 %43)
  %45 = call i32 (...) @smp_mb()
  %46 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %47 = call i32 @netxen_tx_avail(%struct.nx_host_tx_ring* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %52 = call i32 @netxen_tx_avail(%struct.nx_host_tx_ring* %51)
  %53 = load i32, i32* @TX_STOP_THRESH, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %57 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netif_tx_wake_queue(i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  br label %68

61:                                               ; preds = %40
  %62 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %63 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @__netif_tx_unlock_bh(i32 %64)
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %118

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %22
  br label %70

70:                                               ; preds = %103, %69
  %71 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %71, i64 %73
  store %struct.cmd_desc_type0* %74, %struct.cmd_desc_type0** %12, align 8
  %75 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %76 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %75, i32 0, i32 5
  %77 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %77, i64 %79
  store %struct.netxen_cmd_buffer* %80, %struct.netxen_cmd_buffer** %11, align 8
  %81 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %11, align 8
  %82 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %11, align 8
  %84 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %86 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %91, i64 %93
  %95 = call i32 @memcpy(i32* %90, %struct.cmd_desc_type0* %94, i32 4)
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %98 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @get_next_index(i32 %96, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %70
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %70, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %110 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %112 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %113 = call i32 @netxen_nic_update_cmd_producer(%struct.netxen_adapter* %111, %struct.nx_host_tx_ring* %112)
  %114 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %115 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @__netif_tx_unlock_bh(i32 %116)
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %107, %61, %19
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @__netif_tx_lock_bh(i32) #1

declare dso_local i32 @netxen_tx_avail(%struct.nx_host_tx_ring*) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

declare dso_local i32 @__netif_tx_unlock_bh(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.cmd_desc_type0*, i32) #1

declare dso_local i32 @get_next_index(i32, i32) #1

declare dso_local i32 @netxen_nic_update_cmd_producer(%struct.netxen_adapter*, %struct.nx_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_hw.c_qlcnic_send_cmd_descs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_hw.c_qlcnic_send_cmd_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__, %struct.qlcnic_host_tx_ring*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_host_tx_ring = type { i32, i32, i32, i32*, %struct.qlcnic_cmd_buffer* }
%struct.qlcnic_cmd_buffer = type { i64, i32* }
%struct.cmd_desc_type0 = type { i32 }

@__QLCNIC_FW_ATTACHED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TX_STOP_THRESH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, i32)* @qlcnic_send_cmd_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter* %0, %struct.cmd_desc_type0* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.cmd_desc_type0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_cmd_buffer*, align 8
  %11 = alloca %struct.cmd_desc_type0*, align 8
  %12 = alloca %struct.qlcnic_host_tx_ring*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.cmd_desc_type0* %1, %struct.cmd_desc_type0** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @__QLCNIC_FW_ATTACHED, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 2
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %115

21:                                               ; preds = %3
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 1
  %24 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %23, align 8
  store %struct.qlcnic_host_tx_ring* %24, %struct.qlcnic_host_tx_ring** %12, align 8
  %25 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %26 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__netif_tx_lock_bh(i32 %27)
  %29 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %30 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %34 = call i32 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %33)
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %21
  %37 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %38 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netif_tx_stop_queue(i32 %39)
  %41 = call i32 (...) @smp_mb()
  %42 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %43 = call i32 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %48 = call i32 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %47)
  %49 = load i32, i32* @TX_STOP_THRESH, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %53 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @netif_tx_wake_queue(i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  br label %69

57:                                               ; preds = %36
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %64 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__netif_tx_unlock_bh(i32 %65)
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %115

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %21
  br label %71

71:                                               ; preds = %101, %70
  %72 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %72, i64 %74
  store %struct.cmd_desc_type0* %75, %struct.cmd_desc_type0** %11, align 8
  %76 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %77 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %76, i32 0, i32 4
  %78 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %78, i64 %80
  store %struct.qlcnic_cmd_buffer* %81, %struct.qlcnic_cmd_buffer** %10, align 8
  %82 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %10, align 8
  %83 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %10, align 8
  %85 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %87 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %93 = call i32 @memcpy(i32* %91, %struct.cmd_desc_type0* %92, i32 4)
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %96 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @get_next_index(i32 %94, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %71
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %71, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %108 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %110 = call i32 @qlcnic_update_cmd_producer(%struct.qlcnic_host_tx_ring* %109)
  %111 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %112 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @__netif_tx_unlock_bh(i32 %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %105, %57, %18
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__netif_tx_lock_bh(i32) #1

declare dso_local i32 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

declare dso_local i32 @__netif_tx_unlock_bh(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.cmd_desc_type0*, i32) #1

declare dso_local i32 @get_next_index(i32, i32) #1

declare dso_local i32 @qlcnic_update_cmd_producer(%struct.qlcnic_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_adjust_rx_ring_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_adjust_rx_ring_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i64, i32, i64, %struct.vmxnet3_rx_queue*, %struct.TYPE_4__* }
%struct.vmxnet3_rx_queue = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@VMXNET3_MAX_SKB_BUF_SIZE = common dso_local global i64 0, align 8
@VMXNET3_MAX_ETH_HDR_SIZE = common dso_local global i64 0, align 8
@VMXNET3_MIN_T0_BUF_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VMXNET3_RING_SIZE_ALIGN = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@VMXNET3_RX_RING_MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_adapter*)* @vmxnet3_adjust_rx_ring_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_adjust_rx_ring_size(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca %struct.vmxnet3_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmxnet3_rx_queue*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %2, align 8
  %9 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %9, i32 0, i32 3
  %11 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %10, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %11, i64 0
  store %struct.vmxnet3_rx_queue* %12, %struct.vmxnet3_rx_queue** %8, align 8
  %13 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VMXNET3_MAX_SKB_BUF_SIZE, align 8
  %19 = load i64, i64* @VMXNET3_MAX_ETH_HDR_SIZE, align 8
  %20 = sub nsw i64 %18, %19
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VMXNET3_MAX_ETH_HDR_SIZE, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VMXNET3_MIN_T0_BUF_SIZE, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load i64, i64* @VMXNET3_MIN_T0_BUF_SIZE, align 8
  %39 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %22
  %42 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  br label %67

44:                                               ; preds = %1
  %45 = load i64, i64* @VMXNET3_MAX_SKB_BUF_SIZE, align 8
  %46 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %48, i32 0, i32 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VMXNET3_MAX_SKB_BUF_SIZE, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64, i64* @VMXNET3_MAX_ETH_HDR_SIZE, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = add i64 %57, %58
  %60 = sub i64 %59, 1
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = udiv i64 %60, %61
  %63 = add i64 1, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %44, %41
  %68 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @VMXNET3_RING_SIZE_ALIGN, align 8
  %73 = mul i64 %71, %72
  store i64 %73, i64* %3, align 8
  %74 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %74, i32 0, i32 3
  %76 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %75, align 8
  %77 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %76, i64 0
  %78 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %83, %84
  %86 = sub i64 %85, 1
  %87 = load i64, i64* %3, align 8
  %88 = udiv i64 %86, %87
  %89 = load i64, i64* %3, align 8
  %90 = mul i64 %88, %89
  store i64 %90, i64* %5, align 8
  %91 = load i32, i32* @u32, align 4
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @VMXNET3_RX_RING_MAX_SIZE, align 8
  %94 = load i64, i64* %3, align 8
  %95 = udiv i64 %93, %94
  %96 = load i64, i64* %3, align 8
  %97 = mul i64 %95, %96
  %98 = call i64 @min_t(i32 %91, i64 %92, i64 %97)
  store i64 %98, i64* %5, align 8
  %99 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %100 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %99, i32 0, i32 3
  %101 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %100, align 8
  %102 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %101, i64 0
  %103 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %108, %109
  store i64 %110, i64* %7, align 8
  store i64 0, i64* %4, align 8
  br label %111

111:                                              ; preds = %139, %67
  %112 = load i64, i64* %4, align 8
  %113 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %114 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ult i64 %112, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %111
  %118 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %119 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %118, i32 0, i32 3
  %120 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %119, align 8
  %121 = load i64, i64* %4, align 8
  %122 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %120, i64 %121
  store %struct.vmxnet3_rx_queue* %122, %struct.vmxnet3_rx_queue** %8, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %8, align 8
  %125 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i64 %123, i64* %128, align 8
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %8, align 8
  %131 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %130, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i64 %129, i64* %134, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %8, align 8
  %137 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i64 %135, i64* %138, align 8
  br label %139

139:                                              ; preds = %117
  %140 = load i64, i64* %4, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %4, align 8
  br label %111

142:                                              ; preds = %111
  ret void
}

declare dso_local i64 @min_t(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

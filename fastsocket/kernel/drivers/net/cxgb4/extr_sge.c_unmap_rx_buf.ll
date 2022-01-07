; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_unmap_rx_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_unmap_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_fl = type { i64, i64, i32, %struct.rx_sw_desc* }
%struct.rx_sw_desc = type { i32* }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*)* @unmap_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_rx_buf(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  %5 = alloca %struct.rx_sw_desc*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %6 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %7 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %6, i32 0, i32 3
  %8 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %9 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %10 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %8, i64 %11
  store %struct.rx_sw_desc* %12, %struct.rx_sw_desc** %5, align 8
  %13 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %5, align 8
  %14 = call i64 @is_buf_mapped(%struct.rx_sw_desc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %5, align 8
  %21 = call i32 @get_buf_addr(%struct.rx_sw_desc* %20)
  %22 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %5, align 8
  %23 = call i32 @get_buf_size(%struct.rx_sw_desc* %22)
  %24 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %25 = call i32 @dma_unmap_page(i32 %19, i32 %21, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %16, %2
  %27 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %5, align 8
  %28 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %30 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %34 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %39 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %26
  %41 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %42 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  ret void
}

declare dso_local i64 @is_buf_mapped(%struct.rx_sw_desc*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @get_buf_addr(%struct.rx_sw_desc*) #1

declare dso_local i32 @get_buf_size(%struct.rx_sw_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

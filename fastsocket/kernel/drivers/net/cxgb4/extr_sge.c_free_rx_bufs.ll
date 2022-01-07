; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_free_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_free_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_fl = type { i64, i64, i32, %struct.rx_sw_desc* }
%struct.rx_sw_desc = type { i32* }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*, i32)* @free_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rx_bufs(%struct.adapter* %0, %struct.sge_fl* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sge_fl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rx_sw_desc*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %51, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %14 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %13, i32 0, i32 3
  %15 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %16 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %17 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %15, i64 %18
  store %struct.rx_sw_desc* %19, %struct.rx_sw_desc** %7, align 8
  %20 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %21 = call i64 @is_buf_mapped(%struct.rx_sw_desc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %12
  %24 = load %struct.adapter*, %struct.adapter** %4, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %28 = call i32 @get_buf_addr(%struct.rx_sw_desc* %27)
  %29 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %30 = call i32 @get_buf_size(%struct.rx_sw_desc* %29)
  %31 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %32 = call i32 @dma_unmap_page(i32 %26, i32 %28, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %23, %12
  %34 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %35 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @put_page(i32* %36)
  %38 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %39 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %41 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %45 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %50 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %33
  %52 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %53 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  br label %8

56:                                               ; preds = %8
  ret void
}

declare dso_local i64 @is_buf_mapped(%struct.rx_sw_desc*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @get_buf_addr(%struct.rx_sw_desc*) #1

declare dso_local i32 @get_buf_size(%struct.rx_sw_desc*) #1

declare dso_local i32 @put_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

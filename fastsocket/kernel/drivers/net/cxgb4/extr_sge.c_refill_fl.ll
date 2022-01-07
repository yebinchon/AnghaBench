; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_refill_fl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_refill_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.sge_fl = type { i32, i64, i64, i32, i64, i32*, %struct.rx_sw_desc*, i32, i32 }
%struct.rx_sw_desc = type { i32 }
%struct.page = type { i32 }

@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_COLD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@FL_PG_ORDER = common dso_local global i32 0, align 4
@RX_LARGE_BUF = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_fl*, i32, i32)* @refill_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refill_fl(%struct.adapter* %0, %struct.sge_fl* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_fl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rx_sw_desc*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %15 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %18 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %21 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32* %23, i32** %12, align 8
  %24 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %25 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %24, i32 0, i32 6
  %26 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %25, align 8
  %27 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %28 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %26, i64 %29
  store %struct.rx_sw_desc* %30, %struct.rx_sw_desc** %13, align 8
  %31 = load i32, i32* @__GFP_NOWARN, align 4
  %32 = load i32, i32* @__GFP_COLD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %105, %4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %106

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.page* @alloc_page(i32 %41)
  store %struct.page* %42, %struct.page** %9, align 8
  %43 = load %struct.page*, %struct.page** %9, align 8
  %44 = icmp ne %struct.page* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %51 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %106

54:                                               ; preds = %40
  %55 = load %struct.adapter*, %struct.adapter** %5, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.page*, %struct.page** %9, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %61 = call i32 @dma_map_page(i32 %57, %struct.page* %58, i32 0, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.adapter*, %struct.adapter** %5, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dma_mapping_error(i32 %64, i32 %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load %struct.page*, %struct.page** %9, align 8
  %71 = call i32 @put_page(%struct.page* %70)
  br label %107

72:                                               ; preds = %54
  %73 = load i32, i32* %10, align 4
  %74 = call i8* @cpu_to_be64(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  %78 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %13, align 8
  %79 = load %struct.page*, %struct.page** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @set_rx_sw_desc(%struct.rx_sw_desc* %78, %struct.page* %79, i32 %80)
  %82 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %13, align 8
  %83 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %82, i32 1
  store %struct.rx_sw_desc* %83, %struct.rx_sw_desc** %13, align 8
  %84 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %85 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %89 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %93 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %72
  %97 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %98 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %100 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %99, i32 0, i32 6
  %101 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %100, align 8
  store %struct.rx_sw_desc* %101, %struct.rx_sw_desc** %13, align 8
  %102 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %103 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %12, align 8
  br label %105

105:                                              ; preds = %96, %72
  br label %36

106:                                              ; preds = %49, %36
  br label %107

107:                                              ; preds = %106, %69
  %108 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %109 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sub i32 %110, %111
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %115 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = add i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.adapter*, %struct.adapter** %5, align 8
  %119 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %120 = call i32 @ring_fl_db(%struct.adapter* %118, %struct.sge_fl* %119)
  %121 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %122 = call i32 @fl_starving(%struct.sge_fl* %121)
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %107
  %126 = call i32 (...) @smp_wmb()
  %127 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %128 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.adapter*, %struct.adapter** %5, align 8
  %131 = getelementptr inbounds %struct.adapter, %struct.adapter* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %129, %133
  %135 = load %struct.adapter*, %struct.adapter** %5, align 8
  %136 = getelementptr inbounds %struct.adapter, %struct.adapter* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @set_bit(i64 %134, i32 %138)
  br label %140

140:                                              ; preds = %125, %107
  %141 = load i32, i32* %11, align 4
  ret i32 %141
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @set_rx_sw_desc(%struct.rx_sw_desc*, %struct.page*, i32) #1

declare dso_local i32 @ring_fl_db(%struct.adapter*, %struct.sge_fl*) #1

declare dso_local i32 @fl_starving(%struct.sge_fl*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

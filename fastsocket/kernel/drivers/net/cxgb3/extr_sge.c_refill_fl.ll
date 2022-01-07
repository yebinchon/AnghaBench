; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_refill_fl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_refill_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_fl = type { i64, i32, i64, i32, i32, %struct.rx_desc*, %struct.rx_sw_desc*, i64, i32, i32, i64 }
%struct.rx_desc = type { i32 }
%struct.rx_sw_desc = type { %struct.sk_buff*, %struct.TYPE_2__ }
%struct.sk_buff = type { i8* }
%struct.TYPE_2__ = type { i64, i64 }

@dma_addr = common dso_local global i32 0, align 4
@SGE_PG_RSVD = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_fl*, i32, i32)* @refill_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refill_fl(%struct.adapter* %0, %struct.sge_fl* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_fl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_sw_desc*, align 8
  %10 = alloca %struct.rx_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %17 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %16, i32 0, i32 6
  %18 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %17, align 8
  %19 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %20 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %18, i64 %21
  store %struct.rx_sw_desc* %22, %struct.rx_sw_desc** %9, align 8
  %23 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %24 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %23, i32 0, i32 5
  %25 = load %struct.rx_desc*, %struct.rx_desc** %24, align 8
  %26 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %27 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %25, i64 %28
  store %struct.rx_desc* %29, %struct.rx_desc** %10, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %153, %4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %156

34:                                               ; preds = %30
  %35 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %36 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %34
  %40 = load %struct.adapter*, %struct.adapter** %5, align 8
  %41 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %42 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %45 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @alloc_pg_chunk(%struct.adapter* %40, %struct.sge_fl* %41, %struct.rx_sw_desc* %42, i32 %43, i32 %46)
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %95, %50
  %52 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %53 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %156

56:                                               ; preds = %39
  %57 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %9, align 8
  %58 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %9, align 8
  %62 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %60, %64
  store i64 %65, i64* %12, align 8
  %66 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %9, align 8
  %67 = load i32, i32* @dma_addr, align 4
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @pci_unmap_addr_set(%struct.rx_sw_desc* %66, i32 %67, i64 %68)
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.rx_desc*, %struct.rx_desc** %10, align 8
  %72 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %73 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @add_one_rx_chunk(i64 %70, %struct.rx_desc* %71, i32 %74)
  %76 = load %struct.adapter*, %struct.adapter** %5, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %12, align 8
  %80 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %81 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SGE_PG_RSVD, align 8
  %84 = sub nsw i64 %82, %83
  %85 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %86 = call i32 @pci_dma_sync_single_for_device(i32 %78, i64 %79, i64 %84, i32 %85)
  br label %127

87:                                               ; preds = %34
  %88 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %89 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call %struct.sk_buff* @alloc_skb(i64 %90, i32 %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %15, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  br label %51

96:                                               ; preds = %87
  %97 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %98 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %9, align 8
  %99 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %98, i32 0, i32 0
  store %struct.sk_buff* %97, %struct.sk_buff** %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %14, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %105 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.rx_desc*, %struct.rx_desc** %10, align 8
  %108 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %9, align 8
  %109 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %110 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.adapter*, %struct.adapter** %5, align 8
  %113 = getelementptr inbounds %struct.adapter, %struct.adapter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @add_one_rx_buf(i8* %103, i64 %106, %struct.rx_desc* %107, %struct.rx_sw_desc* %108, i32 %111, i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %96
  %120 = load %struct.adapter*, %struct.adapter** %5, align 8
  %121 = getelementptr inbounds %struct.adapter, %struct.adapter* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %124 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %9, align 8
  %125 = call i32 @clear_rx_desc(i32 %122, %struct.sge_fl* %123, %struct.rx_sw_desc* %124)
  br label %156

126:                                              ; preds = %96
  br label %127

127:                                              ; preds = %126, %56
  %128 = load %struct.rx_desc*, %struct.rx_desc** %10, align 8
  %129 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %128, i32 1
  store %struct.rx_desc* %129, %struct.rx_desc** %10, align 8
  %130 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %9, align 8
  %131 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %130, i32 1
  store %struct.rx_sw_desc* %131, %struct.rx_sw_desc** %9, align 8
  %132 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %133 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %137 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %135, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %127
  %141 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %142 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %144 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = xor i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %148 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %147, i32 0, i32 6
  %149 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %148, align 8
  store %struct.rx_sw_desc* %149, %struct.rx_sw_desc** %9, align 8
  %150 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %151 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %150, i32 0, i32 5
  %152 = load %struct.rx_desc*, %struct.rx_desc** %151, align 8
  store %struct.rx_desc* %152, %struct.rx_desc** %10, align 8
  br label %153

153:                                              ; preds = %140, %127
  %154 = load i32, i32* %11, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %30

156:                                              ; preds = %119, %51, %30
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %159 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = add i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %164 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load %struct.adapter*, %struct.adapter** %5, align 8
  %168 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %169 = call i32 @ring_fl_db(%struct.adapter* %167, %struct.sge_fl* %168)
  %170 = load i32, i32* %11, align 4
  ret i32 %170
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @alloc_pg_chunk(%struct.adapter*, %struct.sge_fl*, %struct.rx_sw_desc*, i32, i32) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.rx_sw_desc*, i32, i64) #1

declare dso_local i32 @add_one_rx_chunk(i64, %struct.rx_desc*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i64, i64, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @add_one_rx_buf(i8*, i64, %struct.rx_desc*, %struct.rx_sw_desc*, i32, i32) #1

declare dso_local i32 @clear_rx_desc(i32, %struct.sge_fl*, %struct.rx_sw_desc*) #1

declare dso_local i32 @ring_fl_db(%struct.adapter*, %struct.sge_fl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

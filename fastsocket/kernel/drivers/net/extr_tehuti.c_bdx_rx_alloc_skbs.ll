; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_rx_alloc_skbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_rx_alloc_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { i32, i32, %struct.rxdb* }
%struct.rxdb = type { i32 }
%struct.rxf_fifo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.rxf_desc = type { i32, i8*, i8*, i8*, i8* }
%struct.rx_map = type { i32, %struct.sk_buff* }

@ENTER = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"NO MEM: dev_alloc_skb failed\0A\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"wrapped descriptor\0A\00", align 1
@TXF_WPTR_WR_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*, %struct.rxf_fifo*)* @bdx_rx_alloc_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_rx_alloc_skbs(%struct.bdx_priv* %0, %struct.rxf_fifo* %1) #0 {
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca %struct.rxf_fifo*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxf_desc*, align 8
  %7 = alloca %struct.rx_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxdb*, align 8
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  store %struct.rxf_fifo* %1, %struct.rxf_fifo** %4, align 8
  %12 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %13 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %12, i32 0, i32 2
  %14 = load %struct.rxdb*, %struct.rxdb** %13, align 8
  store %struct.rxdb* %14, %struct.rxdb** %11, align 8
  %15 = load i32, i32* @ENTER, align 4
  %16 = load %struct.rxdb*, %struct.rxdb** %11, align 8
  %17 = call i32 @bdx_rxdb_available(%struct.rxdb* %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %150, %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %153

22:                                               ; preds = %19
  %23 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %24 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NET_IP_ALIGN, align 4
  %28 = add nsw i32 %26, %27
  %29 = call %struct.sk_buff* @dev_alloc_skb(i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %5, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %153

33:                                               ; preds = %22
  %34 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %35 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* @NET_IP_ALIGN, align 4
  %41 = call i32 @skb_reserve(%struct.sk_buff* %39, i32 %40)
  %42 = load %struct.rxdb*, %struct.rxdb** %11, align 8
  %43 = call i32 @bdx_rxdb_alloc_elem(%struct.rxdb* %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.rxdb*, %struct.rxdb** %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb* %44, i32 %45)
  store %struct.rx_map* %46, %struct.rx_map** %7, align 8
  %47 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %48 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %54 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %58 = call i32 @pci_map_single(i32 %49, i32 %52, i32 %56, i32 %57)
  %59 = load %struct.rx_map*, %struct.rx_map** %7, align 8
  %60 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.rx_map*, %struct.rx_map** %7, align 8
  %63 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %62, i32 0, i32 1
  store %struct.sk_buff* %61, %struct.sk_buff** %63, align 8
  %64 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %65 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %69 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %67, %71
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to %struct.rxf_desc*
  store %struct.rxf_desc* %74, %struct.rxf_desc** %6, align 8
  %75 = call i8* @CPU_CHIP_SWAP32(i32 65539)
  %76 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %77 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %80 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.rx_map*, %struct.rx_map** %7, align 8
  %82 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @L32_64(i32 %83)
  %85 = call i8* @CPU_CHIP_SWAP32(i32 %84)
  %86 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %87 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.rx_map*, %struct.rx_map** %7, align 8
  %89 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @H32_64(i32 %90)
  %92 = call i8* @CPU_CHIP_SWAP32(i32 %91)
  %93 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %94 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %96 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @CPU_CHIP_SWAP32(i32 %98)
  %100 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %101 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %103 = call i32 @print_rxfd(%struct.rxf_desc* %102)
  %104 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %105 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, 40
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %112 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %116 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %114, %118
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp sge i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %33
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %128 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %125
  %133 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %134 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %138 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %142 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %140, %144
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @memcpy(i32 %136, i32 %145, i32 %146)
  %148 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %149

149:                                              ; preds = %132, %125
  br label %150

150:                                              ; preds = %149, %33
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %8, align 4
  br label %19

153:                                              ; preds = %31, %19
  %154 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %155 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %156 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %160 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TXF_WPTR_WR_PTR, align 4
  %164 = and i32 %162, %163
  %165 = call i32 @WRITE_REG(%struct.bdx_priv* %154, i32 %158, i32 %164)
  %166 = call i32 (...) @RET()
  ret void
}

declare dso_local i32 @bdx_rxdb_available(%struct.rxdb*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @bdx_rxdb_alloc_elem(%struct.rxdb*) #1

declare dso_local %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i8* @CPU_CHIP_SWAP32(i32) #1

declare dso_local i32 @L32_64(i32) #1

declare dso_local i32 @H32_64(i32) #1

declare dso_local i32 @print_rxfd(%struct.rxf_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

declare dso_local i32 @RET(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

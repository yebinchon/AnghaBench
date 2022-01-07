; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_free_rxd_blk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_free_rxd_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i64, i32, %struct.mac_info, %struct.net_device* }
%struct.mac_info = type { %struct.TYPE_6__*, %struct.stat_block* }
%struct.TYPE_6__ = type { i32, %struct.buffAdd**, %struct.TYPE_5__* }
%struct.buffAdd = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.RxD_t* }
%struct.RxD_t = type { i64 }
%struct.stat_block = type { %struct.swStat }
%struct.swStat = type { i32 }
%struct.net_device = type { i64 }
%struct.sk_buff = type { i64 }
%struct.RxD1 = type { i64 }
%struct.RxD3 = type { i64, i64, i64 }

@rxd_count = common dso_local global i32* null, align 8
@RXD_MODE_1 = common dso_local global i64 0, align 8
@HEADER_ETHERNET_II_802_3_SIZE = common dso_local global i64 0, align 8
@HEADER_802_2_SIZE = common dso_local global i64 0, align 8
@HEADER_SNAP_SIZE = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RXD_MODE_3B = common dso_local global i64 0, align 8
@BUF0_LEN = common dso_local global i64 0, align 8
@BUF1_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*, i32, i32)* @free_rxd_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rxd_blk(%struct.s2io_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s2io_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.RxD_t*, align 8
  %11 = alloca %struct.buffAdd*, align 8
  %12 = alloca %struct.RxD1*, align 8
  %13 = alloca %struct.RxD3*, align 8
  %14 = alloca %struct.mac_info*, align 8
  %15 = alloca %struct.stat_block*, align 8
  %16 = alloca %struct.swStat*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %18 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %17, i32 0, i32 3
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %7, align 8
  %20 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %21 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %20, i32 0, i32 2
  store %struct.mac_info* %21, %struct.mac_info** %14, align 8
  %22 = load %struct.mac_info*, %struct.mac_info** %14, align 8
  %23 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %22, i32 0, i32 1
  %24 = load %struct.stat_block*, %struct.stat_block** %23, align 8
  store %struct.stat_block* %24, %struct.stat_block** %15, align 8
  %25 = load %struct.stat_block*, %struct.stat_block** %15, align 8
  %26 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %25, i32 0, i32 0
  store %struct.swStat* %26, %struct.swStat** %16, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %172, %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** @rxd_count, align 8
  %30 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %31 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %28, %34
  br i1 %35, label %36, label %175

36:                                               ; preds = %27
  %37 = load %struct.mac_info*, %struct.mac_info** %14, align 8
  %38 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.RxD_t*, %struct.RxD_t** %53, align 8
  store %struct.RxD_t* %54, %struct.RxD_t** %10, align 8
  %55 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %56 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.sk_buff*
  store %struct.sk_buff* %58, %struct.sk_buff** %9, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %36
  br label %172

62:                                               ; preds = %36
  %63 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %64 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RXD_MODE_1, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %70 = bitcast %struct.RxD_t* %69 to %struct.RxD1*
  store %struct.RxD1* %70, %struct.RxD1** %12, align 8
  %71 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %72 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.RxD1*, %struct.RxD1** %12, align 8
  %75 = getelementptr inbounds %struct.RxD1, %struct.RxD1* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.net_device*, %struct.net_device** %7, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HEADER_ETHERNET_II_802_3_SIZE, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i64, i64* @HEADER_802_2_SIZE, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* @HEADER_SNAP_SIZE, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %88 = call i32 @pci_unmap_single(i32 %73, i32 %77, i64 %86, i32 %87)
  %89 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %90 = call i32 @memset(%struct.RxD_t* %89, i32 0, i32 8)
  br label %151

91:                                               ; preds = %62
  %92 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %93 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @RXD_MODE_3B, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %150

97:                                               ; preds = %91
  %98 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %99 = bitcast %struct.RxD_t* %98 to %struct.RxD3*
  store %struct.RxD3* %99, %struct.RxD3** %13, align 8
  %100 = load %struct.mac_info*, %struct.mac_info** %14, align 8
  %101 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load %struct.buffAdd**, %struct.buffAdd*** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.buffAdd*, %struct.buffAdd** %107, i64 %109
  %111 = load %struct.buffAdd*, %struct.buffAdd** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %111, i64 %113
  store %struct.buffAdd* %114, %struct.buffAdd** %11, align 8
  %115 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %116 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.RxD3*, %struct.RxD3** %13, align 8
  %119 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i64, i64* @BUF0_LEN, align 8
  %123 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %124 = call i32 @pci_unmap_single(i32 %117, i32 %121, i64 %122, i32 %123)
  %125 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %126 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.RxD3*, %struct.RxD3** %13, align 8
  %129 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i64, i64* @BUF1_LEN, align 8
  %133 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %134 = call i32 @pci_unmap_single(i32 %127, i32 %131, i64 %132, i32 %133)
  %135 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %136 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.RxD3*, %struct.RxD3** %13, align 8
  %139 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.net_device*, %struct.net_device** %7, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 4
  %146 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %147 = call i32 @pci_unmap_single(i32 %137, i32 %141, i64 %145, i32 %146)
  %148 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %149 = call i32 @memset(%struct.RxD_t* %148, i32 0, i32 24)
  br label %150

150:                                              ; preds = %97, %91
  br label %151

151:                                              ; preds = %150, %68
  %152 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.swStat*, %struct.swStat** %16, align 8
  %156 = getelementptr inbounds %struct.swStat, %struct.swStat* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %162 = call i32 @dev_kfree_skb(%struct.sk_buff* %161)
  %163 = load %struct.mac_info*, %struct.mac_info** %14, align 8
  %164 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %151, %61
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %27

175:                                              ; preds = %27
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @memset(%struct.RxD_t*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

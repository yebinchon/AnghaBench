; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lib82596.c_init_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lib82596.c_init_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i596_private = type { %struct.i596_rfd*, %struct.i596_rfd*, %struct.i596_dma* }
%struct.i596_rfd = type { i8*, i8*, %struct.i596_rfd*, %struct.i596_rfd*, i8*, i8*, i8*, i32, %struct.sk_buff*, i8* }
%struct.sk_buff = type { i32 }
%struct.i596_dma = type { %struct.i596_rfd*, %struct.TYPE_4__, %struct.i596_rfd* }
%struct.TYPE_4__ = type { i8* }
%struct.i596_rbd = type { i8*, i8*, %struct.i596_rbd*, %struct.i596_rbd*, i8*, i8*, i8*, i32, %struct.sk_buff*, i8* }

@rx_ring_size = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@I596_NULL = common dso_local global i8* null, align 8
@CMD_FLEX = common dso_local global i32 0, align 4
@CMD_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rx_bufs(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.i596_private*, align 8
  %5 = alloca %struct.i596_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i596_rfd*, align 8
  %8 = alloca %struct.i596_rbd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.i596_private* @netdev_priv(%struct.net_device* %11)
  store %struct.i596_private* %12, %struct.i596_private** %4, align 8
  %13 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %14 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %13, i32 0, i32 2
  %15 = load %struct.i596_dma*, %struct.i596_dma** %14, align 8
  store %struct.i596_dma* %15, %struct.i596_dma** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %17 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %16, i32 0, i32 2
  %18 = load %struct.i596_rfd*, %struct.i596_rfd** %17, align 8
  %19 = bitcast %struct.i596_rfd* %18 to %struct.i596_rbd*
  store %struct.i596_rbd* %19, %struct.i596_rbd** %8, align 8
  br label %20

20:                                               ; preds = %80, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @rx_ring_size, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load i32, i32* @PKT_BUF_SZ, align 4
  %27 = add nsw i32 %26, 4
  %28 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %25, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = icmp eq %struct.sk_buff* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %212

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = call i32 @skb_reserve(%struct.sk_buff* %33, i32 2)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PKT_BUF_SZ, align 4
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = call i32 @dma_map_single(i32 %38, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %46 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %45, i64 1
  %47 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %48 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %47, i32 0, i32 2
  store %struct.i596_rbd* %46, %struct.i596_rbd** %48, align 8
  %49 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %50 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %51 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %50, i64 1
  %52 = bitcast %struct.i596_rbd* %51 to %struct.i596_rfd*
  %53 = call i32 @virt_to_dma(%struct.i596_private* %49, %struct.i596_rfd* %52)
  %54 = call i8* @SWAP32(i32 %53)
  %55 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %56 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %58 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %59 = bitcast %struct.i596_rbd* %58 to %struct.i596_rfd*
  %60 = call i32 @virt_to_dma(%struct.i596_private* %57, %struct.i596_rfd* %59)
  %61 = call i8* @SWAP32(i32 %60)
  %62 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %63 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %62, i32 0, i32 9
  store i8* %61, i8** %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %66 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %65, i32 0, i32 8
  store %struct.sk_buff* %64, %struct.sk_buff** %66, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %71 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i8* @SWAP32(i32 %72)
  %74 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %75 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @PKT_BUF_SZ, align 4
  %77 = call i8* @SWAP16(i32 %76)
  %78 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %79 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %32
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  %83 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %84 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %83, i32 1
  store %struct.i596_rbd* %84, %struct.i596_rbd** %8, align 8
  br label %20

85:                                               ; preds = %20
  %86 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %87 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %86, i32 0, i32 2
  %88 = load %struct.i596_rfd*, %struct.i596_rfd** %87, align 8
  %89 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %90 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %89, i32 0, i32 0
  store %struct.i596_rfd* %88, %struct.i596_rfd** %90, align 8
  %91 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %92 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %91, i32 0, i32 2
  %93 = load %struct.i596_rfd*, %struct.i596_rfd** %92, align 8
  %94 = load i32, i32* @rx_ring_size, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %93, i64 %95
  %97 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %96, i64 -1
  %98 = bitcast %struct.i596_rfd* %97 to %struct.i596_rbd*
  store %struct.i596_rbd* %98, %struct.i596_rbd** %8, align 8
  %99 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %100 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %99, i32 0, i32 2
  %101 = load %struct.i596_rfd*, %struct.i596_rfd** %100, align 8
  %102 = bitcast %struct.i596_rfd* %101 to %struct.i596_rbd*
  %103 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %104 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %103, i32 0, i32 2
  store %struct.i596_rbd* %102, %struct.i596_rbd** %104, align 8
  %105 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %106 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %107 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %106, i32 0, i32 2
  %108 = load %struct.i596_rfd*, %struct.i596_rfd** %107, align 8
  %109 = call i32 @virt_to_dma(%struct.i596_private* %105, %struct.i596_rfd* %108)
  %110 = call i8* @SWAP32(i32 %109)
  %111 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %112 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  store i32 0, i32* %6, align 4
  %113 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %114 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %113, i32 0, i32 0
  %115 = load %struct.i596_rfd*, %struct.i596_rfd** %114, align 8
  store %struct.i596_rfd* %115, %struct.i596_rfd** %7, align 8
  br label %116

116:                                              ; preds = %143, %85
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @rx_ring_size, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %148

120:                                              ; preds = %116
  %121 = load i8*, i8** @I596_NULL, align 8
  %122 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %123 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  %124 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %125 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %124, i64 1
  %126 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %127 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %126, i32 0, i32 2
  store %struct.i596_rfd* %125, %struct.i596_rfd** %127, align 8
  %128 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %129 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %128, i64 -1
  %130 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %131 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %130, i32 0, i32 3
  store %struct.i596_rfd* %129, %struct.i596_rfd** %131, align 8
  %132 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %133 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %134 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %133, i64 1
  %135 = call i32 @virt_to_dma(%struct.i596_private* %132, %struct.i596_rfd* %134)
  %136 = call i8* @SWAP32(i32 %135)
  %137 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %138 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* @CMD_FLEX, align 4
  %140 = call i8* @SWAP16(i32 %139)
  %141 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %142 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %120
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  %146 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %147 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %146, i32 1
  store %struct.i596_rfd* %147, %struct.i596_rfd** %7, align 8
  br label %116

148:                                              ; preds = %116
  %149 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %150 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %149, i32 0, i32 0
  %151 = load %struct.i596_rfd*, %struct.i596_rfd** %150, align 8
  %152 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %153 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %152, i32 0, i32 1
  store %struct.i596_rfd* %151, %struct.i596_rfd** %153, align 8
  %154 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %155 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %156 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %155, i32 0, i32 0
  %157 = load %struct.i596_rfd*, %struct.i596_rfd** %156, align 8
  %158 = call i32 @virt_to_dma(%struct.i596_private* %154, %struct.i596_rfd* %157)
  %159 = call i8* @SWAP32(i32 %158)
  %160 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %161 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  %163 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %164 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %163, i32 0, i32 0
  %165 = load %struct.i596_rfd*, %struct.i596_rfd** %164, align 8
  store %struct.i596_rfd* %165, %struct.i596_rfd** %7, align 8
  %166 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %167 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %168 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %167, i32 0, i32 0
  %169 = load %struct.i596_rfd*, %struct.i596_rfd** %168, align 8
  %170 = call i32 @virt_to_dma(%struct.i596_private* %166, %struct.i596_rfd* %169)
  %171 = call i8* @SWAP32(i32 %170)
  %172 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %173 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %175 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %174, i32 0, i32 0
  %176 = load %struct.i596_rfd*, %struct.i596_rfd** %175, align 8
  %177 = load i32, i32* @rx_ring_size, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %176, i64 %178
  %180 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %179, i64 -1
  %181 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %182 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %181, i32 0, i32 3
  store %struct.i596_rfd* %180, %struct.i596_rfd** %182, align 8
  %183 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %184 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %183, i32 0, i32 0
  %185 = load %struct.i596_rfd*, %struct.i596_rfd** %184, align 8
  %186 = load i32, i32* @rx_ring_size, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %185, i64 %187
  %189 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %188, i64 -1
  store %struct.i596_rfd* %189, %struct.i596_rfd** %7, align 8
  %190 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %191 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %190, i32 0, i32 0
  %192 = load %struct.i596_rfd*, %struct.i596_rfd** %191, align 8
  %193 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %194 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %193, i32 0, i32 2
  store %struct.i596_rfd* %192, %struct.i596_rfd** %194, align 8
  %195 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %196 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %197 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %196, i32 0, i32 0
  %198 = load %struct.i596_rfd*, %struct.i596_rfd** %197, align 8
  %199 = call i32 @virt_to_dma(%struct.i596_private* %195, %struct.i596_rfd* %198)
  %200 = call i8* @SWAP32(i32 %199)
  %201 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %202 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* @CMD_EOL, align 4
  %204 = load i32, i32* @CMD_FLEX, align 4
  %205 = or i32 %203, %204
  %206 = call i8* @SWAP16(i32 %205)
  %207 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %208 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %207, i32 0, i32 0
  store i8* %206, i8** %208, align 8
  %209 = load %struct.net_device*, %struct.net_device** %3, align 8
  %210 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %211 = call i32 @DMA_WBACK_INV(%struct.net_device* %209, %struct.i596_dma* %210, i32 24)
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %148, %31
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.i596_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i8* @SWAP32(i32) #1

declare dso_local i32 @virt_to_dma(%struct.i596_private*, %struct.i596_rfd*) #1

declare dso_local i8* @SWAP16(i32) #1

declare dso_local i32 @DMA_WBACK_INV(%struct.net_device*, %struct.i596_dma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

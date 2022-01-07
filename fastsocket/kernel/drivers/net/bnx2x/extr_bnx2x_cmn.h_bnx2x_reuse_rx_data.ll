; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_reuse_rx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_reuse_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { %struct.eth_rx_bd*, %struct.sw_rx_bd* }
%struct.eth_rx_bd = type { i32 }
%struct.sw_rx_bd = type { i32 }

@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_fastpath*, i64, i64)* @bnx2x_reuse_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_reuse_rx_data(%struct.bnx2x_fastpath* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x_fastpath*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sw_rx_bd*, align 8
  %8 = alloca %struct.sw_rx_bd*, align 8
  %9 = alloca %struct.eth_rx_bd*, align 8
  %10 = alloca %struct.eth_rx_bd*, align 8
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %11, i32 0, i32 1
  %13 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %13, i64 %14
  store %struct.sw_rx_bd* %15, %struct.sw_rx_bd** %7, align 8
  %16 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %16, i32 0, i32 1
  %18 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %18, i64 %19
  store %struct.sw_rx_bd* %20, %struct.sw_rx_bd** %8, align 8
  %21 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %22 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %21, i32 0, i32 0
  %23 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %23, i64 %24
  store %struct.eth_rx_bd* %25, %struct.eth_rx_bd** %9, align 8
  %26 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %27 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %26, i32 0, i32 0
  %28 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %28, i64 %29
  store %struct.eth_rx_bd* %30, %struct.eth_rx_bd** %10, align 8
  %31 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %8, align 8
  %32 = load i32, i32* @mapping, align 4
  %33 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %7, align 8
  %34 = load i32, i32* @mapping, align 4
  %35 = call i32 @dma_unmap_addr(%struct.sw_rx_bd* %33, i32 %34)
  %36 = call i32 @dma_unmap_addr_set(%struct.sw_rx_bd* %31, i32 %32, i32 %35)
  %37 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %7, align 8
  %38 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %8, align 8
  %41 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %10, align 8
  %43 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %9, align 8
  %44 = bitcast %struct.eth_rx_bd* %42 to i8*
  %45 = bitcast %struct.eth_rx_bd* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  ret void
}

declare dso_local i32 @dma_unmap_addr_set(%struct.sw_rx_bd*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.sw_rx_bd*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_getdma_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_getdma_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dma_control = type { i64 }
%union.dma_amo_dest = type { i64 }
%union.intr_dest = type { i64 }
%union.dma_localaddr = type { i64 }
%union.dma_hostaddr = type { i64 }

@MBCS_RD_DMA_SYS_ADDR = common dso_local global i32 0, align 4
@MBCS_RD_DMA_LOC_ADDR = common dso_local global i32 0, align 4
@MBCS_RD_DMA_CTRL = common dso_local global i32 0, align 4
@MBCS_RD_DMA_AMO_DEST = common dso_local global i32 0, align 4
@MBCS_RD_DMA_INT_DEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @mbcs_getdma_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbcs_getdma_set(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %union.dma_control, align 8
  %26 = alloca %union.dma_amo_dest, align 8
  %27 = alloca %union.intr_dest, align 8
  %28 = alloca %union.dma_localaddr, align 8
  %29 = alloca %union.dma_hostaddr, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  store i8* %11, i8** %24, align 8
  %30 = bitcast %union.dma_control* %25 to i64*
  store i64 0, i64* %30, align 8
  %31 = bitcast %union.dma_amo_dest* %26 to i64*
  store i64 0, i64* %31, align 8
  %32 = bitcast %union.intr_dest* %27 to i64*
  store i64 0, i64* %32, align 8
  %33 = bitcast %union.dma_localaddr* %28 to i64*
  store i64 0, i64* %33, align 8
  %34 = bitcast %union.dma_hostaddr* %29 to i64*
  store i64 0, i64* %34, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = bitcast %union.dma_hostaddr* %29 to i8**
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* @MBCS_RD_DMA_SYS_ADDR, align 4
  %39 = bitcast %union.dma_hostaddr* %29 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @MBCS_MMR_SET(i8* %37, i32 %38, i64 %40)
  %42 = load i8*, i8** %15, align 8
  %43 = bitcast %union.dma_localaddr* %28 to i8**
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = bitcast %union.dma_localaddr* %28 to i8**
  store i8* %44, i8** %45, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* @MBCS_RD_DMA_LOC_ADDR, align 4
  %48 = bitcast %union.dma_localaddr* %28 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @MBCS_MMR_SET(i8* %46, i32 %47, i64 %49)
  %51 = load i8*, i8** %17, align 8
  %52 = bitcast %union.dma_control* %25 to i8**
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %18, align 8
  %54 = bitcast %union.dma_control* %25 to i8**
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = bitcast %union.dma_control* %25 to i8**
  store i8* %55, i8** %56, align 8
  %57 = load i8*, i8** %20, align 8
  %58 = bitcast %union.dma_control* %25 to i8**
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* @MBCS_RD_DMA_CTRL, align 4
  %61 = bitcast %union.dma_control* %25 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @MBCS_MMR_SET(i8* %59, i32 %60, i64 %62)
  %64 = load i8*, i8** %21, align 8
  %65 = bitcast %union.dma_amo_dest* %26 to i8**
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %22, align 8
  %67 = bitcast %union.dma_amo_dest* %26 to i8**
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* @MBCS_RD_DMA_AMO_DEST, align 4
  %70 = bitcast %union.dma_amo_dest* %26 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @MBCS_MMR_SET(i8* %68, i32 %69, i64 %71)
  %73 = load i8*, i8** %23, align 8
  %74 = bitcast %union.intr_dest* %27 to i8**
  store i8* %73, i8** %74, align 8
  %75 = load i8*, i8** %24, align 8
  %76 = bitcast %union.intr_dest* %27 to i8**
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* @MBCS_RD_DMA_INT_DEST, align 4
  %79 = bitcast %union.intr_dest* %27 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @MBCS_MMR_SET(i8* %77, i32 %78, i64 %80)
  ret void
}

declare dso_local i32 @MBCS_MMR_SET(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

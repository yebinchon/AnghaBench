; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_initialize_dma_trm_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_initialize_dma_trm_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_trm_ctx = type { i64, i32, i32, i32, i32*, i32, i32, i64, i64, i32, i64 }
%struct.ti_ohci = type { i32 }

@DMA_CTX_ISO = common dso_local global i64 0, align 8
@OHCI1394_IsoXmitIntMaskSet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Transmit DMA ctx=%d initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_trm_ctx*)* @initialize_dma_trm_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_dma_trm_ctx(%struct.dma_trm_ctx* %0) #0 {
  %2 = alloca %struct.dma_trm_ctx*, align 8
  %3 = alloca %struct.ti_ohci*, align 8
  store %struct.dma_trm_ctx* %0, %struct.dma_trm_ctx** %2, align 8
  %4 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %4, i32 0, i32 10
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ti_ohci*
  store %struct.ti_ohci* %7, %struct.ti_ohci** %3, align 8
  %8 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %9 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ohci1394_stop_context(%struct.ti_ohci* %8, i32 %11, i32* null)
  %13 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %27, i32 0, i32 2
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMA_CTX_ISO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %37 = load i32, i32* @OHCI1394_IsoXmitIntMaskSet, align 4
  %38 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  %42 = call i32 @reg_write(%struct.ti_ohci* %36, i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %35, %1
  %44 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DBGMSG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46)
  ret void
}

declare dso_local i32 @ohci1394_stop_context(%struct.ti_ohci*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @DBGMSG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

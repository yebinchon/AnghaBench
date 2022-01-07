; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_z85230.c_z8530_sync_txdma_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_z85230.c_z8530_sync_txdma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.z8530_channel = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i64, i32, i64, i32**, i32*, i32*, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Opening sync interface for TX-DMA\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DTRREQ = common dso_local global i32 0, align 4
@R14 = common dso_local global i64 0, align 8
@TxINT_ENAB = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@z8530_txdma_sync = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8
@RxENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z8530_sync_txdma_open(%struct.net_device* %0, %struct.z8530_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.z8530_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.z8530_channel* %1, %struct.z8530_channel** %5, align 8
  %8 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %10 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 64
  %15 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %16 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %18 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %17, i32 0, i32 15
  store i64 0, i64* %18, align 8
  %19 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %20 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %19, i32 0, i32 14
  store i32* null, i32** %20, align 8
  %21 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %22 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %21, i32 0, i32 13
  store i32* null, i32** %22, align 8
  %23 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %24 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sdiv i32 %26, 2
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %168

32:                                               ; preds = %2
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load i32, i32* @GFP_DMA, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @get_zeroed_page(i32 %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %40 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %39, i32 0, i32 12
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  store i32* %38, i32** %42, align 8
  %43 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %44 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %43, i32 0, i32 12
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = load i32, i32* @ENOBUFS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %168

52:                                               ; preds = %32
  %53 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %54 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %53, i32 0, i32 12
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = sdiv i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %63 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %62, i32 0, i32 12
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  store i32* %61, i32** %65, align 8
  %66 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %67 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_lock_irqsave(i32 %68, i64 %69)
  %71 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %72 = call i32 @z8530_rx_done(%struct.z8530_channel* %71)
  %73 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %74 = call i32 @z8530_rx_done(%struct.z8530_channel* %73)
  %75 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %76 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %75, i32 0, i32 9
  store i64 0, i64* %76, align 8
  %77 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %78 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %80 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %79, i32 0, i32 3
  store i32 0, i32* %80, align 4
  %81 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %82 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %81, i32 0, i32 11
  store i64 0, i64* %82, align 8
  %83 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %84 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %83, i32 0, i32 4
  store i32 1, i32* %84, align 8
  %85 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %86 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %85, i32 0, i32 5
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* @DTRREQ, align 4
  %88 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %89 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @R14, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %87
  store i32 %94, i32* %92, align 4
  %95 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %96 = load i64, i64* @R14, align 8
  %97 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %98 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @R14, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @write_zsreg(%struct.z8530_channel* %95, i64 %96, i32 %102)
  %104 = load i32, i32* @TxINT_ENAB, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %107 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @R1, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %105
  store i32 %112, i32* %110, align 4
  %113 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %114 = load i64, i64* @R1, align 8
  %115 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %116 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @R1, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @write_zsreg(%struct.z8530_channel* %113, i64 %114, i32 %120)
  %122 = call i64 (...) @claim_dma_lock()
  store i64 %122, i64* %7, align 8
  %123 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %124 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %123, i32 0, i32 10
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @disable_dma(i32 %125)
  %127 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %128 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @clear_dma_ff(i32 %129)
  %131 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %132 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @DMA_MODE_WRITE, align 4
  %135 = call i32 @set_dma_mode(i32 %133, i32 %134)
  %136 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %137 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @disable_dma(i32 %138)
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @release_dma_lock(i64 %140)
  %142 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %143 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %142, i32 0, i32 9
  store i64 0, i64* %143, align 8
  %144 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %145 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  %146 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %147 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %146, i32 0, i32 3
  store i32 1, i32* %147, align 4
  %148 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %149 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %148, i32 0, i32 8
  store i32* @z8530_txdma_sync, i32** %149, align 8
  %150 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %151 = call i32 @z8530_rtsdtr(%struct.z8530_channel* %150, i32 1)
  %152 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %153 = load i64, i64* @R3, align 8
  %154 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %155 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @R3, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @RxENABLE, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @write_zsreg(%struct.z8530_channel* %152, i64 %153, i32 %161)
  %163 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %164 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32 %165, i64 %166)
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %52, %49, %29
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @z8530_rx_done(%struct.z8530_channel*) #1

declare dso_local i32 @write_zsreg(%struct.z8530_channel*, i64, i32) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @z8530_rtsdtr(%struct.z8530_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

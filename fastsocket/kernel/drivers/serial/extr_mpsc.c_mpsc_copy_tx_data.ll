; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_copy_tx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_copy_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i64, %struct.TYPE_5__, i64*, i32 }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32*, i32 }

@MPSC_TXR_ENTRIES = common dso_local global i32 0, align 4
@MPSC_TXBE_SIZE = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*)* @mpsc_copy_tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_copy_tx_data(%struct.mpsc_port_info* %0) #0 {
  %2 = alloca %struct.mpsc_port_info*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %2, align 8
  %6 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %7 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.circ_buf* %10, %struct.circ_buf** %3, align 8
  br label %11

11:                                               ; preds = %117, %1
  %12 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %13 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %16 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MPSC_TXR_ENTRIES, align 4
  %19 = call i32 @CIRC_CNT(i32 %14, i32 %17, i32 %18)
  %20 = load i32, i32* @MPSC_TXR_ENTRIES, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %139

23:                                               ; preds = %11
  %24 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %25 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %31 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %30, i32 0, i32 3
  %32 = load i64*, i64** %31, align 8
  %33 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %34 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MPSC_TXBE_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %32, i64 %38
  store i64* %39, i64** %4, align 8
  %40 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %41 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %4, align 8
  store i64 %43, i64* %44, align 8
  %45 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %46 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  store i32 1, i32* %5, align 4
  br label %117

48:                                               ; preds = %23
  %49 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %50 = call i32 @uart_circ_empty(%struct.circ_buf* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %115, label %52

52:                                               ; preds = %48
  %53 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %54 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %53, i32 0, i32 2
  %55 = call i32 @uart_tx_stopped(%struct.TYPE_5__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %115, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @MPSC_TXBE_SIZE, align 4
  %59 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %60 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %59)
  %61 = trunc i64 %60 to i32
  %62 = call i32 @min(i32 %58, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %65 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @UART_XMIT_SIZE, align 4
  %71 = call i64 @CIRC_CNT_TO_END(i32 %66, i64 %69, i32 %70)
  %72 = trunc i64 %71 to i32
  %73 = call i32 @min(i32 %63, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %75 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %78 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MPSC_TXBE_SIZE, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %76, i64 %82
  store i64* %83, i64** %4, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %86 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %89 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @memcpy(i64* %84, i32* %91, i32 %92)
  %94 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %95 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %96, %98
  %100 = load i32, i32* @UART_XMIT_SIZE, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = and i64 %99, %102
  %104 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %105 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %107 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %106)
  %108 = load i64, i64* @WAKEUP_CHARS, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %57
  %111 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %112 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %111, i32 0, i32 2
  %113 = call i32 @uart_write_wakeup(%struct.TYPE_5__* %112)
  br label %114

114:                                              ; preds = %110, %57
  br label %116

115:                                              ; preds = %52, %48
  br label %139

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116, %29
  %118 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %119 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i64*, i64** %4, align 8
  %123 = bitcast i64* %122 to i8*
  %124 = load i32, i32* @MPSC_TXBE_SIZE, align 4
  %125 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %126 = call i32 @dma_cache_sync(i32 %121, i8* %123, i32 %124, i32 %125)
  %127 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @mpsc_setup_tx_desc(%struct.mpsc_port_info* %127, i32 %128, i32 1)
  %130 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %131 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* @MPSC_TXR_ENTRIES, align 4
  %135 = sub nsw i32 %134, 1
  %136 = and i32 %133, %135
  %137 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %138 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %11

139:                                              ; preds = %115, %11
  ret void
}

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @uart_tx_stopped(%struct.TYPE_5__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i64 @CIRC_CNT_TO_END(i32, i64, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_cache_sync(i32, i8*, i32, i32) #1

declare dso_local i32 @mpsc_setup_tx_desc(%struct.mpsc_port_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

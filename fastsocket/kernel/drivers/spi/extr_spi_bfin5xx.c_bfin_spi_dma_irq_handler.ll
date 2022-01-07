; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_dma_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_dma_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, %struct.TYPE_2__*, i32, i64, i64, i32*, %struct.spi_message*, %struct.chip_data* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32, i32 }
%struct.chip_data = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"in dma_irq_handler dmastat:0x%x spistat:0x%x\0A\00", align 1
@DMA_RUN = common dso_local global i32 0, align 4
@TXS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@SPIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"timeout waiting for SPIF\00", align 1
@DMA_ERR = common dso_local global i16 0, align 2
@RBSY = common dso_local global i32 0, align 4
@ERROR_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"dma receive: fifo/buffer overflow\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"disable dma channel irq%d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bfin_spi_dma_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_spi_dma_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.driver_data*, align 8
  %6 = alloca %struct.chip_data*, align 8
  %7 = alloca %struct.spi_message*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.driver_data*
  store %struct.driver_data* %12, %struct.driver_data** %5, align 8
  %13 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %14 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %13, i32 0, i32 7
  %15 = load %struct.chip_data*, %struct.chip_data** %14, align 8
  store %struct.chip_data* %15, %struct.chip_data** %6, align 8
  %16 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %17 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %16, i32 0, i32 6
  %18 = load %struct.spi_message*, %struct.spi_message** %17, align 8
  store %struct.spi_message* %18, %struct.spi_message** %7, align 8
  %19 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %20 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @get_dma_curr_irqstat(i32 %21)
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %9, align 2
  %24 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %25 = call i32 @read_STAT(%struct.driver_data* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %27 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i16, i16* %9, align 2
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (i32*, i8*, i16, ...) @dev_dbg(i32* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i16 zeroext %30, i32 %31)
  %33 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %34 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clear_dma_irqstat(i32 %35)
  br label %37

37:                                               ; preds = %45, %2
  %38 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %39 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @get_dma_curr_irqstat(i32 %40)
  %42 = load i32, i32* @DMA_RUN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 (...) @cpu_relax()
  br label %37

47:                                               ; preds = %37
  %48 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %49 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %67, %52
  %54 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %55 = call i32 @read_STAT(%struct.driver_data* %54)
  %56 = load i32, i32* @TXS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %61 = call i32 @read_STAT(%struct.driver_data* %60)
  %62 = load i32, i32* @TXS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %59, %53
  %66 = phi i1 [ true, %53 ], [ %64, %59 ]
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = call i32 (...) @cpu_relax()
  br label %53

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %72 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i16, i16* %9, align 2
  %76 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %77 = call i32 @read_STAT(%struct.driver_data* %76)
  %78 = call i32 (i32*, i8*, i16, ...) @dev_dbg(i32* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i16 zeroext %75, i32 %77)
  %79 = load i64, i64* @jiffies, align 8
  %80 = load i64, i64* @HZ, align 8
  %81 = add i64 %79, %80
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %102, %70
  %83 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %84 = call i32 @read_STAT(%struct.driver_data* %83)
  %85 = load i32, i32* @SPIF, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load i64, i64* @jiffies, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @time_before(i64 %90, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %96 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @dev_warn(i32* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %103

100:                                              ; preds = %89
  %101 = call i32 (...) @cpu_relax()
  br label %102

102:                                              ; preds = %100
  br label %82

103:                                              ; preds = %94, %82
  %104 = load i16, i16* %9, align 2
  %105 = zext i16 %104 to i32
  %106 = load i16, i16* @DMA_ERR, align 2
  %107 = zext i16 %106 to i32
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @RBSY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load i32, i32* @ERROR_STATE, align 4
  %117 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %118 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %120 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %147

124:                                              ; preds = %110, %103
  %125 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %126 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %129 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %135 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %124
  %139 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %140 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %141 = call i32 @bfin_spi_cs_deactive(%struct.driver_data* %139, %struct.chip_data* %140)
  br label %142

142:                                              ; preds = %138, %124
  %143 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %144 = call i32 @bfin_spi_next_transfer(%struct.driver_data* %143)
  %145 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %146 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %142, %115
  %148 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %149 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %148, i32 0, i32 2
  %150 = call i32 @tasklet_schedule(i32* %149)
  %151 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %152 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %156 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = trunc i32 %157 to i16
  %159 = call i32 (i32*, i8*, i16, ...) @dev_dbg(i32* %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %158)
  %160 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %161 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dma_disable_irq(i32 %162)
  %164 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %164
}

declare dso_local i32 @get_dma_curr_irqstat(i32) #1

declare dso_local i32 @read_STAT(%struct.driver_data*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i16 zeroext, ...) #1

declare dso_local i32 @clear_dma_irqstat(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @time_before(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @bfin_spi_cs_deactive(%struct.driver_data*, %struct.chip_data*) #1

declare dso_local i32 @bfin_spi_next_transfer(%struct.driver_data*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dma_disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

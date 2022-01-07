; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_nand_info = type { i32, i32, i32, i64 }

@NDSR = common dso_local global i32 0, align 4
@NDSR_RDDREQ = common dso_local global i32 0, align 4
@NDSR_DBERR = common dso_local global i32 0, align 4
@NDSR_SBERR = common dso_local global i32 0, align 4
@ERR_DBERR = common dso_local global i32 0, align 4
@ERR_SBERR = common dso_local global i32 0, align 4
@STATE_DMA_READING = common dso_local global i32 0, align 4
@STATE_PIO_READING = common dso_local global i32 0, align 4
@NDSR_WRDREQ = common dso_local global i32 0, align 4
@STATE_DMA_WRITING = common dso_local global i32 0, align 4
@STATE_PIO_WRITING = common dso_local global i32 0, align 4
@NDSR_CS0_BBD = common dso_local global i32 0, align 4
@NDSR_CS0_CMDD = common dso_local global i32 0, align 4
@ERR_BBERR = common dso_local global i32 0, align 4
@STATE_READY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa3xx_nand_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_nand_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pxa3xx_nand_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pxa3xx_nand_info*
  store %struct.pxa3xx_nand_info* %8, %struct.pxa3xx_nand_info** %5, align 8
  %9 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %10 = load i32, i32* @NDSR, align 4
  %11 = call i32 @nand_readl(%struct.pxa3xx_nand_info* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NDSR_RDDREQ, align 4
  %14 = load i32, i32* @NDSR_DBERR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @NDSR_SBERR, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %12, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NDSR_DBERR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @ERR_DBERR, align 4
  %27 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %28 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  br label %39

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NDSR_SBERR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @ERR_SBERR, align 4
  %36 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %37 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %41 = load i32, i32* @NDSR_RDDREQ, align 4
  %42 = load i32, i32* @NDSR_DBERR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NDSR_SBERR, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @disable_int(%struct.pxa3xx_nand_info* %40, i32 %45)
  %47 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %48 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load i32, i32* @STATE_DMA_READING, align 4
  %53 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %54 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %56 = call i32 @start_data_dma(%struct.pxa3xx_nand_info* %55, i32 0)
  br label %64

57:                                               ; preds = %39
  %58 = load i32, i32* @STATE_PIO_READING, align 4
  %59 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %60 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %62 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %61, i32 0, i32 0
  %63 = call i32 @complete(i32* %62)
  br label %64

64:                                               ; preds = %57, %51
  br label %122

65:                                               ; preds = %2
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @NDSR_WRDREQ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %65
  %71 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %72 = load i32, i32* @NDSR_WRDREQ, align 4
  %73 = call i32 @disable_int(%struct.pxa3xx_nand_info* %71, i32 %72)
  %74 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %75 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* @STATE_DMA_WRITING, align 4
  %80 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %81 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %83 = call i32 @start_data_dma(%struct.pxa3xx_nand_info* %82, i32 1)
  br label %91

84:                                               ; preds = %70
  %85 = load i32, i32* @STATE_PIO_WRITING, align 4
  %86 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %87 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %89 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %88, i32 0, i32 0
  %90 = call i32 @complete(i32* %89)
  br label %91

91:                                               ; preds = %84, %78
  br label %121

92:                                               ; preds = %65
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @NDSR_CS0_BBD, align 4
  %95 = load i32, i32* @NDSR_CS0_CMDD, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %92
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @NDSR_CS0_BBD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @ERR_BBERR, align 4
  %106 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %107 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %104, %99
  %109 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %110 = load i32, i32* @NDSR_CS0_BBD, align 4
  %111 = load i32, i32* @NDSR_CS0_CMDD, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @disable_int(%struct.pxa3xx_nand_info* %109, i32 %112)
  %114 = load i32, i32* @STATE_READY, align 4
  %115 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %116 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %118 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %117, i32 0, i32 0
  %119 = call i32 @complete(i32* %118)
  br label %120

120:                                              ; preds = %108, %92
  br label %121

121:                                              ; preds = %120, %91
  br label %122

122:                                              ; preds = %121, %64
  %123 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %124 = load i32, i32* @NDSR, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @nand_writel(%struct.pxa3xx_nand_info* %123, i32 %124, i32 %125)
  %127 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %127
}

declare dso_local i32 @nand_readl(%struct.pxa3xx_nand_info*, i32) #1

declare dso_local i32 @disable_int(%struct.pxa3xx_nand_info*, i32) #1

declare dso_local i32 @start_data_dma(%struct.pxa3xx_nand_info*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @nand_writel(%struct.pxa3xx_nand_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

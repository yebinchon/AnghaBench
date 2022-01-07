; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_au1550_spi.c_au1550_spi_dma_irq_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_au1550_spi.c_au1550_spi_dma_irq_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_spi = type { i8*, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PSC_SPISTAT_DI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unexpected IRQ!\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@PSC_SPIEVNT_MM = common dso_local global i32 0, align 4
@PSC_SPIEVNT_RO = common dso_local global i32 0, align 4
@PSC_SPIEVNT_RU = common dso_local global i32 0, align 4
@PSC_SPIEVNT_TO = common dso_local global i32 0, align 4
@PSC_SPIEVNT_TU = common dso_local global i32 0, align 4
@PSC_SPIEVNT_SD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"dma transfer: receive FIFO overflow!\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"dma transfer: unexpected SPI error (event=0x%x stat=0x%x)!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PSC_SPIEVNT_MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1550_spi*)* @au1550_spi_dma_irq_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_spi_dma_irq_callback(%struct.au1550_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au1550_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.au1550_spi* %0, %struct.au1550_spi** %3, align 8
  %6 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %7 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %6, i32 0, i32 7
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %12 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %11, i32 0, i32 7
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = call i32 (...) @au_sync()
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PSC_SPISTAT_DI, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %23 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %2, align 4
  br label %132

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PSC_SPIEVNT_MM, align 4
  %30 = load i32, i32* @PSC_SPIEVNT_RO, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PSC_SPIEVNT_RU, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PSC_SPIEVNT_TO, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PSC_SPIEVNT_TU, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PSC_SPIEVNT_SD, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %28, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %109

42:                                               ; preds = %27
  %43 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %44 = call i32 @au1550_spi_mask_ack_all(%struct.au1550_spi* %43)
  %45 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %46 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @au1xxx_dbdma_stop(i32 %47)
  %49 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %50 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @au1xxx_dbdma_stop(i32 %51)
  %53 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %54 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %57 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @au1xxx_get_dma_residue(i32 %58)
  %60 = ptrtoint i8* %55 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %65 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %67 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %70 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @au1xxx_get_dma_residue(i32 %71)
  %73 = ptrtoint i8* %68 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %78 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %80 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @au1xxx_dbdma_reset(i32 %81)
  %83 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %84 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @au1xxx_dbdma_reset(i32 %85)
  %87 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %88 = call i32 @au1550_spi_reset_fifos(%struct.au1550_spi* %87)
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @PSC_SPIEVNT_RO, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %42
  %93 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %94 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %104

97:                                               ; preds = %42
  %98 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %99 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %97, %92
  %105 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %106 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %105, i32 0, i32 3
  %107 = call i32 @complete(i32* %106)
  %108 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %108, i32* %2, align 4
  br label %132

109:                                              ; preds = %27
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @PSC_SPIEVNT_MD, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %116 = call i32 @au1550_spi_mask_ack_all(%struct.au1550_spi* %115)
  %117 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %118 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %121 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %123 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %126 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %128 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %127, i32 0, i32 3
  %129 = call i32 @complete(i32* %128)
  br label %130

130:                                              ; preds = %114, %109
  %131 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %104, %21
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @au1550_spi_mask_ack_all(%struct.au1550_spi*) #1

declare dso_local i32 @au1xxx_dbdma_stop(i32) #1

declare dso_local i8* @au1xxx_get_dma_residue(i32) #1

declare dso_local i32 @au1xxx_dbdma_reset(i32) #1

declare dso_local i32 @au1550_spi_reset_fifos(%struct.au1550_spi*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

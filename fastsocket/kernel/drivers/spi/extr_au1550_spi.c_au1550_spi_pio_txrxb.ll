; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_au1550_spi.c_au1550_spi_pio_txrxb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_au1550_spi.c_au1550_spi_pio_txrxb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i32, i32 }
%struct.au1550_spi = type { i64, i64, i64, i32, %struct.TYPE_2__*, i32 (%struct.au1550_spi*)*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PSC_SPIMSK_SD = common dso_local global i32 0, align 4
@PSC_SPIMSK_TR = common dso_local global i32 0, align 4
@PSC_SPISTAT_TF = common dso_local global i32 0, align 4
@PSC_SPIPCR_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @au1550_spi_pio_txrxb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_spi_pio_txrxb(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.au1550_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.au1550_spi* @spi_master_get_devdata(i32 %10)
  store %struct.au1550_spi* %11, %struct.au1550_spi** %7, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %16 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %21 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %26 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %28 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %30 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @PSC_SPIMSK_SD, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %69, %2
  %33 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %34 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %37 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %32
  %41 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %42 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %41, i32 0, i32 5
  %43 = load i32 (%struct.au1550_spi*)*, i32 (%struct.au1550_spi*)** %42, align 8
  %44 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %45 = call i32 %43(%struct.au1550_spi* %44)
  %46 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %47 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %50 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i32, i32* @PSC_SPIMSK_TR, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %40
  %58 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %59 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  %63 = call i32 (...) @au_sync()
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @PSC_SPISTAT_TF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %70

69:                                               ; preds = %57
  br label %32

70:                                               ; preds = %68, %32
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %73 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = call i32 (...) @au_sync()
  %77 = load i32, i32* @PSC_SPIPCR_MS, align 4
  %78 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %79 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %77, i32* %81, align 4
  %82 = call i32 (...) @au_sync()
  %83 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %84 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %83, i32 0, i32 3
  %85 = call i32 @wait_for_completion(i32* %84)
  %86 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %87 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %90 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %70
  %94 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %95 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  br label %101

97:                                               ; preds = %70
  %98 = load %struct.au1550_spi*, %struct.au1550_spi** %7, align 8
  %99 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i64 [ %96, %93 ], [ %100, %97 ]
  %103 = trunc i64 %102 to i32
  ret i32 %103
}

declare dso_local %struct.au1550_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_set_dma_burst_and_threshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_set_dma_burst_and_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chip_data = type { i32 }
%struct.spi_device = type { i64 }
%struct.pxa2xx_spi_chip = type { i32 }

@SSCR1_RFT = common dso_local global i32 0, align 4
@SSCR1_TFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chip_data*, %struct.spi_device*, i32, i32*, i32*)* @set_dma_burst_and_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dma_burst_and_threshold(%struct.chip_data* %0, %struct.spi_device* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.chip_data*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pxa2xx_spi_chip*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.chip_data* %0, %struct.chip_data** %6, align 8
  store %struct.spi_device* %1, %struct.spi_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.pxa2xx_spi_chip*
  store %struct.pxa2xx_spi_chip* %20, %struct.pxa2xx_spi_chip** %11, align 8
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  br label %30

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 16
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 2, i32* %12, align 4
  br label %29

28:                                               ; preds = %24
  store i32 4, i32* %12, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %11, align 8
  %32 = icmp ne %struct.pxa2xx_spi_chip* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %11, align 8
  %35 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  br label %48

37:                                               ; preds = %30
  %38 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %39 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %41 [
    i32 128, label %44
    i32 130, label %45
    i32 129, label %46
  ]

41:                                               ; preds = %37
  %42 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %43 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %42, i32 0, i32 0
  store i32 128, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %41
  store i32 8, i32* %15, align 4
  br label %47

45:                                               ; preds = %37
  store i32 16, i32* %15, align 4
  br label %47

46:                                               ; preds = %37
  store i32 32, i32* %15, align 4
  br label %47

47:                                               ; preds = %46, %45, %44
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32, i32* %15, align 4
  %50 = icmp sle i32 %49, 8
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32*, i32** %9, align 8
  store i32 128, i32* %52, align 4
  store i32 8, i32* %13, align 4
  br label %79

53:                                               ; preds = %48
  %54 = load i32, i32* %15, align 4
  %55 = icmp sle i32 %54, 16
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32*, i32** %9, align 8
  store i32 128, i32* %60, align 4
  store i32 8, i32* %13, align 4
  store i32 1, i32* %16, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32*, i32** %9, align 8
  store i32 130, i32* %62, align 4
  store i32 16, i32* %13, align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %78

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32*, i32** %9, align 8
  store i32 128, i32* %68, align 4
  store i32 8, i32* %13, align 4
  store i32 1, i32* %16, align 4
  br label %77

69:                                               ; preds = %64
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32*, i32** %9, align 8
  store i32 130, i32* %73, align 4
  store i32 16, i32* %13, align 4
  store i32 1, i32* %16, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32*, i32** %9, align 8
  store i32 129, i32* %75, align 4
  store i32 32, i32* %13, align 4
  br label %76

76:                                               ; preds = %74, %72
  br label %77

77:                                               ; preds = %76, %67
  br label %78

78:                                               ; preds = %77, %63
  br label %79

79:                                               ; preds = %78, %51
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @SSCR1_RxTresh(i32 %83)
  %85 = load i32, i32* @SSCR1_RFT, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 16, %87
  %89 = call i32 @SSCR1_TxTresh(i32 %88)
  %90 = load i32, i32* @SSCR1_TFT, align 4
  %91 = and i32 %89, %90
  %92 = or i32 %86, %91
  %93 = load i32*, i32** %10, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %16, align 4
  ret i32 %94
}

declare dso_local i32 @SSCR1_RxTresh(i32) #1

declare dso_local i32 @SSCR1_TxTresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_build_sdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_build_sdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i32, i64, %struct.ce_sd*, i64, %struct.TYPE_2__*, i8* }
%struct.ce_sd = type { i64 }
%struct.TYPE_2__ = type { i32 }

@PPC4XX_NUM_SD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PPC4XX_SD_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*)* @crypto4xx_build_sdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_build_sdr(%struct.crypto4xx_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ce_sd*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  %6 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %7 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %16 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %15, i32 0, i32 3
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i8* @dma_alloc_coherent(i32 %10, i32 %14, i64* %16, i32 %17)
  %19 = bitcast i8* %18 to %struct.ce_sd*
  %20 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %21 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %20, i32 0, i32 2
  store %struct.ce_sd* %19, %struct.ce_sd** %21, align 8
  %22 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %23 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %22, i32 0, i32 2
  %24 = load %struct.ce_sd*, %struct.ce_sd** %23, align 8
  %25 = icmp ne %struct.ce_sd* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %100

29:                                               ; preds = %1
  %30 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %31 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %32 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %34 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %39 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %44 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %43, i32 0, i32 1
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call i8* @dma_alloc_coherent(i32 %37, i32 %42, i64* %44, i32 %45)
  %47 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %48 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %50 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %72, label %53

53:                                               ; preds = %29
  %54 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %55 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 8, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %64 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %63, i32 0, i32 2
  %65 = load %struct.ce_sd*, %struct.ce_sd** %64, align 8
  %66 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %67 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dma_free_coherent(i32 %58, i32 %62, %struct.ce_sd* %65, i64 %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %100

72:                                               ; preds = %29
  %73 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %74 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %73, i32 0, i32 2
  %75 = load %struct.ce_sd*, %struct.ce_sd** %74, align 8
  store %struct.ce_sd* %75, %struct.ce_sd** %5, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %96, %72
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %82 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %85 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %83, %89
  %91 = load %struct.ce_sd*, %struct.ce_sd** %5, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ce_sd, %struct.ce_sd* %91, i64 %93
  %95 = getelementptr inbounds %struct.ce_sd, %struct.ce_sd* %94, i32 0, i32 0
  store i64 %90, i64* %95, align 8
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %76

99:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %53, %26
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.ce_sd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

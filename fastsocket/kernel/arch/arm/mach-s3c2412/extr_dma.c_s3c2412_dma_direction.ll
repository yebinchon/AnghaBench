; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2412/extr_dma.c_s3c2412_dma_direction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2412/extr_dma.c_s3c2412_dma_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_dma_chan = type { i64 }
%struct.s3c24xx_dma_map = type { i64*, i64* }

@S3C2410_DMASRC_HW = common dso_local global i32 0, align 4
@DMA_CH_VALID = common dso_local global i64 0, align 8
@S3C2412_DMAREQSEL_HW = common dso_local global i64 0, align 8
@S3C2412_DMA_DMAREQSEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_dma_chan*, %struct.s3c24xx_dma_map*, i32)* @s3c2412_dma_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2412_dma_direction(%struct.s3c2410_dma_chan* %0, %struct.s3c24xx_dma_map* %1, i32 %2) #0 {
  %4 = alloca %struct.s3c2410_dma_chan*, align 8
  %5 = alloca %struct.s3c24xx_dma_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.s3c2410_dma_chan* %0, %struct.s3c2410_dma_chan** %4, align 8
  store %struct.s3c24xx_dma_map* %1, %struct.s3c24xx_dma_map** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @S3C2410_DMASRC_HW, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.s3c24xx_dma_map*, %struct.s3c24xx_dma_map** %5, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_dma_map, %struct.s3c24xx_dma_map* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.s3c24xx_dma_map*, %struct.s3c24xx_dma_map** %5, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_dma_map, %struct.s3c24xx_dma_map* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %17, %11
  %24 = load i64, i64* @DMA_CH_VALID, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %7, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* @S3C2412_DMAREQSEL_HW, align 8
  %29 = load i64, i64* %7, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %33 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @S3C2412_DMA_DMAREQSEL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i64 %31, i64 %36)
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

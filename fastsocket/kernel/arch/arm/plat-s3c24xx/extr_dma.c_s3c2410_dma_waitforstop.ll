; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_waitforstop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_waitforstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_dma_chan = type { i32 }

@S3C2410_DMA_DMASKTRIG = common dso_local global i32 0, align 4
@S3C2410_DMASKTRIG_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"dma%d: failed to stop?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_dma_chan*)* @s3c2410_dma_waitforstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_dma_waitforstop(%struct.s3c2410_dma_chan* %0) #0 {
  %2 = alloca %struct.s3c2410_dma_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.s3c2410_dma_chan* %0, %struct.s3c2410_dma_chan** %2, align 8
  store i32 65536, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %4, align 4
  %7 = add i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp ugt i32 %6, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  %11 = load i32, i32* @S3C2410_DMA_DMASKTRIG, align 4
  %12 = call i64 @dma_rdreg(%struct.s3c2410_dma_chan* %10, i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @S3C2410_DMASKTRIG_ON, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %24

18:                                               ; preds = %9
  br label %5

19:                                               ; preds = %5
  %20 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %17
  ret void
}

declare dso_local i64 @dma_rdreg(%struct.s3c2410_dma_chan*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_dma.c_s3c64xx_dma_map_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_dma.c_s3c64xx_dma_map_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_dma_chan = type { i32 }

@DMACH_PCM1_TX = common dso_local global i32 0, align 4
@s3c2410_chans = common dso_local global %struct.s3c2410_dma_chan* null, align 8
@s3c_dma_chan_map = common dso_local global %struct.s3c2410_dma_chan** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s3c2410_dma_chan* (i32)* @s3c64xx_dma_map_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s3c2410_dma_chan* @s3c64xx_dma_map_channel(i32 %0) #0 {
  %2 = alloca %struct.s3c2410_dma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c2410_dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DMACH_PCM1_TX, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 8, i32* %5, align 4
  br label %11

11:                                               ; preds = %10, %1
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %13, 8
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** @s3c2410_chans, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %16, i64 %20
  store %struct.s3c2410_dma_chan* %21, %struct.s3c2410_dma_chan** %4, align 8
  %22 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %23 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %32

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %12

31:                                               ; preds = %12
  store %struct.s3c2410_dma_chan* null, %struct.s3c2410_dma_chan** %2, align 8
  br label %39

32:                                               ; preds = %26
  %33 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %34 = load %struct.s3c2410_dma_chan**, %struct.s3c2410_dma_chan*** @s3c_dma_chan_map, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %34, i64 %36
  store %struct.s3c2410_dma_chan* %33, %struct.s3c2410_dma_chan** %37, align 8
  %38 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  store %struct.s3c2410_dma_chan* %38, %struct.s3c2410_dma_chan** %2, align 8
  br label %39

39:                                               ; preds = %32, %31
  %40 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  ret %struct.s3c2410_dma_chan* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

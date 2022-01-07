; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_stats_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_stats_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_dma_stats = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_dma_stats*, i32)* @s3c2410_dma_stats_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_dma_stats_timeout(%struct.s3c2410_dma_stats* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c2410_dma_stats*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c2410_dma_stats* %0, %struct.s3c2410_dma_stats** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.s3c2410_dma_stats*, %struct.s3c2410_dma_stats** %3, align 8
  %6 = icmp eq %struct.s3c2410_dma_stats* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %34

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.s3c2410_dma_stats*, %struct.s3c2410_dma_stats** %3, align 8
  %11 = getelementptr inbounds %struct.s3c2410_dma_stats, %struct.s3c2410_dma_stats* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.s3c2410_dma_stats*, %struct.s3c2410_dma_stats** %3, align 8
  %17 = getelementptr inbounds %struct.s3c2410_dma_stats, %struct.s3c2410_dma_stats* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.s3c2410_dma_stats*, %struct.s3c2410_dma_stats** %3, align 8
  %21 = getelementptr inbounds %struct.s3c2410_dma_stats, %struct.s3c2410_dma_stats* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.s3c2410_dma_stats*, %struct.s3c2410_dma_stats** %3, align 8
  %27 = getelementptr inbounds %struct.s3c2410_dma_stats, %struct.s3c2410_dma_stats* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.s3c2410_dma_stats*, %struct.s3c2410_dma_stats** %3, align 8
  %31 = getelementptr inbounds %struct.s3c2410_dma_stats, %struct.s3c2410_dma_stats* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

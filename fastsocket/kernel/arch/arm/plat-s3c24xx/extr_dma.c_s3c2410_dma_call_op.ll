; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_call_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_call_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_dma_chan = type { i32 (%struct.s3c2410_dma_chan*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_dma_chan*, i32)* @s3c2410_dma_call_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_dma_call_op(%struct.s3c2410_dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c2410_dma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c2410_dma_chan* %0, %struct.s3c2410_dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %3, align 8
  %6 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %5, i32 0, i32 0
  %7 = load i32 (%struct.s3c2410_dma_chan*, i32)*, i32 (%struct.s3c2410_dma_chan*, i32)** %6, align 8
  %8 = icmp ne i32 (%struct.s3c2410_dma_chan*, i32)* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %10, i32 0, i32 0
  %12 = load i32 (%struct.s3c2410_dma_chan*, i32)*, i32 (%struct.s3c2410_dma_chan*, i32)** %11, align 8
  %13 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 %12(%struct.s3c2410_dma_chan* %13, i32 %14)
  br label %16

16:                                               ; preds = %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

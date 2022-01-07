; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_version_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_version_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { i32 }
%struct.ioatdma_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @version_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @version_show(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dma_device*, align 8
  %6 = alloca %struct.ioatdma_device*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %7, i32 0, i32 0
  %9 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  store %struct.dma_device* %9, %struct.dma_device** %5, align 8
  %10 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %11 = call %struct.ioatdma_device* @to_ioatdma_device(%struct.dma_device* %10)
  store %struct.ioatdma_device* %11, %struct.ioatdma_device** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.ioatdma_device*, %struct.ioatdma_device** %6, align 8
  %14 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 4
  %17 = load %struct.ioatdma_device*, %struct.ioatdma_device** %6, align 8
  %18 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 15
  %21 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  ret i32 %21
}

declare dso_local %struct.ioatdma_device* @to_ioatdma_device(%struct.dma_device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

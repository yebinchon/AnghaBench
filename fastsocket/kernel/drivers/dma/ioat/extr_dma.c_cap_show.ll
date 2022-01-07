; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_cap_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_cap_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"copy%s%s%s%s%s%s\0A\00", align 1
@DMA_PQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" pq\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DMA_PQ_VAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" pq_val\00", align 1
@DMA_XOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" xor\00", align 1
@DMA_XOR_VAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c" xor_val\00", align 1
@DMA_MEMSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" fill\00", align 1
@DMA_INTERRUPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c" intr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @cap_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_show(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dma_device*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %6, i32 0, i32 0
  %8 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  store %struct.dma_device* %8, %struct.dma_device** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @DMA_PQ, align 4
  %11 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %12 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @dma_has_cap(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i32, i32* @DMA_PQ_VAL, align 4
  %19 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %20 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @dma_has_cap(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i32, i32* @DMA_XOR, align 4
  %27 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %28 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @dma_has_cap(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i32, i32* @DMA_XOR_VAL, align 4
  %35 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %36 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @dma_has_cap(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* @DMA_MEMSET, align 4
  %43 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %44 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @dma_has_cap(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %50 = load i32, i32* @DMA_INTERRUPT, align 4
  %51 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %52 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @dma_has_cap(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %58 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %25, i8* %33, i8* %41, i8* %49, i8* %57)
  ret i32 %58
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @dma_has_cap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

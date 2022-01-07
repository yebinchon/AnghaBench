; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_free_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_free_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.stmp3xxx_dma_descriptor = type { i32*, i32*, i64, i32* }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@channels = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmp3xxx_dma_free_command(i32 %0, %struct.stmp3xxx_dma_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmp3xxx_dma_descriptor*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.stmp3xxx_dma_descriptor* %1, %struct.stmp3xxx_dma_descriptor** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @IS_VALID_CHANNEL(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @IS_USED(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %12
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @channels, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %27 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %30 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dma_pool_free(i32 %25, i32* %28, i64 %31)
  %33 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %34 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %36 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %38 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %40 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @WARN_ON(i32 %41)
  br label %43

43:                                               ; preds = %19, %16, %9
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @IS_VALID_CHANNEL(i32) #1

declare dso_local i32 @IS_USED(i32) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dma_set_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dma_set_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"The machine/kernel does not support the required %u-bit DMA mask\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"DMA mask fallback from %u-bit to %u-bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i64)* @b43_dma_set_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_dma_set_mask(%struct.b43_wldev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %2, %36, %42
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @dma_set_mask(i32 %15, i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %10
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @dma_set_coherent_mask(i32 %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %54

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @DMA_BIT_MASK(i32 64)
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i64 @DMA_BIT_MASK(i32 32)
  store i64 %37, i64* %5, align 8
  store i32 1, i32* %7, align 4
  br label %10

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @DMA_BIT_MASK(i32 32)
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i64 @DMA_BIT_MASK(i32 30)
  store i64 %43, i64* %5, align 8
  store i32 1, i32* %7, align 4
  br label %10

44:                                               ; preds = %38
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %46 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @dma_mask_to_engine_type(i64 %48)
  %50 = trunc i64 %49 to i32
  %51 = call i32 @b43err(i32 %47, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %69

54:                                               ; preds = %30
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %59 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @dma_mask_to_engine_type(i64 %61)
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @dma_mask_to_engine_type(i64 %64)
  %66 = trunc i64 %65 to i32
  %67 = call i32 @b43info(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %57, %54
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @dma_set_mask(i32, i64) #1

declare dso_local i32 @dma_set_coherent_mask(i32, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @b43err(i32, i8*, i32) #1

declare dso_local i64 @dma_mask_to_engine_type(i64) #1

declare dso_local i32 @b43info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

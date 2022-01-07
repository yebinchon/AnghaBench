; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_init_buff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_init_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_nand_info = type { i32, i64, i32, i32*, i64, i8*, %struct.platform_device* }
%struct.platform_device = type { i32 }

@MAX_BUFF_SIZE = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate dma buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"nand-data\00", align 1
@DMA_PRIO_LOW = common dso_local global i32 0, align 4
@pxa3xx_nand_data_dma_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to request data dma\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa3xx_nand_info*)* @pxa3xx_nand_init_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_nand_init_buff(%struct.pxa3xx_nand_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa3xx_nand_info*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_info** %3, align 8
  %6 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %7 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %6, i32 0, i32 6
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load i32, i32* @MAX_BUFF_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = sub i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* @use_dma, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @MAX_BUFF_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kmalloc(i32 %16, i32 %17)
  %19 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %20 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %22 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %101

28:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %101

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @MAX_BUFF_SIZE, align 4
  %33 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %34 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %33, i32 0, i32 2
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @dma_alloc_coherent(i32* %31, i32 %32, i32* %34, i32 %35)
  %37 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %38 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %40 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %29
  %44 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %101

49:                                               ; preds = %29
  %50 = load i32, i32* @MAX_BUFF_SIZE, align 4
  %51 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %52 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %54 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %61 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %63 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %69 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @DMA_PRIO_LOW, align 4
  %71 = load i32, i32* @pxa3xx_nand_data_dma_irq, align 4
  %72 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %73 = call i64 @pxa_request_dma(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71, %struct.pxa3xx_nand_info* %72)
  %74 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %75 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %77 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %49
  %81 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %87 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %90 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %93 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dma_free_coherent(i32* %85, i32 %88, i32* %91, i32 %94)
  %96 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %97 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %49
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %80, %43, %28, %25
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pxa_request_dma(i8*, i32, i32, %struct.pxa3xx_nand_info*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

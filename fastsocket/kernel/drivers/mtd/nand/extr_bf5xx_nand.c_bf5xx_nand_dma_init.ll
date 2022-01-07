; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_dma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf5xx_nand_info = type { i32, i32 }

@hardware_ecc = common dso_local global i32 0, align 4
@CH_NFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"BF5XX NFC driver\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c" unable to get DMA channel\0A\00", align 1
@bf5xx_nand_dma_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bf5xx_nand_info*)* @bf5xx_nand_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_nand_dma_init(%struct.bf5xx_nand_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bf5xx_nand_info*, align 8
  %4 = alloca i32, align 4
  store %struct.bf5xx_nand_info* %0, %struct.bf5xx_nand_info** %3, align 8
  %5 = load i32, i32* @hardware_ecc, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %3, align 8
  %10 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %9, i32 0, i32 1
  %11 = call i32 @init_completion(i32* %10)
  %12 = load i32, i32* @CH_NFC, align 4
  %13 = call i32 @request_dma(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %3, align 8
  %18 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %8
  %23 = load i32, i32* @CH_NFC, align 4
  %24 = load i32, i32* @bf5xx_nand_dma_irq, align 4
  %25 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %3, align 8
  %26 = call i32 @set_dma_callback(i32 %23, i32 %24, %struct.bf5xx_nand_info* %25)
  %27 = load i32, i32* @CH_NFC, align 4
  %28 = call i32 @disable_dma(i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %22, %16, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_dma(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @set_dma_callback(i32, i32, %struct.bf5xx_nand_info*) #1

declare dso_local i32 @disable_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

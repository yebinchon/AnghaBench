; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_davinci_nand.c_nand_davinci_readecc_4bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_davinci_nand.c_nand_davinci_readecc_4bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_nand_info = type { i32 }

@NAND_4BIT_ECC1_OFFSET = common dso_local global i32 0, align 4
@NAND_4BIT_ECC2_OFFSET = common dso_local global i32 0, align 4
@NAND_4BIT_ECC3_OFFSET = common dso_local global i32 0, align 4
@NAND_4BIT_ECC4_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_nand_info*, i32*)* @nand_davinci_readecc_4bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_davinci_readecc_4bit(%struct.davinci_nand_info* %0, i32* %1) #0 {
  %3 = alloca %struct.davinci_nand_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.davinci_nand_info* %0, %struct.davinci_nand_info** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 67044351, i32* %5, align 4
  %6 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %3, align 8
  %7 = load i32, i32* @NAND_4BIT_ECC1_OFFSET, align 4
  %8 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %6, i32 %7)
  %9 = and i32 %8, 67044351
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %3, align 8
  %13 = load i32, i32* @NAND_4BIT_ECC2_OFFSET, align 4
  %14 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %12, i32 %13)
  %15 = and i32 %14, 67044351
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %3, align 8
  %19 = load i32, i32* @NAND_4BIT_ECC3_OFFSET, align 4
  %20 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %18, i32 %19)
  %21 = and i32 %20, 67044351
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %3, align 8
  %25 = load i32, i32* @NAND_4BIT_ECC4_OFFSET, align 4
  %26 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %24, i32 %25)
  %27 = and i32 %26, 67044351
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @davinci_nand_readl(%struct.davinci_nand_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

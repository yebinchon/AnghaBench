; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_davinci_nand.c_nand_davinci_readecc_1bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_davinci_nand.c_nand_davinci_readecc_1bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.davinci_nand_info = type { i32 }

@NANDF1ECC_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @nand_davinci_readecc_1bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_davinci_readecc_1bit(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.davinci_nand_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %4 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %5 = call %struct.davinci_nand_info* @to_davinci_nand(%struct.mtd_info* %4)
  store %struct.davinci_nand_info* %5, %struct.davinci_nand_info** %3, align 8
  %6 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %3, align 8
  %7 = load i64, i64* @NANDF1ECC_OFFSET, align 8
  %8 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %3, align 8
  %9 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 4, %10
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %7, %12
  %14 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %6, i64 %13)
  ret i32 %14
}

declare dso_local %struct.davinci_nand_info* @to_davinci_nand(%struct.mtd_info*) #1

declare dso_local i32 @davinci_nand_readl(%struct.davinci_nand_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

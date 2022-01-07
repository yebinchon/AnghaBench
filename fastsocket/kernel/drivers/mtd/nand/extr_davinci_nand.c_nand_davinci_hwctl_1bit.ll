; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_davinci_nand.c_nand_davinci_hwctl_1bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_davinci_nand.c_nand_davinci_hwctl_1bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.davinci_nand_info = type { i64 }

@davinci_nand_lock = common dso_local global i32 0, align 4
@NANDFCR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @nand_davinci_hwctl_1bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_davinci_hwctl_1bit(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.davinci_nand_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = call %struct.davinci_nand_info* @to_davinci_nand(%struct.mtd_info* %8)
  store %struct.davinci_nand_info* %9, %struct.davinci_nand_info** %5, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %11 = call i32 @nand_davinci_readecc_1bit(%struct.mtd_info* %10)
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @davinci_nand_lock, i64 %12)
  %14 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %15 = load i32, i32* @NANDFCR_OFFSET, align 4
  %16 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %18 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 8, %19
  %21 = call i32 @BIT(i64 %20)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %25 = load i32, i32* @NANDFCR_OFFSET, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @davinci_nand_writel(%struct.davinci_nand_info* %24, i32 %25, i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @davinci_nand_lock, i64 %28)
  ret void
}

declare dso_local %struct.davinci_nand_info* @to_davinci_nand(%struct.mtd_info*) #1

declare dso_local i32 @nand_davinci_readecc_1bit(%struct.mtd_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @davinci_nand_readl(%struct.davinci_nand_info*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @davinci_nand_writel(%struct.davinci_nand_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

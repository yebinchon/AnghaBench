; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_wait_for_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_wait_for_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_nand_info = type { i32 }

@WAIT_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@NDSR = common dso_local global i32 0, align 4
@NDSR_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa3xx_nand_info*, i32)* @wait_for_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_event(%struct.pxa3xx_nand_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa3xx_nand_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @WAIT_EVENT_TIMEOUT, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %15 = load i32, i32* @NDSR, align 4
  %16 = call i32 @nand_readl(%struct.pxa3xx_nand_info* %14, i32 %15)
  %17 = load i32, i32* @NDSR_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %25 = load i32, i32* @NDSR, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @nand_writel(%struct.pxa3xx_nand_info* %24, i32 %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %33

28:                                               ; preds = %13
  %29 = call i32 @udelay(i32 10)
  br label %9

30:                                               ; preds = %9
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @nand_readl(%struct.pxa3xx_nand_info*, i32) #1

declare dso_local i32 @nand_writel(%struct.pxa3xx_nand_info*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

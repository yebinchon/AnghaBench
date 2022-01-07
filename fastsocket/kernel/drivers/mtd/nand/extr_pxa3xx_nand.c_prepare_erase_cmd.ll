; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_prepare_erase_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_prepare_erase_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_nand_info = type { i32, i32, i64 }

@NDCB0_DBC = common dso_local global i32 0, align 4
@NDCB0_AUTO_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa3xx_nand_info*, i32, i32)* @prepare_erase_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_erase_cmd(%struct.pxa3xx_nand_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pxa3xx_nand_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 65280
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @NDCB0_DBC, align 4
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  %16 = or i32 %7, %15
  %17 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %18 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = call i32 @NDCB0_CMD_TYPE(i32 2)
  %20 = load i32, i32* @NDCB0_AUTO_RS, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @NDCB0_ADDR_CYC(i32 3)
  %23 = or i32 %21, %22
  %24 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %25 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %30 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %32 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  ret i32 0
}

declare dso_local i32 @NDCB0_CMD_TYPE(i32) #1

declare dso_local i32 @NDCB0_ADDR_CYC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

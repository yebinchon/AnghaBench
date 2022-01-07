; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.pxa3xx_nand_info* }
%struct.pxa3xx_nand_info = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mtd_info*)* @pxa3xx_nand_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @pxa3xx_nand_read_byte(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.pxa3xx_nand_info*, align 8
  %4 = alloca i8, align 1
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 0
  %7 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  store %struct.pxa3xx_nand_info* %7, %struct.pxa3xx_nand_info** %3, align 8
  store i8 -1, i8* %4, align 1
  %8 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %9 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %12 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %17 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %20 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds i8, i8* %18, i64 %21
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %4, align 1
  br label %25

25:                                               ; preds = %15, %1
  %26 = load i8, i8* %4, align 1
  ret i8 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

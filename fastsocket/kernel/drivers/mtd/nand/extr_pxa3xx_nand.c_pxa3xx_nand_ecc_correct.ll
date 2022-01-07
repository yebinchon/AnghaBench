; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_ecc_correct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_ecc_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.pxa3xx_nand_info* }
%struct.pxa3xx_nand_info = type { i64 }

@ERR_SBERR = common dso_local global i64 0, align 8
@ERR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*, i32*)* @pxa3xx_nand_ecc_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_nand_ecc_correct(%struct.mtd_info* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pxa3xx_nand_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 0
  %13 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %12, align 8
  store %struct.pxa3xx_nand_info* %13, %struct.pxa3xx_nand_info** %10, align 8
  %14 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %10, align 8
  %15 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ERR_SBERR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %29

20:                                               ; preds = %4
  %21 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %10, align 8
  %22 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ERR_NONE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %29

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %26, %19
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

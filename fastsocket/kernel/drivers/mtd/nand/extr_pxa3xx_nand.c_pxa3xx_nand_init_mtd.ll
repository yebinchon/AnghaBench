; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_init_mtd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_init_mtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.pxa3xx_nand_info = type { %struct.nand_chip, %struct.pxa3xx_nand_flash* }
%struct.nand_chip = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.pxa3xx_nand_flash = type { i32, i32 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@pxa3xx_nand_waitfunc = common dso_local global i32 0, align 4
@pxa3xx_nand_select_chip = common dso_local global i32 0, align 4
@pxa3xx_nand_dev_ready = common dso_local global i32 0, align 4
@pxa3xx_nand_cmdfunc = common dso_local global i32 0, align 4
@pxa3xx_nand_read_word = common dso_local global i32 0, align 4
@pxa3xx_nand_read_byte = common dso_local global i32 0, align 4
@pxa3xx_nand_read_buf = common dso_local global i32 0, align 4
@pxa3xx_nand_write_buf = common dso_local global i32 0, align 4
@pxa3xx_nand_verify_buf = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@pxa3xx_nand_ecc_hwctl = common dso_local global i32 0, align 4
@pxa3xx_nand_ecc_calculate = common dso_local global i32 0, align 4
@pxa3xx_nand_ecc_correct = common dso_local global i32 0, align 4
@hw_largepage_ecclayout = common dso_local global i32 0, align 4
@hw_smallpage_ecclayout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, %struct.pxa3xx_nand_info*)* @pxa3xx_nand_init_mtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa3xx_nand_init_mtd(%struct.mtd_info* %0, %struct.pxa3xx_nand_info* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.pxa3xx_nand_info*, align 8
  %5 = alloca %struct.pxa3xx_nand_flash*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.pxa3xx_nand_info* %1, %struct.pxa3xx_nand_info** %4, align 8
  %7 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %8 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %7, i32 0, i32 1
  %9 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %8, align 8
  store %struct.pxa3xx_nand_flash* %9, %struct.pxa3xx_nand_flash** %5, align 8
  %10 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %11 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %10, i32 0, i32 0
  store %struct.nand_chip* %11, %struct.nand_chip** %6, align 8
  %12 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %13 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @pxa3xx_nand_waitfunc, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @pxa3xx_nand_select_chip, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @pxa3xx_nand_dev_ready, align 4
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @pxa3xx_nand_cmdfunc, align 4
  %33 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @pxa3xx_nand_read_word, align 4
  %36 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @pxa3xx_nand_read_byte, align 4
  %39 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @pxa3xx_nand_read_buf, align 4
  %42 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @pxa3xx_nand_write_buf, align 4
  %45 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @pxa3xx_nand_verify_buf, align 4
  %48 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @NAND_ECC_HW, align 4
  %51 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @pxa3xx_nand_ecc_hwctl, align 4
  %55 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @pxa3xx_nand_ecc_calculate, align 4
  %59 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @pxa3xx_nand_ecc_correct, align 4
  %63 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %67 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %73 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 2048
  br i1 %75, label %76, label %80

76:                                               ; preds = %19
  %77 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %78 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32* @hw_largepage_ecclayout, i32** %79, align 8
  br label %84

80:                                               ; preds = %19
  %81 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32* @hw_smallpage_ecclayout, i32** %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 0
  store i32 25, i32* %86, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.fsl_elbc_mtd* }
%struct.fsl_elbc_mtd = type { %struct.fsl_elbc_ctrl* }
%struct.fsl_elbc_ctrl = type { i64, i64, i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"read_byte beyond end of buffer\0A\00", align 1
@ERR_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @fsl_elbc_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_elbc_read_byte(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.fsl_elbc_mtd*, align 8
  %6 = alloca %struct.fsl_elbc_ctrl*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  store %struct.nand_chip* %9, %struct.nand_chip** %4, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  %12 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %11, align 8
  store %struct.fsl_elbc_mtd* %12, %struct.fsl_elbc_mtd** %5, align 8
  %13 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %5, align 8
  %14 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %13, i32 0, i32 0
  %15 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %14, align 8
  store %struct.fsl_elbc_ctrl* %15, %struct.fsl_elbc_ctrl** %6, align 8
  %16 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %6, align 8
  %17 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %6, align 8
  %20 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %6, align 8
  %25 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %6, align 8
  %28 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds i32, i32* %26, i64 %29
  %32 = call i32 @in_8(i32* %31)
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %1
  %34 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %6, align 8
  %35 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ERR_BYTE, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

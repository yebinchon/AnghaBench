; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_read_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.fsl_elbc_mtd* }
%struct.fsl_elbc_mtd = type { %struct.fsl_elbc_ctrl* }
%struct.fsl_elbc_ctrl = type { i64, i32, i32*, i64 }

@.str = private unnamed_addr constant [60 x i8] c"read_buf beyond end of buffer (%d requested, %d available)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @fsl_elbc_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_elbc_read_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.fsl_elbc_mtd*, align 8
  %9 = alloca %struct.fsl_elbc_ctrl*, align 8
  %10 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 0
  %13 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  store %struct.nand_chip* %13, %struct.nand_chip** %7, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 0
  %16 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %15, align 8
  store %struct.fsl_elbc_mtd* %16, %struct.fsl_elbc_mtd** %8, align 8
  %17 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %8, align 8
  %18 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %17, i32 0, i32 0
  %19 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %18, align 8
  store %struct.fsl_elbc_ctrl* %19, %struct.fsl_elbc_ctrl** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %59

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %26 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %29 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  %32 = call i32 @min(i32 %24, i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %35 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %38 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @memcpy_fromio(i32* %33, i32* %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %46 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %23
  %53 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %54 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %22, %52, %23
  ret void
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy_fromio(i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

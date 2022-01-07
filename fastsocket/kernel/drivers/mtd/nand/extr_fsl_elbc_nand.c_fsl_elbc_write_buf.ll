; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_write_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, %struct.nand_chip* }
%struct.nand_chip = type { %struct.fsl_elbc_mtd* }
%struct.fsl_elbc_mtd = type { %struct.fsl_elbc_ctrl* }
%struct.fsl_elbc_ctrl = type { i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"write_buf of %d bytes\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"write_buf beyond end of buffer (%d requested, %u available)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @fsl_elbc_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_elbc_write_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
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
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 2
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
  %20 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %31 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %36 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  br label %91

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %41 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub i32 %39, %42
  %44 = icmp ugt i32 %38, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %47 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %52 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub i32 %50, %53
  %55 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %58 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub i32 %56, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %45, %37
  %62 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %63 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %66 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @memcpy_toio(i32* %69, i32* %70, i32 %71)
  %73 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %74 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %77 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = getelementptr inbounds i32, i32* %83, i64 -1
  %85 = call i32 @in_8(i32* %84)
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %9, align 8
  %88 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %61, %29
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy_toio(i32*, i32*, i32) #1

declare dso_local i32 @in_8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

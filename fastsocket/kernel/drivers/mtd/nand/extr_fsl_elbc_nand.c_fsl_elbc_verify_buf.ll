; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_verify_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_verify_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.fsl_elbc_mtd* }
%struct.fsl_elbc_mtd = type { %struct.fsl_elbc_ctrl* }
%struct.fsl_elbc_ctrl = type { i32, i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"write_buf of %d bytes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"verify_buf beyond end of buffer (%d requested, %u available)\0A\00", align 1
@LTESR_CC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64*, i32)* @fsl_elbc_verify_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_elbc_verify_buf(%struct.mtd_info* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.fsl_elbc_mtd*, align 8
  %10 = alloca %struct.fsl_elbc_ctrl*, align 8
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 0
  %14 = load %struct.nand_chip*, %struct.nand_chip** %13, align 8
  store %struct.nand_chip* %14, %struct.nand_chip** %8, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  %17 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %16, align 8
  store %struct.fsl_elbc_mtd* %17, %struct.fsl_elbc_mtd** %9, align 8
  %18 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %9, align 8
  %19 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %18, i32 0, i32 0
  %20 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %19, align 8
  store %struct.fsl_elbc_ctrl* %20, %struct.fsl_elbc_ctrl** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %25 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %110

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %34 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %37 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 %35, %38
  %40 = icmp ugt i32 %32, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %31
  %42 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %43 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %47 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %50 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %48, %51
  %53 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %52)
  %54 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %55 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %58 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %110

61:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %86, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %68 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %71 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  %77 = call i64 @in_8(i32* %76)
  %78 = load i64*, i64** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %77, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %66
  br label %89

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %62

89:                                               ; preds = %84, %62
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %92 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %10, align 8
  %100 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @LTESR_CC, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %108

105:                                              ; preds = %98, %89
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  br label %108

108:                                              ; preds = %105, %104
  %109 = phi i32 [ 0, %104 ], [ %107, %105 ]
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %41, %23
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i64 @in_8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

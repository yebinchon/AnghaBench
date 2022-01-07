; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_upm.c_fun_write_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_upm.c_fun_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.fsl_upm_nand = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FSL_UPM_WAIT_WRITE_BYTE = common dso_local global i32 0, align 4
@FSL_UPM_WAIT_WRITE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @fun_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fun_write_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_upm_nand*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.fsl_upm_nand* @to_fsl_upm_nand(%struct.mtd_info* %9)
  store %struct.fsl_upm_nand* %10, %struct.fsl_upm_nand** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %17 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @out_8(i32 %19, i32 %24)
  %26 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %27 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FSL_UPM_WAIT_WRITE_BYTE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %34 = call i32 @fun_wait_rnb(%struct.fsl_upm_nand* %33)
  br label %35

35:                                               ; preds = %32, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %41 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FSL_UPM_WAIT_WRITE_BUFFER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %48 = call i32 @fun_wait_rnb(%struct.fsl_upm_nand* %47)
  br label %49

49:                                               ; preds = %46, %39
  ret void
}

declare dso_local %struct.fsl_upm_nand* @to_fsl_upm_nand(%struct.mtd_info*) #1

declare dso_local i32 @out_8(i32, i32) #1

declare dso_local i32 @fun_wait_rnb(%struct.fsl_upm_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

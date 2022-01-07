; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_mxc_nand.c_mxc_nand_correct_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_mxc_nand.c_mxc_nand_correct_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.mxc_nand_host* }
%struct.mxc_nand_host = type { i64 }

@NFC_ECC_STATUS_RESULT = common dso_local global i64 0, align 8
@MTD_DEBUG_LEVEL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"MXC_NAND: HWECC uncorrectable 2-bit ECC error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*, i32*)* @mxc_nand_correct_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_nand_correct_data(%struct.mtd_info* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca %struct.mxc_nand_host*, align 8
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  store %struct.nand_chip* %15, %struct.nand_chip** %10, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %17, align 8
  store %struct.mxc_nand_host* %18, %struct.mxc_nand_host** %11, align 8
  %19 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %11, align 8
  %20 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NFC_ECC_STATUS_RESULT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readw(i64 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  %30 = ashr i32 %29, 2
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %4
  %33 = load i32, i32* @MTD_DEBUG_LEVEL0, align 4
  %34 = call i32 @DEBUG(i32 %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

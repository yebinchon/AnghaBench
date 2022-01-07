; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2412_nand_calculate_ecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2412_nand_calculate_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.s3c2410_nand_info = type { i64 }

@S3C2412_NFMECC0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"calculate_ecc: returning ecc %02x,%02x,%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64*, i64*)* @s3c2412_nand_calculate_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2412_nand_calculate_ecc(%struct.mtd_info* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.s3c2410_nand_info*, align 8
  %8 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info* %9)
  store %struct.s3c2410_nand_info* %10, %struct.s3c2410_nand_info** %7, align 8
  %11 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %7, align 8
  %12 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @S3C2412_NFMECC0, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = lshr i64 %20, 8
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = lshr i64 %24, 16
  %26 = load i64*, i64** %6, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  store i64 %25, i64* %27, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %33, i64 %36)
  ret i32 0
}

declare dso_local %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

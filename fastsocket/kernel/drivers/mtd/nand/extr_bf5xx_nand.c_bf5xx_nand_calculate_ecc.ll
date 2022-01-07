; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_calculate_ecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_calculate_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.bf5xx_nand_info = type { i32, %struct.bf5xx_nand_platform* }
%struct.bf5xx_nand_platform = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"returning ecc 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*)* @bf5xx_nand_calculate_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_nand_calculate_ecc(%struct.mtd_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bf5xx_nand_info*, align 8
  %8 = alloca %struct.bf5xx_nand_platform*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %15 = call %struct.bf5xx_nand_info* @mtd_to_nand_info(%struct.mtd_info* %14)
  store %struct.bf5xx_nand_info* %15, %struct.bf5xx_nand_info** %7, align 8
  %16 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %7, align 8
  %17 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %16, i32 0, i32 1
  %18 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %17, align 8
  store %struct.bf5xx_nand_platform* %18, %struct.bf5xx_nand_platform** %8, align 8
  %19 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %8, align 8
  %20 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 512, i32 256
  store i32 %24, i32* %9, align 4
  %25 = call i32 (...) @bfin_read_NFC_ECC0()
  store i32 %25, i32* %10, align 4
  %26 = call i32 (...) @bfin_read_NFC_ECC1()
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, 2047
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, 2047
  %31 = shl i32 %30, 11
  %32 = or i32 %28, %31
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %7, align 8
  %35 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @memcpy(i32* %41, i32* %42, i32 3)
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 512
  br i1 %45, label %46, label %68

46:                                               ; preds = %3
  %47 = call i32 (...) @bfin_read_NFC_ECC2()
  store i32 %47, i32* %10, align 4
  %48 = call i32 (...) @bfin_read_NFC_ECC3()
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 2047
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 2047
  %53 = shl i32 %52, 11
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @memcpy(i32* %59, i32* %60, i32 3)
  %62 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %7, align 8
  %63 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %46, %3
  ret i32 0
}

declare dso_local %struct.bf5xx_nand_info* @mtd_to_nand_info(%struct.mtd_info*) #1

declare dso_local i32 @bfin_read_NFC_ECC0(...) #1

declare dso_local i32 @bfin_read_NFC_ECC1(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bfin_read_NFC_ECC2(...) #1

declare dso_local i32 @bfin_read_NFC_ECC3(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

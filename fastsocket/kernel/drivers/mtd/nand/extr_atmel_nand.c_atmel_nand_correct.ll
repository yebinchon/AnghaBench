; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_atmel_nand.c_atmel_nand_correct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_atmel_nand.c_atmel_nand_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32, %struct.atmel_nand_host* }
%struct.atmel_nand_host = type { i32, i32 }

@SR = common dso_local global i32 0, align 4
@ATMEL_ECC_RECERR = common dso_local global i32 0, align 4
@PR = common dso_local global i32 0, align 4
@ATMEL_ECC_BITADDR = common dso_local global i32 0, align 4
@ATMEL_ECC_WORDADDR = common dso_local global i32 0, align 4
@ATMEL_ECC_MULERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"atmel_nand : multiple errors detected. Unable to correct.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ATMEL_ECC_ECCERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"atmel_nand : one bit error on ECC code. Nothing to correct\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"atmel_nand : one bit error on data. (word offset in the page : 0x%x bit offset : 0x%x)\0A\00", align 1
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"atmel_nand : error corrected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*, i32*)* @atmel_nand_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_correct(%struct.mtd_info* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca %struct.atmel_nand_host*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  %17 = load %struct.nand_chip*, %struct.nand_chip** %16, align 8
  store %struct.nand_chip* %17, %struct.nand_chip** %10, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 1
  %20 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %19, align 8
  store %struct.atmel_nand_host* %20, %struct.atmel_nand_host** %11, align 8
  %21 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %11, align 8
  %22 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SR, align 4
  %25 = call i32 @ecc_readl(i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @ATMEL_ECC_RECERR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %122

35:                                               ; preds = %4
  %36 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %11, align 8
  %37 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PR, align 4
  %40 = call i32 @ecc_readl(i32 %38, i32 %39)
  %41 = load i32, i32* @ATMEL_ECC_BITADDR, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %14, align 4
  %43 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %11, align 8
  %44 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PR, align 4
  %47 = call i32 @ecc_readl(i32 %45, i32 %46)
  %48 = load i32, i32* @ATMEL_ECC_WORDADDR, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = lshr i32 %50, 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @ATMEL_ECC_MULERR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %35
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @ATMEL_ECC_BITADDR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @ATMEL_ECC_WORDADDR, align 4
  %63 = ashr i32 %62, 4
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %122

66:                                               ; preds = %60, %56
  %67 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %11, align 8
  %68 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %122

73:                                               ; preds = %35
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @ATMEL_ECC_ECCERR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %11, align 8
  %80 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %122

83:                                               ; preds = %73
  %84 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %11, align 8
  %85 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 (i32, i8*, ...) @dev_dbg(i32 %86, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %91 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %83
  %97 = load i32, i32* %14, align 4
  %98 = shl i32 1, %97
  %99 = load i32*, i32** %7, align 8
  %100 = bitcast i32* %99 to i16*
  %101 = load i32, i32* %13, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i16, i16* %100, i64 %102
  %104 = load i16, i16* %103, align 2
  %105 = zext i16 %104 to i32
  %106 = xor i32 %105, %98
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %103, align 2
  br label %117

108:                                              ; preds = %83
  %109 = load i32, i32* %14, align 4
  %110 = shl i32 1, %109
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %115, %110
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %108, %96
  %118 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %11, align 8
  %119 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @dev_dbg(i32 %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %122

122:                                              ; preds = %117, %78, %66, %65, %34
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @ecc_readl(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

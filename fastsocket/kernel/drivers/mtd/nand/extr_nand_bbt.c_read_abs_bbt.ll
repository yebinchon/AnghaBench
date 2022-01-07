; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_read_abs_bbt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_read_abs_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.nand_chip* }
%struct.nand_chip = type { i32, i32, i32 }
%struct.nand_bbt_descr = type { i32, i32, i32* }

@NAND_BBT_NRBITS_MSK = common dso_local global i32 0, align 4
@NAND_BBT_PERCHIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, %struct.nand_bbt_descr*, i32)* @read_abs_bbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_abs_bbt(%struct.mtd_info* %0, i32* %1, %struct.nand_bbt_descr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nand_bbt_descr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 1
  %17 = load %struct.nand_chip*, %struct.nand_chip** %16, align 8
  store %struct.nand_chip* %17, %struct.nand_chip** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %19 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NAND_BBT_NRBITS_MSK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %24 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %86

29:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %82, %29
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %39, %36
  %44 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %47 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %55, %58
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %63 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @read_bbt(%struct.mtd_info* %44, i32* %45, i32 %52, i32 %59, i32 %60, i32 %61, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %43, %39
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %112

71:                                               ; preds = %66
  %72 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 2
  %79 = ashr i32 %74, %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %30

85:                                               ; preds = %30
  br label %111

86:                                               ; preds = %4
  %87 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %90 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %95 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %98 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %96, %99
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %103 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @read_bbt(%struct.mtd_info* %87, i32* %88, i32 %93, i32 %100, i32 %101, i32 0, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %86
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %5, align 4
  br label %112

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %110, %85
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %108, %69
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @read_bbt(%struct.mtd_info*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

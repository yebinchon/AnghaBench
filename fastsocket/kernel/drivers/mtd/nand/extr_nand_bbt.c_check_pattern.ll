; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_check_pattern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_check_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_bbt_descr = type { i32, i32, i32, i32* }

@NAND_BBT_SCANEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.nand_bbt_descr*)* @check_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pattern(i32* %0, i32 %1, i32 %2, %struct.nand_bbt_descr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nand_bbt_descr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nand_bbt_descr* %3, %struct.nand_bbt_descr** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %9, align 8
  %16 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %9, align 8
  %20 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NAND_BBT_SCANEMPTY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %109

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %26

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %70, %43
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %9, align 8
  %51 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %9, align 8
  %61 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %59, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %109

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %48

73:                                               ; preds = %48
  %74 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %9, align 8
  %75 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NAND_BBT_SCANEMPTY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %73
  %81 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %9, align 8
  %82 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %12, align 8
  %87 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %9, align 8
  %88 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %104, %80
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32*, i32** %12, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %12, align 8
  %100 = load i32, i32* %98, align 4
  %101 = icmp ne i32 %100, 255
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 -1, i32* %5, align 4
  br label %109

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %93

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %73
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %102, %68, %37
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

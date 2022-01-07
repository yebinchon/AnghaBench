; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_check_short_pattern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_check_short_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_bbt_descr = type { i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.nand_bbt_descr*)* @check_short_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_short_pattern(i64* %0, %struct.nand_bbt_descr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.nand_bbt_descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.nand_bbt_descr* %1, %struct.nand_bbt_descr** %5, align 8
  %8 = load i64*, i64** %4, align 8
  store i64* %8, i64** %7, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %5, align 8
  %12 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load i64*, i64** %7, align 8
  %17 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %5, align 8
  %18 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %16, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %5, align 8
  %26 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %24, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %39

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %9

38:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

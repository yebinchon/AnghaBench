; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_nand_isbad_bbt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_nand_isbad_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32, i32* }

@MTD_DEBUG_LEVEL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"nand_isbad_bbt(): bbt info for offs 0x%08x: (block %d) 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_isbad_bbt(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 0
  %13 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  store %struct.nand_chip* %13, %struct.nand_chip** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = ashr i32 %14, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 6
  %30 = ashr i32 %27, %29
  %31 = and i32 %30, 3
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @MTD_DEBUG_LEVEL2, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 1
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @DEBUG(i32 %32, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %46 [
    i32 0, label %39
    i32 1, label %40
    i32 2, label %41
  ]

39:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

40:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %47

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 1
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %41, %40, %39
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @DEBUG(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

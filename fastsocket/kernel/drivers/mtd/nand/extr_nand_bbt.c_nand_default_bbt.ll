; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_nand_default_bbt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_nand_default_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.nand_chip* }
%struct.nand_chip = type { i32, i32*, i32*, i32* }

@NAND_IS_AND = common dso_local global i32 0, align 4
@bbt_main_descr = common dso_local global i32 0, align 4
@bbt_mirror_descr = common dso_local global i32 0, align 4
@NAND_USE_FLASH_BBT = common dso_local global i32 0, align 4
@agand_flashbased = common dso_local global i32 0, align 4
@largepage_flashbased = common dso_local global i32 0, align 4
@smallpage_flashbased = common dso_local global i32 0, align 4
@largepage_memorybased = common dso_local global i32 0, align 4
@smallpage_memorybased = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_default_bbt(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 1
  %7 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  store %struct.nand_chip* %7, %struct.nand_chip** %4, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NAND_IS_AND, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 3
  store i32* @bbt_main_descr, i32** %21, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 2
  store i32* @bbt_mirror_descr, i32** %23, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @NAND_USE_FLASH_BBT, align 4
  %26 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %31 = call i32 @nand_scan_bbt(%struct.mtd_info* %30, i32* @agand_flashbased)
  store i32 %31, i32* %2, align 4
  br label %89

32:                                               ; preds = %1
  %33 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NAND_USE_FLASH_BBT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %32
  %40 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 3
  store i32* @bbt_main_descr, i32** %46, align 8
  %47 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 2
  store i32* @bbt_mirror_descr, i32** %48, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 512
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32* @largepage_flashbased, i32* @smallpage_flashbased
  %61 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  br label %63

63:                                               ; preds = %54, %49
  br label %83

64:                                               ; preds = %32
  %65 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  %67 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %75 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 512
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32* @largepage_memorybased, i32* @smallpage_memorybased
  %80 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %81 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  br label %82

82:                                               ; preds = %73, %64
  br label %83

83:                                               ; preds = %82, %63
  %84 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %85 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @nand_scan_bbt(%struct.mtd_info* %84, i32* %87)
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %83, %24
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @nand_scan_bbt(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

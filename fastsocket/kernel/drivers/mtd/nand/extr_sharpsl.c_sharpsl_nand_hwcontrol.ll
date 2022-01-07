; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sharpsl.c_sharpsl_nand_hwcontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sharpsl.c_sharpsl_nand_hwcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i64 }
%struct.sharpsl_nand = type { i64 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@FLASHCTL = common dso_local global i64 0, align 8
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @sharpsl_nand_hwcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharpsl_nand_hwcontrol(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sharpsl_nand*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i8, align 1
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.sharpsl_nand* @mtd_to_sharpsl(%struct.mtd_info* %10)
  store %struct.sharpsl_nand* %11, %struct.sharpsl_nand** %7, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 0
  %14 = load %struct.nand_chip*, %struct.nand_chip** %13, align 8
  store %struct.nand_chip* %14, %struct.nand_chip** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 7
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %9, align 1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 1
  %25 = shl i32 %24, 4
  %26 = load i8, i8* %9, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %9, align 1
  %30 = load i8, i8* %9, align 1
  %31 = zext i8 %30 to i32
  %32 = xor i32 %31, 17
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %9, align 1
  %34 = load %struct.sharpsl_nand*, %struct.sharpsl_nand** %7, align 8
  %35 = getelementptr inbounds %struct.sharpsl_nand, %struct.sharpsl_nand* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FLASHCTL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readb(i64 %38)
  %40 = and i32 %39, -24
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %40, %42
  %44 = load %struct.sharpsl_nand*, %struct.sharpsl_nand** %7, align 8
  %45 = getelementptr inbounds %struct.sharpsl_nand, %struct.sharpsl_nand* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FLASHCTL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writeb(i32 %43, i64 %48)
  br label %50

50:                                               ; preds = %19, %3
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @NAND_CMD_NONE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @writeb(i32 %55, i64 %58)
  br label %60

60:                                               ; preds = %54, %50
  ret void
}

declare dso_local %struct.sharpsl_nand* @mtd_to_sharpsl(%struct.mtd_info*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

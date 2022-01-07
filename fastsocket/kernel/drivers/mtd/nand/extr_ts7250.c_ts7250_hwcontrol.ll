; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_ts7250.c_ts7250_hwcontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_ts7250.c_ts7250_hwcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@TS72XX_NAND_CONTROL_VIRT_BASE = common dso_local global i64 0, align 8
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @ts7250_hwcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts7250_hwcontrol(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 0
  %12 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  store %struct.nand_chip* %12, %struct.nand_chip** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load i64, i64* @TS72XX_NAND_CONTROL_VIRT_BASE, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NAND_NCE, align 4
  %21 = and i32 %19, %20
  %22 = shl i32 %21, 2
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %9, align 1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NAND_CLE, align 4
  %26 = and i32 %24, %25
  %27 = load i8, i8* %9, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %9, align 1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NAND_ALE, align 4
  %33 = and i32 %31, %32
  %34 = lshr i32 %33, 2
  %35 = load i8, i8* %9, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @__raw_readb(i64 %39)
  %41 = and i32 %40, -8
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @__raw_writeb(i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %17, %3
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NAND_CMD_NONE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @writeb(i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %51, %47
  ret void
}

declare dso_local i32 @__raw_writeb(i32, i64) #1

declare dso_local i32 @__raw_readb(i64) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

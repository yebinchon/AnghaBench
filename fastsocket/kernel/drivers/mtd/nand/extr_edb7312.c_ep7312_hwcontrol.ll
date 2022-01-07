; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_edb7312.c_ep7312_hwcontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_edb7312.c_ep7312_hwcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@ep7312_pxdr = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @ep7312_hwcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep7312_hwcontrol(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i8, align 1
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  store %struct.nand_chip* %11, %struct.nand_chip** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %3
  store i8 -128, i8* %8, align 1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NAND_CLE, align 4
  %19 = load i32, i32* @NAND_ALE, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = shl i32 %21, 3
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NAND_NCE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 64
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %8, align 1
  %37 = load i32, i32* @ep7312_pxdr, align 4
  %38 = call i32 @clps_readb(i32 %37)
  %39 = and i32 %38, 240
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %39, %41
  %43 = load i32, i32* @ep7312_pxdr, align 4
  %44 = call i32 @clps_writeb(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %16, %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @NAND_CMD_NONE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @writeb(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %45
  ret void
}

declare dso_local i32 @clps_writeb(i32, i32) #1

declare dso_local i32 @clps_readb(i32) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

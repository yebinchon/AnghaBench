; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_socrates_nand.c_socrates_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_socrates_nand.c_socrates_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.socrates_nand_host* }
%struct.socrates_nand_host = type { i32 }

@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@FPGA_NAND_CMD_COMMAND = common dso_local global i32 0, align 4
@FPGA_NAND_CMD_ADDR = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@FPGA_NAND_ENABLE = common dso_local global i32 0, align 4
@FPGA_NAND_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @socrates_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socrates_nand_cmd_ctrl(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.socrates_nand_host*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 0
  %12 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  store %struct.nand_chip* %12, %struct.nand_chip** %7, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  %15 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %14, align 8
  store %struct.socrates_nand_host* %15, %struct.socrates_nand_host** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NAND_CMD_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %50

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NAND_CLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @FPGA_NAND_CMD_COMMAND, align 4
  store i32 %26, i32* %9, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @FPGA_NAND_CMD_ADDR, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NAND_NCE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @FPGA_NAND_ENABLE, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 255
  %41 = load i32, i32* @FPGA_NAND_DATA_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %8, align 8
  %46 = getelementptr inbounds %struct.socrates_nand_host, %struct.socrates_nand_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @out_be32(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %38, %19
  ret void
}

declare dso_local i32 @out_be32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

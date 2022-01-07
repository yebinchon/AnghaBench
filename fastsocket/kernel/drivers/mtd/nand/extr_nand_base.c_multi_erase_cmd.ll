; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_multi_erase_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_multi_erase_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*, i32, i32, i32)* }
%struct.mtd_info.0 = type opaque

@NAND_CMD_ERASE1 = common dso_local global i32 0, align 4
@NAND_CMD_ERASE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @multi_erase_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multi_erase_cmd(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  store %struct.nand_chip* %8, %struct.nand_chip** %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 0
  %11 = load i32 (%struct.mtd_info.0*, i32, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32, i32)** %10, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %13 = bitcast %struct.mtd_info* %12 to %struct.mtd_info.0*
  %14 = load i32, i32* @NAND_CMD_ERASE1, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = call i32 %11(%struct.mtd_info.0* %13, i32 %14, i32 -1, i32 %15)
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 0
  %20 = load i32 (%struct.mtd_info.0*, i32, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32, i32)** %19, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %22 = bitcast %struct.mtd_info* %21 to %struct.mtd_info.0*
  %23 = load i32, i32* @NAND_CMD_ERASE1, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = call i32 %20(%struct.mtd_info.0* %22, i32 %23, i32 -1, i32 %24)
  %27 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = load i32 (%struct.mtd_info.0*, i32, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32, i32)** %28, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %31 = bitcast %struct.mtd_info* %30 to %struct.mtd_info.0*
  %32 = load i32, i32* @NAND_CMD_ERASE1, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = call i32 %29(%struct.mtd_info.0* %31, i32 %32, i32 -1, i32 %33)
  %36 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 0
  %38 = load i32 (%struct.mtd_info.0*, i32, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32, i32)** %37, align 8
  %39 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %40 = bitcast %struct.mtd_info* %39 to %struct.mtd_info.0*
  %41 = load i32, i32* @NAND_CMD_ERASE1, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 %38(%struct.mtd_info.0* %40, i32 %41, i32 -1, i32 %42)
  %44 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 0
  %46 = load i32 (%struct.mtd_info.0*, i32, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32, i32)** %45, align 8
  %47 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %48 = bitcast %struct.mtd_info* %47 to %struct.mtd_info.0*
  %49 = load i32, i32* @NAND_CMD_ERASE2, align 4
  %50 = call i32 %46(%struct.mtd_info.0* %48, i32 %49, i32 -1, i32 -1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

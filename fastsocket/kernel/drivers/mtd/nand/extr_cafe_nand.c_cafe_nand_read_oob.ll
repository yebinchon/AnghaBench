; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_read_oob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32, i32 (%struct.mtd_info.0*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque

@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32, i32)* @cafe_nand_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_nand_read_oob(%struct.mtd_info* %0, %struct.nand_chip* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 2
  %11 = load i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)** %10, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %13 = bitcast %struct.mtd_info* %12 to %struct.mtd_info.1*
  %14 = load i32, i32* @NAND_CMD_READOOB, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 %11(%struct.mtd_info.1* %13, i32 %14, i32 0, i32 %15)
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 1
  %19 = load i32 (%struct.mtd_info.0*, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32)** %18, align 8
  %20 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %21 = bitcast %struct.mtd_info* %20 to %struct.mtd_info.0*
  %22 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %19(%struct.mtd_info.0* %21, i32 %24, i32 %27)
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

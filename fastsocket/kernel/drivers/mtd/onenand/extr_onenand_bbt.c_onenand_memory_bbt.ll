; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_bbt.c_onenand_memory_bbt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_bbt.c_onenand_memory_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32 }
%struct.nand_bbt_descr = type { i32 }

@NAND_BBT_SCANEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_bbt_descr*)* @onenand_memory_bbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_memory_bbt(%struct.mtd_info* %0, %struct.nand_bbt_descr* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_bbt_descr*, align 8
  %5 = alloca %struct.onenand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.nand_bbt_descr* %1, %struct.nand_bbt_descr** %4, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  store %struct.onenand_chip* %8, %struct.onenand_chip** %5, align 8
  %9 = load i32, i32* @NAND_BBT_SCANEMPTY, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %12 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %16 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %17 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %20 = call i32 @create_bbt(%struct.mtd_info* %15, i32 %18, %struct.nand_bbt_descr* %19, i32 -1)
  ret i32 %20
}

declare dso_local i32 @create_bbt(%struct.mtd_info*, i32, %struct.nand_bbt_descr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

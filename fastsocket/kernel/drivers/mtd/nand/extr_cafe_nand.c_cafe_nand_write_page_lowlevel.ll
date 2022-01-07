; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_write_page_lowlevel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_write_page_lowlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, %struct.cafe_priv* }
%struct.cafe_priv = type { i32 }
%struct.nand_chip = type { i32*, i32 (%struct.mtd_info.0*, i32*, i32)* }
%struct.mtd_info.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, %struct.nand_chip*, i32*)* @cafe_nand_write_page_lowlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_nand_write_page_lowlevel(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cafe_priv*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 2
  %10 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  store %struct.cafe_priv* %10, %struct.cafe_priv** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 1
  %13 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %12, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %15 = bitcast %struct.mtd_info* %14 to %struct.mtd_info.0*
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 %13(%struct.mtd_info.0* %15, i32* %16, i32 %19)
  %21 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 1
  %23 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %22, align 8
  %24 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %25 = bitcast %struct.mtd_info* %24 to %struct.mtd_info.0*
  %26 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %23(%struct.mtd_info.0* %25, i32* %28, i32 %31)
  %33 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %34 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, 1073741824
  store i32 %36, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

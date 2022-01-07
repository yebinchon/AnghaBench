; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_nand_calculate_ecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_nand_calculate_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.tmio_nand = type { i64 }

@FCR_MODE_HWECC_RESULT = common dso_local global i32 0, align 4
@FCR_MODE = common dso_local global i64 0, align 8
@FCR_DATA = common dso_local global i64 0, align 8
@FCR_MODE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*)* @tmio_nand_calculate_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_nand_calculate_ecc(%struct.mtd_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tmio_nand*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.tmio_nand* @mtd_to_tmio(%struct.mtd_info* %9)
  store %struct.tmio_nand* %10, %struct.tmio_nand** %7, align 8
  %11 = load i32, i32* @FCR_MODE_HWECC_RESULT, align 4
  %12 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %13 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FCR_MODE, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @tmio_iowrite8(i32 %11, i64 %16)
  %18 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %19 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FCR_DATA, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @tmio_ioread16(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = lshr i32 %27, 8
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %32 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FCR_DATA, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @tmio_ioread16(i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = lshr i32 %40, 8
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %45 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FCR_DATA, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @tmio_ioread16(i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = lshr i32 %53, 8
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @FCR_MODE_DATA, align 4
  %58 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %59 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FCR_MODE, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @tmio_iowrite8(i32 %57, i64 %62)
  ret i32 0
}

declare dso_local %struct.tmio_nand* @mtd_to_tmio(%struct.mtd_info*) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @tmio_ioread16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

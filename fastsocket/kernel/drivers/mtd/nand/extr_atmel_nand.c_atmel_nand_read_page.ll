; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_atmel_nand.c_atmel_nand_read_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_atmel_nand.c_atmel_nand_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.1*, i32, i64, i32)*, %struct.TYPE_5__, %struct.atmel_nand_host*, i32* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.TYPE_5__ = type { i32, i32, i32 (%struct.mtd_info.2*, i32*, i32*, i32*)*, %struct.TYPE_4__* }
%struct.mtd_info.2 = type opaque
%struct.TYPE_4__ = type { i64* }
%struct.atmel_nand_host = type { i32 }

@CR = common dso_local global i32 0, align 4
@ATMEL_ECC_RST = common dso_local global i32 0, align 4
@NAND_CMD_RNDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32)* @atmel_nand_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_read_page(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.atmel_nand_host*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %11, align 8
  %31 = load i32*, i32** %7, align 8
  store i32* %31, i32** %12, align 8
  %32 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %13, align 8
  %35 = call i64 (...) @cpu_is_at32ap7000()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %4
  %38 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 3
  %40 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %39, align 8
  store %struct.atmel_nand_host* %40, %struct.atmel_nand_host** %16, align 8
  %41 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %16, align 8
  %42 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CR, align 4
  %45 = load i32, i32* @ATMEL_ECC_RST, align 4
  %46 = call i32 @ecc_writel(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %4
  %48 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 0
  %50 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %49, align 8
  %51 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %52 = bitcast %struct.mtd_info* %51 to %struct.mtd_info.0*
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 %50(%struct.mtd_info.0* %52, i32* %53, i32 %54)
  %56 = load i64*, i64** %11, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %47
  %61 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 1
  %63 = load i32 (%struct.mtd_info.1*, i32, i64, i32)*, i32 (%struct.mtd_info.1*, i32, i64, i32)** %62, align 8
  %64 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %65 = bitcast %struct.mtd_info* %64 to %struct.mtd_info.1*
  %66 = load i32, i32* @NAND_CMD_RNDOUT, align 4
  %67 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %11, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = call i32 %63(%struct.mtd_info.1* %65, i32 %66, i64 %73, i32 -1)
  br label %75

75:                                               ; preds = %60, %47
  %76 = load i32*, i32** %13, align 8
  %77 = load i64*, i64** %11, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32* %80, i32** %14, align 8
  %81 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 0
  %83 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %82, align 8
  %84 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %85 = bitcast %struct.mtd_info* %84 to %struct.mtd_info.0*
  %86 = load i32*, i32** %14, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 %83(%struct.mtd_info.0* %85, i32* %86, i32 %87)
  %89 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32 (%struct.mtd_info.2*, i32*, i32*, i32*)*, i32 (%struct.mtd_info.2*, i32*, i32*, i32*)** %91, align 8
  %93 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %94 = bitcast %struct.mtd_info* %93 to %struct.mtd_info.2*
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 %92(%struct.mtd_info.2* %94, i32* %95, i32* %96, i32* null)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %75
  %101 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %102 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %113

106:                                              ; preds = %75
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %109 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %107
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %106, %100
  %114 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %115 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %114, i32 0, i32 1
  %116 = load i32 (%struct.mtd_info.1*, i32, i64, i32)*, i32 (%struct.mtd_info.1*, i32, i64, i32)** %115, align 8
  %117 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %118 = bitcast %struct.mtd_info* %117 to %struct.mtd_info.1*
  %119 = load i32, i32* @NAND_CMD_RNDOUT, align 4
  %120 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %121 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 %116(%struct.mtd_info.1* %118, i32 %119, i64 %122, i32 -1)
  %124 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %125 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %124, i32 0, i32 0
  %126 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %125, align 8
  %127 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %128 = bitcast %struct.mtd_info* %127 to %struct.mtd_info.0*
  %129 = load i32*, i32** %13, align 8
  %130 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %131 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 %126(%struct.mtd_info.0* %128, i32* %129, i32 %132)
  ret i32 0
}

declare dso_local i64 @cpu_is_at32ap7000(...) #1

declare dso_local i32 @ecc_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_read_page_raw_syndrome.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_read_page_raw_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*, i32*, i32)*, i32*, %struct.TYPE_2__ }
%struct.mtd_info.0 = type opaque
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32)* @nand_read_page_raw_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_read_page_raw_syndrome(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %107, %4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %110

32:                                               ; preds = %29
  %33 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 0
  %35 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %34, align 8
  %36 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %37 = bitcast %struct.mtd_info* %36 to %struct.mtd_info.0*
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 %35(%struct.mtd_info.0* %37, i32* %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %7, align 8
  %45 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %32
  %51 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %52, align 8
  %54 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %55 = bitcast %struct.mtd_info* %54 to %struct.mtd_info.0*
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 %53(%struct.mtd_info.0* %55, i32* %56, i32 %60)
  %62 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %11, align 8
  br label %69

69:                                               ; preds = %50, %32
  %70 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %70, i32 0, i32 0
  %72 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %71, align 8
  %73 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %74 = bitcast %struct.mtd_info* %73 to %struct.mtd_info.0*
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 %72(%struct.mtd_info.0* %74, i32* %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %11, align 8
  %82 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %83 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %69
  %88 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %89 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %88, i32 0, i32 0
  %90 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %89, align 8
  %91 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %92 = bitcast %struct.mtd_info* %91 to %struct.mtd_info.0*
  %93 = load i32*, i32** %11, align 8
  %94 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %95 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %90(%struct.mtd_info.0* %92, i32* %93, i32 %97)
  %99 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %100 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %11, align 8
  br label %106

106:                                              ; preds = %87, %69
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %12, align 4
  br label %29

110:                                              ; preds = %29
  %111 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %112 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32*, i32** %11, align 8
  %116 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %117 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = ptrtoint i32* %115 to i64
  %120 = ptrtoint i32* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sdiv exact i64 %121, 4
  %123 = sub nsw i64 %114, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %110
  %128 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %129 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %128, i32 0, i32 0
  %130 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %129, align 8
  %131 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %132 = bitcast %struct.mtd_info* %131 to %struct.mtd_info.0*
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 %130(%struct.mtd_info.0* %132, i32* %133, i32 %134)
  br label %136

136:                                              ; preds = %127, %110
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

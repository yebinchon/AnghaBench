; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_write_page_raw_syndrome.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_write_page_raw_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*, i32*, i32)*, i32*, %struct.TYPE_2__, i32 (%struct.mtd_info.1*, i32*, i32)* }
%struct.mtd_info.0 = type opaque
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mtd_info.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, %struct.nand_chip*, i32*)* @nand_write_page_raw_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_write_page_raw_syndrome(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %105, %3
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %108

30:                                               ; preds = %27
  %31 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  %33 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %32, align 8
  %34 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %35 = bitcast %struct.mtd_info* %34 to %struct.mtd_info.0*
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 %33(%struct.mtd_info.0* %35, i32* %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %6, align 8
  %43 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %30
  %49 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 0
  %51 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %50, align 8
  %52 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %53 = bitcast %struct.mtd_info* %52 to %struct.mtd_info.0*
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 %51(%struct.mtd_info.0* %53, i32* %54, i32 %58)
  %60 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %61 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %9, align 8
  br label %67

67:                                               ; preds = %48, %30
  %68 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 3
  %70 = load i32 (%struct.mtd_info.1*, i32*, i32)*, i32 (%struct.mtd_info.1*, i32*, i32)** %69, align 8
  %71 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %72 = bitcast %struct.mtd_info* %71 to %struct.mtd_info.1*
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 %70(%struct.mtd_info.1* %72, i32* %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %9, align 8
  %80 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %81 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %67
  %86 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %87 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %86, i32 0, i32 0
  %88 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %87, align 8
  %89 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %90 = bitcast %struct.mtd_info* %89 to %struct.mtd_info.0*
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %93 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %88(%struct.mtd_info.0* %90, i32* %91, i32 %95)
  %97 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %98 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %9, align 8
  br label %104

104:                                              ; preds = %85, %67
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %10, align 4
  br label %27

108:                                              ; preds = %27
  %109 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %110 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %115 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = ptrtoint i32* %113 to i64
  %118 = ptrtoint i32* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = sub nsw i64 %112, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %108
  %126 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %127 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %126, i32 0, i32 0
  %128 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %127, align 8
  %129 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %130 = bitcast %struct.mtd_info* %129 to %struct.mtd_info.0*
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 %128(%struct.mtd_info.0* %130, i32* %131, i32 %132)
  br label %134

134:                                              ; preds = %125, %108
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

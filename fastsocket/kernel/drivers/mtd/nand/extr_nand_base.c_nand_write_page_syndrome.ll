; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_write_page_syndrome.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_write_page_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*, i32*, i32)*, i32*, %struct.TYPE_2__ }
%struct.mtd_info.0 = type opaque
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 (%struct.mtd_info.1*, i32*, i32*)*, i32 (%struct.mtd_info.2*, i32)* }
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque

@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, %struct.nand_chip*, i32*)* @nand_write_page_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_write_page_syndrome(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %12, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %120, %3
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %130

32:                                               ; preds = %29
  %33 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  %36 = load i32 (%struct.mtd_info.2*, i32)*, i32 (%struct.mtd_info.2*, i32)** %35, align 8
  %37 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %38 = bitcast %struct.mtd_info* %37 to %struct.mtd_info.2*
  %39 = load i32, i32* @NAND_ECC_WRITE, align 4
  %40 = call i32 %36(%struct.mtd_info.2* %38, i32 %39)
  %41 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 0
  %43 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %42, align 8
  %44 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %45 = bitcast %struct.mtd_info* %44 to %struct.mtd_info.0*
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 %43(%struct.mtd_info.0* %45, i32* %46, i32 %47)
  %49 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %32
  %55 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 0
  %57 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %56, align 8
  %58 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %59 = bitcast %struct.mtd_info* %58 to %struct.mtd_info.0*
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %57(%struct.mtd_info.0* %59, i32* %60, i32 %64)
  %66 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %12, align 8
  br label %73

73:                                               ; preds = %54, %32
  %74 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %75 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 5
  %77 = load i32 (%struct.mtd_info.1*, i32*, i32*)*, i32 (%struct.mtd_info.1*, i32*, i32*)** %76, align 8
  %78 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %79 = bitcast %struct.mtd_info* %78 to %struct.mtd_info.1*
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 %77(%struct.mtd_info.1* %79, i32* %80, i32* %81)
  %83 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 0
  %85 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %84, align 8
  %86 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %87 = bitcast %struct.mtd_info* %86 to %struct.mtd_info.0*
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 %85(%struct.mtd_info.0* %87, i32* %88, i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = load i32*, i32** %12, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %12, align 8
  %95 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %96 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %73
  %101 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %102 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %101, i32 0, i32 0
  %103 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %102, align 8
  %104 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %105 = bitcast %struct.mtd_info* %104 to %struct.mtd_info.0*
  %106 = load i32*, i32** %12, align 8
  %107 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %108 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 %103(%struct.mtd_info.0* %105, i32* %106, i32 %110)
  %112 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %12, align 8
  br label %119

119:                                              ; preds = %100, %73
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %11, align 8
  br label %29

130:                                              ; preds = %29
  %131 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %132 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = load i32*, i32** %12, align 8
  %136 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %137 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = ptrtoint i32* %135 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = sub nsw i64 %134, %142
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %130
  %148 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %149 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %148, i32 0, i32 0
  %150 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %149, align 8
  %151 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %152 = bitcast %struct.mtd_info* %151 to %struct.mtd_info.0*
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 %150(%struct.mtd_info.0* %152, i32* %153, i32 %154)
  br label %156

156:                                              ; preds = %147, %130
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

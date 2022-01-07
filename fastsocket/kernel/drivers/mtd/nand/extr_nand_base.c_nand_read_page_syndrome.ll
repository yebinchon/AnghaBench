; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_read_page_syndrome.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_read_page_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*, i32*, i32)*, i32*, %struct.TYPE_4__ }
%struct.mtd_info.0 = type opaque
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 (%struct.mtd_info.1*, i32*, i32*, i32*)*, i32, i32 (%struct.mtd_info.2*, i32)* }
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque

@NAND_ECC_READ = common dso_local global i32 0, align 4
@NAND_ECC_READSYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32)* @nand_read_page_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_read_page_syndrome(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load i32*, i32** %7, align 8
  store i32* %28, i32** %13, align 8
  %29 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %14, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %147, %4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %157

35:                                               ; preds = %32
  %36 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  %39 = load i32 (%struct.mtd_info.2*, i32)*, i32 (%struct.mtd_info.2*, i32)** %38, align 8
  %40 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %41 = bitcast %struct.mtd_info* %40 to %struct.mtd_info.2*
  %42 = load i32, i32* @NAND_ECC_READ, align 4
  %43 = call i32 %39(%struct.mtd_info.2* %41, i32 %42)
  %44 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 0
  %46 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %45, align 8
  %47 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %48 = bitcast %struct.mtd_info* %47 to %struct.mtd_info.0*
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 %46(%struct.mtd_info.0* %48, i32* %49, i32 %50)
  %52 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %35
  %58 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 0
  %60 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %59, align 8
  %61 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %62 = bitcast %struct.mtd_info* %61 to %struct.mtd_info.0*
  %63 = load i32*, i32** %14, align 8
  %64 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 %60(%struct.mtd_info.0* %62, i32* %63, i32 %67)
  %69 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %14, align 8
  br label %76

76:                                               ; preds = %57, %35
  %77 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %78 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  %80 = load i32 (%struct.mtd_info.2*, i32)*, i32 (%struct.mtd_info.2*, i32)** %79, align 8
  %81 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %82 = bitcast %struct.mtd_info* %81 to %struct.mtd_info.2*
  %83 = load i32, i32* @NAND_ECC_READSYN, align 4
  %84 = call i32 %80(%struct.mtd_info.2* %82, i32 %83)
  %85 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 0
  %87 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %86, align 8
  %88 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %89 = bitcast %struct.mtd_info* %88 to %struct.mtd_info.0*
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 %87(%struct.mtd_info.0* %89, i32* %90, i32 %91)
  %93 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %94 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load i32 (%struct.mtd_info.1*, i32*, i32*, i32*)*, i32 (%struct.mtd_info.1*, i32*, i32*, i32*)** %95, align 8
  %97 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %98 = bitcast %struct.mtd_info* %97 to %struct.mtd_info.1*
  %99 = load i32*, i32** %13, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 %96(%struct.mtd_info.1* %98, i32* %99, i32* %100, i32* null)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %76
  %105 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %106 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %117

110:                                              ; preds = %76
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %113 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %111
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %110, %104
  %118 = load i32, i32* %11, align 4
  %119 = load i32*, i32** %14, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %14, align 8
  %122 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %123 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %117
  %128 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %129 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %128, i32 0, i32 0
  %130 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %129, align 8
  %131 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %132 = bitcast %struct.mtd_info* %131 to %struct.mtd_info.0*
  %133 = load i32*, i32** %14, align 8
  %134 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %135 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i32 %130(%struct.mtd_info.0* %132, i32* %133, i32 %137)
  %139 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %140 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %14, align 8
  br label %146

146:                                              ; preds = %127, %117
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32*, i32** %13, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %13, align 8
  br label %32

157:                                              ; preds = %32
  %158 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %159 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load i32*, i32** %14, align 8
  %163 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %164 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = ptrtoint i32* %162 to i64
  %167 = ptrtoint i32* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 4
  %170 = sub nsw i64 %161, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %157
  %175 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %176 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %175, i32 0, i32 0
  %177 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %176, align 8
  %178 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %179 = bitcast %struct.mtd_info* %178 to %struct.mtd_info.0*
  %180 = load i32*, i32** %14, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 %177(%struct.mtd_info.0* %179, i32* %180, i32 %181)
  br label %183

183:                                              ; preds = %174, %157
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_read_page_hwecc_oob_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_read_page_hwecc_oob_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_7__, i32 (%struct.mtd_info.3*, i32*, i32)*, i32*, i32 (%struct.mtd_info.4*, i32, i32, i32)*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 (%struct.mtd_info.0*, i32*, i32*, i32*)*, i32 (%struct.mtd_info.1*, i32*, i32*)*, i32 (%struct.mtd_info.2*, i32)*, %struct.TYPE_5__* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque
%struct.TYPE_5__ = type { i64* }
%struct.mtd_info.3 = type opaque
%struct.mtd_info.4 = type opaque
%struct.TYPE_6__ = type { i32*, i32* }

@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_ECC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32)* @nand_read_page_hwecc_oob_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_read_page_hwecc_oob_first(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3) #0 {
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
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %7, align 8
  store i32* %30, i32** %13, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %14, align 8
  %36 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  store i64* %41, i64** %15, align 8
  %42 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %16, align 8
  %47 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 3
  %49 = load i32 (%struct.mtd_info.4*, i32, i32, i32)*, i32 (%struct.mtd_info.4*, i32, i32, i32)** %48, align 8
  %50 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %51 = bitcast %struct.mtd_info* %50 to %struct.mtd_info.4*
  %52 = load i32, i32* @NAND_CMD_READOOB, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 %49(%struct.mtd_info.4* %51, i32 %52, i32 0, i32 %53)
  %55 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 1
  %57 = load i32 (%struct.mtd_info.3*, i32*, i32)*, i32 (%struct.mtd_info.3*, i32*, i32)** %56, align 8
  %58 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %59 = bitcast %struct.mtd_info* %58 to %struct.mtd_info.3*
  %60 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %61 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %57(%struct.mtd_info.3* %59, i32* %62, i32 %65)
  %67 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 3
  %69 = load i32 (%struct.mtd_info.4*, i32, i32, i32)*, i32 (%struct.mtd_info.4*, i32, i32, i32)** %68, align 8
  %70 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %71 = bitcast %struct.mtd_info* %70 to %struct.mtd_info.4*
  %72 = load i32, i32* @NAND_CMD_READ0, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 %69(%struct.mtd_info.4* %71, i32 %72, i32 0, i32 %73)
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %97, %4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %78 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64*, i64** %15, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %75

100:                                              ; preds = %75
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %161, %100
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %171

104:                                              ; preds = %101
  %105 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %106 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 6
  %108 = load i32 (%struct.mtd_info.2*, i32)*, i32 (%struct.mtd_info.2*, i32)** %107, align 8
  %109 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %110 = bitcast %struct.mtd_info* %109 to %struct.mtd_info.2*
  %111 = load i32, i32* @NAND_ECC_READ, align 4
  %112 = call i32 %108(%struct.mtd_info.2* %110, i32 %111)
  %113 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 1
  %115 = load i32 (%struct.mtd_info.3*, i32*, i32)*, i32 (%struct.mtd_info.3*, i32*, i32)** %114, align 8
  %116 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %117 = bitcast %struct.mtd_info* %116 to %struct.mtd_info.3*
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 %115(%struct.mtd_info.3* %117, i32* %118, i32 %119)
  %121 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %122 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  %124 = load i32 (%struct.mtd_info.1*, i32*, i32*)*, i32 (%struct.mtd_info.1*, i32*, i32*)** %123, align 8
  %125 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %126 = bitcast %struct.mtd_info* %125 to %struct.mtd_info.1*
  %127 = load i32*, i32** %13, align 8
  %128 = load i32*, i32** %16, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = call i32 %124(%struct.mtd_info.1* %126, i32* %127, i32* %131)
  %133 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %134 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  %136 = load i32 (%struct.mtd_info.0*, i32*, i32*, i32*)*, i32 (%struct.mtd_info.0*, i32*, i32*, i32*)** %135, align 8
  %137 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %138 = bitcast %struct.mtd_info* %137 to %struct.mtd_info.0*
  %139 = load i32*, i32** %13, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i32 %136(%struct.mtd_info.0* %138, i32* %139, i32* %143, i32* null)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %104
  %148 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %149 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %160

153:                                              ; preds = %104
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %156 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %154
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %153, %147
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i32*, i32** %13, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %13, align 8
  br label %101

171:                                              ; preds = %101
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

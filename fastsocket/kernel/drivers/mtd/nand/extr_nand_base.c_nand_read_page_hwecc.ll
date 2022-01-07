; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_read_page_hwecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_read_page_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_7__, i32*, i32 (%struct.mtd_info.3*, i32*, i32)*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 (%struct.mtd_info.0*, i32*, i32*, i32*)*, i32 (%struct.mtd_info.1*, i32*, i32*)*, i32 (%struct.mtd_info.2*, i32)*, %struct.TYPE_6__* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque
%struct.TYPE_6__ = type { i64* }
%struct.mtd_info.3 = type opaque
%struct.TYPE_5__ = type { i32*, i32* }

@NAND_ECC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32)* @nand_read_page_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_read_page_hwecc(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3) #0 {
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
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
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
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %14, align 8
  %36 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %15, align 8
  %41 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %16, align 8
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %79, %4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %47
  %51 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  %54 = load i32 (%struct.mtd_info.2*, i32)*, i32 (%struct.mtd_info.2*, i32)** %53, align 8
  %55 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %56 = bitcast %struct.mtd_info* %55 to %struct.mtd_info.2*
  %57 = load i32, i32* @NAND_ECC_READ, align 4
  %58 = call i32 %54(%struct.mtd_info.2* %56, i32 %57)
  %59 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 2
  %61 = load i32 (%struct.mtd_info.3*, i32*, i32)*, i32 (%struct.mtd_info.3*, i32*, i32)** %60, align 8
  %62 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %63 = bitcast %struct.mtd_info* %62 to %struct.mtd_info.3*
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 %61(%struct.mtd_info.3* %63, i32* %64, i32 %65)
  %67 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load i32 (%struct.mtd_info.1*, i32*, i32*)*, i32 (%struct.mtd_info.1*, i32*, i32*)** %69, align 8
  %71 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %72 = bitcast %struct.mtd_info* %71 to %struct.mtd_info.1*
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 %70(%struct.mtd_info.1* %72, i32* %73, i32* %77)
  br label %79

79:                                               ; preds = %50
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %13, align 8
  br label %47

89:                                               ; preds = %47
  %90 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %91 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %90, i32 0, i32 2
  %92 = load i32 (%struct.mtd_info.3*, i32*, i32)*, i32 (%struct.mtd_info.3*, i32*, i32)** %91, align 8
  %93 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %94 = bitcast %struct.mtd_info* %93 to %struct.mtd_info.3*
  %95 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %96 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %99 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %92(%struct.mtd_info.3* %94, i32* %97, i32 %100)
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %124, %89
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %105 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %102
  %110 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %111 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i64*, i64** %16, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %109
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %102

127:                                              ; preds = %102
  %128 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %129 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %12, align 4
  %132 = load i32*, i32** %7, align 8
  store i32* %132, i32** %13, align 8
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %169, %127
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %179

136:                                              ; preds = %133
  %137 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %138 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  %140 = load i32 (%struct.mtd_info.0*, i32*, i32*, i32*)*, i32 (%struct.mtd_info.0*, i32*, i32*, i32*)** %139, align 8
  %141 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %142 = bitcast %struct.mtd_info* %141 to %struct.mtd_info.0*
  %143 = load i32*, i32** %13, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32*, i32** %14, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = call i32 %140(%struct.mtd_info.0* %142, i32* %143, i32* %147, i32* %151)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %136
  %156 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %157 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  br label %168

161:                                              ; preds = %136
  %162 = load i32, i32* %17, align 4
  %163 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %164 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, %162
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %161, %155
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32*, i32** %13, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %13, align 8
  br label %133

179:                                              ; preds = %133
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

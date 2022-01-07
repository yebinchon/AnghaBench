; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_map_vaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_map_vaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64* }

@ehea_bmap = common dso_local global %struct.TYPE_6__* null, align 8
@EHEA_INVAL_ADDR = common dso_local global i64 0, align 8
@SECTION_SIZE_BITS = common dso_local global i64 0, align 8
@EHEA_TOP_INDEX_SHIFT = common dso_local global i64 0, align 8
@EHEA_INDEX_MASK = common dso_local global i64 0, align 8
@EHEA_DIR_INDEX_SHIFT = common dso_local global i64 0, align 8
@EHEA_SECTSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ehea_map_vaddr(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehea_bmap, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @EHEA_INVAL_ADDR, align 8
  store i64 %12, i64* %2, align 8
  br label %112

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @virt_to_abs(i8* %14)
  %16 = load i64, i64* @SECTION_SIZE_BITS, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @EHEA_TOP_INDEX_SHIFT, align 8
  %20 = lshr i64 %18, %19
  %21 = load i64, i64* @EHEA_INDEX_MASK, align 8
  %22 = and i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehea_bmap, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %13
  %33 = load i64, i64* @EHEA_INVAL_ADDR, align 8
  store i64 %33, i64* %2, align 8
  br label %112

34:                                               ; preds = %13
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @EHEA_DIR_INDEX_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = load i64, i64* @EHEA_INDEX_MASK, align 8
  %39 = and i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehea_bmap, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %34
  %56 = load i64, i64* @EHEA_INVAL_ADDR, align 8
  store i64 %56, i64* %2, align 8
  br label %112

57:                                               ; preds = %34
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @EHEA_INDEX_MASK, align 8
  %60 = and i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehea_bmap, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %64, i64 %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %57
  %83 = load i64, i64* @EHEA_INVAL_ADDR, align 8
  store i64 %83, i64* %2, align 8
  br label %112

84:                                               ; preds = %57
  %85 = load i8*, i8** %3, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load i32, i32* @EHEA_SECTSIZE, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = and i64 %86, %89
  store i64 %90, i64* %8, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehea_bmap, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %93, i64 %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %99, i64 %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = or i64 %109, %110
  store i64 %111, i64* %2, align 8
  br label %112

112:                                              ; preds = %84, %82, %55, %32, %11
  %113 = load i64, i64* %2, align 8
  ret i64 %113
}

declare dso_local i64 @virt_to_abs(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

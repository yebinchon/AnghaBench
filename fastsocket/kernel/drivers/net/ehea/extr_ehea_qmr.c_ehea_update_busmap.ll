; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_update_busmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_update_busmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32* }

@ehea_bmap = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EHEA_SECTSIZE = common dso_local global i64 0, align 8
@EHEA_TOP_INDEX_SHIFT = common dso_local global i32 0, align 4
@EHEA_DIR_INDEX_SHIFT = common dso_local global i32 0, align 4
@EHEA_INDEX_MASK = common dso_local global i64 0, align 8
@ehea_mr_len = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @ehea_update_busmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_update_busmap(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %130

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ehea_bmap, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.TYPE_8__* @kzalloc(i32 4, i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** @ehea_bmap, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ehea_bmap, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %130

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = mul i64 %32, %33
  %35 = load i64, i64* @EHEA_SECTSIZE, align 8
  %36 = udiv i64 %34, %35
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = mul i64 %38, %39
  %41 = load i64, i64* @EHEA_SECTSIZE, align 8
  %42 = udiv i64 %40, %41
  %43 = add i64 %37, %42
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %125, %31
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %128

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @EHEA_TOP_INDEX_SHIFT, align 4
  %52 = call i32 @ehea_calc_index(i64 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* @EHEA_DIR_INDEX_SHIFT, align 4
  %55 = call i32 @ehea_calc_index(i64 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @EHEA_INDEX_MASK, align 8
  %58 = and i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %49
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ehea_bmap, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @ehea_init_bmap(%struct.TYPE_8__* %63, i32 %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %4, align 4
  br label %130

71:                                               ; preds = %62
  store i32 1, i32* %11, align 4
  %72 = load i64, i64* @EHEA_SECTSIZE, align 8
  %73 = load i64, i64* @ehea_mr_len, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* @ehea_mr_len, align 8
  br label %105

75:                                               ; preds = %49
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ehea_bmap, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %125

85:                                               ; preds = %75
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ehea_bmap, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %88, i64 %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %94, i64 %96
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = icmp ne %struct.TYPE_6__* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %85
  br label %125

101:                                              ; preds = %85
  store i32 0, i32* %11, align 4
  %102 = load i64, i64* @EHEA_SECTSIZE, align 8
  %103 = load i64, i64* @ehea_mr_len, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* @ehea_mr_len, align 8
  br label %105

105:                                              ; preds = %101, %71
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ehea_bmap, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %109, i64 %111
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %115, i64 %117
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %106, i32* %124, align 4
  br label %125

125:                                              ; preds = %105, %100, %84
  %126 = load i64, i64* %8, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %8, align 8
  br label %45

128:                                              ; preds = %45
  %129 = call i32 (...) @ehea_rebuild_busmap()
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %69, %27, %18
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @ehea_calc_index(i64, i32) #1

declare dso_local i32 @ehea_init_bmap(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ehea_rebuild_busmap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ncr53c8xx.c____m_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ncr53c8xx.c____m_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@MEMO_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MEMO_PAGE_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32)* @___m_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @___m_alloc(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @MEMO_SHIFT, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @MEMO_PAGE_ORDER, align 4
  %19 = shl i32 %17, %18
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %136

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %23

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %77, %32
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %82

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load i32, i32* @MEMO_PAGE_ORDER, align 4
  %47 = shl i32 %45, %46
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64 (%struct.TYPE_5__*)*, i64 (%struct.TYPE_5__*)** %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = call i64 %52(%struct.TYPE_5__* %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_6__*
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %49
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %75, align 8
  br label %76

76:                                               ; preds = %68, %49
  br label %82

77:                                               ; preds = %43
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %34

82:                                               ; preds = %76, %34
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = ptrtoint %struct.TYPE_6__* %88 to i64
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %133

92:                                               ; preds = %82
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %105, align 8
  br label %106

106:                                              ; preds = %110, %92
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = ashr i32 %113, 1
  store i32 %114, i32* %7, align 4
  %115 = load i64, i64* %9, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = inttoptr i64 %118 to %struct.TYPE_6__*
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store %struct.TYPE_6__* %119, %struct.TYPE_6__** %124, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %131, align 8
  br label %106

132:                                              ; preds = %106
  br label %133

133:                                              ; preds = %132, %82
  %134 = load i64, i64* %9, align 8
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** %3, align 8
  br label %136

136:                                              ; preds = %133, %21
  %137 = load i8*, i8** %3, align 8
  ret i8* %137
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

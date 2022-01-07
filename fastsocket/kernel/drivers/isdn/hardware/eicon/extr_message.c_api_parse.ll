; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_api_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_api_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*, %struct.TYPE_3__*)* @api_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @api_parse(i32* %0, i64 %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %106, %4
  %13 = load i32*, i32** %8, align 8
  %14 = load i64, i64* %10, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %109

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32* %24, i32** %28, align 8
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %100 [
    i32 98, label %34
    i32 119, label %37
    i32 100, label %40
    i32 115, label %43
  ]

34:                                               ; preds = %29
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %11, align 8
  br label %100

37:                                               ; preds = %29
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, 2
  store i64 %39, i64* %11, align 8
  br label %100

40:                                               ; preds = %29
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %11, align 8
  br label %100

43:                                               ; preds = %29
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 255
  br i1 %48, label %49, label %81

49:                                               ; preds = %43
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32* %55, i32** %53, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, 2
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = add nsw i32 %60, %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 3
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %11, align 8
  br label %99

81:                                               ; preds = %43
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %81, %49
  br label %100

100:                                              ; preds = %29, %99, %40, %37, %34
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ugt i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i64 1, i64* %5, align 8
  br label %118

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %10, align 8
  br label %12

109:                                              ; preds = %12
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %111 = icmp ne %struct.TYPE_3__* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %112, %109
  store i64 0, i64* %5, align 8
  br label %118

118:                                              ; preds = %117, %104
  %119 = load i64, i64* %5, align 8
  ret i64 %119
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

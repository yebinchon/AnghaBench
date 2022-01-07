; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_SuperTraceWriteVar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_SuperTraceWriteVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i64 (i32)* }
%struct.TYPE_10__ = type { %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_7__ = type { i64, i64* }
%struct.TYPE_8__ = type { i64, i64, i64 }

@MAN_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SuperTraceWriteVar(i8* %0, i64* %1, i8* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %14, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %97

22:                                               ; preds = %6
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %97

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %97

32:                                               ; preds = %27
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64 (i32)*, i64 (i32)** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 %37(i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %15, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = bitcast i32* %48 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %16, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %51 = bitcast %struct.TYPE_8__* %50 to i64*
  %52 = load i8*, i8** %10, align 8
  %53 = call i64 @SuperTraceCreateReadReq(i64* %51, i8* %52)
  store i64 %53, i64* %17, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %17, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @memcpy(i32* %58, i8* %59, i64 %60)
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %17, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %17, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, %65
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %77 = bitcast %struct.TYPE_8__* %76 to i64*
  %78 = call i32 @single_p(i64* %77, i64* %17, i32 0)
  %79 = load i32, i32* @MAN_WRITE, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load i64, i64* %17, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i64 %84, i64* %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %90 = bitcast %struct.TYPE_8__* %89 to i64*
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i64* %90, i64** %94, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  store i32 0, i32* %7, align 4
  br label %98

97:                                               ; preds = %27, %22, %6
  store i32 -1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %32
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i64 @SuperTraceCreateReadReq(i64*, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @single_p(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

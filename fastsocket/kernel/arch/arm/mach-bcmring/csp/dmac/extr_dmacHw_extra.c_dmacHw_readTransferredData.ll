; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_dmacHw_readTransferredData.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_dmacHw_readTransferredData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@dmacHw_TRANSFER_MODE_CONTINUOUS = common dso_local global i64 0, align 8
@dmacHw_DESC_FREE = common dso_local global i32 0, align 4
@dmacHw_REG_CTL_SRC_TR_WIDTH_MASK = common dso_local global i32 0, align 4
@dmacHw_REG_CTL_BLOCK_TS_MASK = common dso_local global i64 0, align 8
@pTail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmacHw_readTransferredData(i32 %0, %struct.TYPE_11__* %1, i8* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call %struct.TYPE_10__* @dmacHw_GET_DESC_RING(i8* %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %12, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @dmacHw_TRANSFER_MODE_CONTINUOUS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %5
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @dmacHw_DESC_FREE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %22
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = icmp eq %struct.TYPE_9__* %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32, %22
  %41 = load i8**, i8*** %10, align 8
  store i8* null, i8** %41, align 8
  %42 = load i64*, i64** %11, align 8
  store i64 0, i64* %42, align 8
  store i32 0, i32* %6, align 4
  br label %94

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %5
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8**, i8*** %10, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @DmaIsFlowController(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %44
  store i64 0, i64* %13, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @dmacHw_REG_CTL_SRC_TR_WIDTH_MASK, align 4
  %63 = and i32 %61, %62
  switch i32 %63, label %68 [
    i32 128, label %64
    i32 131, label %65
    i32 130, label %66
    i32 129, label %67
  ]

64:                                               ; preds = %55
  store i64 1, i64* %13, align 8
  br label %70

65:                                               ; preds = %55
  store i64 2, i64* %13, align 8
  br label %70

66:                                               ; preds = %55
  store i64 4, i64* %13, align 8
  br label %70

67:                                               ; preds = %55
  store i64 8, i64* %13, align 8
  br label %70

68:                                               ; preds = %55
  %69 = call i32 @dmacHw_ASSERT(i32 0)
  br label %70

70:                                               ; preds = %68, %67, %66, %65, %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @dmacHw_REG_CTL_BLOCK_TS_MASK, align 8
  %79 = and i64 %77, %78
  %80 = load i64, i64* %13, align 8
  %81 = mul i64 %79, %80
  %82 = load i64*, i64** %11, align 8
  store i64 %81, i64* %82, align 8
  br label %90

83:                                               ; preds = %44
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %11, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %70
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %92 = load i32, i32* @pTail, align 4
  %93 = call i32 @dmacHw_NEXT_DESC(%struct.TYPE_10__* %91, i32 %92)
  store i32 1, i32* %6, align 4
  br label %94

94:                                               ; preds = %90, %40
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_10__* @dmacHw_GET_DESC_RING(i8*) #1

declare dso_local i64 @DmaIsFlowController(i8*) #1

declare dso_local i32 @dmacHw_ASSERT(i32) #1

declare dso_local i32 @dmacHw_NEXT_DESC(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw.c_dmacHw_initDescriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw.c_dmacHw_initDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@dmacHw_DESC_INIT = common dso_local global i32 0, align 4
@dmacHw_DESC_FREE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmacHw_initDescriptor(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @dmacHw_ASSERT(i32 0)
  store i32 -1, i32* %5, align 4
  br label %115

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @dmacHw_descriptorLen(i32 %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %115

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = call %struct.TYPE_7__* @dmacHw_GET_DESC_RING(i8* %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %11, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = ptrtoint %struct.TYPE_7__* %28 to i32
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 48
  %32 = inttoptr i64 %31 to %struct.TYPE_6__*
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 6
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %43, align 8
  %44 = load i32, i32* @dmacHw_DESC_INIT, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %12, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %85, %25
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = bitcast %struct.TYPE_6__* %62 to i8*
  %64 = call i32 @memset(i8* %63, i32 0, i32 16)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 1
  %67 = ptrtoint %struct.TYPE_6__* %66 to i32
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %67, %70
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 1
  %76 = ptrtoint %struct.TYPE_6__* %75 to i32
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i8*, i8** @dmacHw_DESC_FREE, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 1
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %12, align 8
  br label %85

85:                                               ; preds = %61
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %56

88:                                               ; preds = %56
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %90 = bitcast %struct.TYPE_6__* %89 to i8*
  %91 = call i32 @memset(i8* %90, i32 0, i32 16)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = ptrtoint %struct.TYPE_6__* %94 to i32
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %95, %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = ptrtoint %struct.TYPE_6__* %104 to i32
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i8*, i8** @dmacHw_DESC_FREE, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %88, %24, %17
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @dmacHw_ASSERT(i32) #1

declare dso_local i32 @dmacHw_descriptorLen(i32) #1

declare dso_local %struct.TYPE_7__* @dmacHw_GET_DESC_RING(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

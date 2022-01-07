; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_debug.c_debug_format_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_debug.c_debug_format_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i32, %struct.debug_view*, %struct.TYPE_13__* }
%struct.debug_view = type { i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, i32)*, i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, %struct.TYPE_14__*, i64)*, i64 (%struct.TYPE_13__*, %struct.debug_view*, i64)* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64** }

@DEBUG_PROLOG_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @debug_format_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_format_entry(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.debug_view*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 4
  %12 = load %struct.debug_view*, %struct.debug_view** %11, align 8
  store %struct.debug_view* %12, %struct.debug_view** %4, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DEBUG_PROLOG_ENTRY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %20 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %19, i32 0, i32 2
  %21 = load i64 (%struct.TYPE_13__*, %struct.debug_view*, i64)*, i64 (%struct.TYPE_13__*, %struct.debug_view*, i64)** %20, align 8
  %22 = icmp ne i64 (%struct.TYPE_13__*, %struct.debug_view*, i64)* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %25 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %24, i32 0, i32 2
  %26 = load i64 (%struct.TYPE_13__*, %struct.debug_view*, i64)*, i64 (%struct.TYPE_13__*, %struct.debug_view*, i64)** %25, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i64 %26(%struct.TYPE_13__* %27, %struct.debug_view* %28, i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %23, %18
  br label %114

36:                                               ; preds = %1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64**, i64*** %38, align 8
  %40 = icmp ne i64** %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %114

42:                                               ; preds = %36
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64**, i64*** %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64*, i64** %45, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = bitcast i8* %61 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %5, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %42
  br label %114

69:                                               ; preds = %42
  %70 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %71 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %70, i32 0, i32 1
  %72 = load i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, %struct.TYPE_14__*, i64)*, i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, %struct.TYPE_14__*, i64)** %71, align 8
  %73 = icmp ne i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, %struct.TYPE_14__*, i64)* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %76 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %75, i32 0, i32 1
  %77 = load i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, %struct.TYPE_14__*, i64)*, i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, %struct.TYPE_14__*, i64)** %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %86, %87
  %89 = call i64 %77(%struct.TYPE_13__* %78, %struct.debug_view* %79, i64 %82, %struct.TYPE_14__* %83, i64 %88)
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %74, %69
  %93 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %94 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %93, i32 0, i32 0
  %95 = load i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, i32)*, i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, i32)** %94, align 8
  %96 = icmp ne i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, i32)* %95, null
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %99 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %98, i32 0, i32 0
  %100 = load i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, i32)*, i64 (%struct.TYPE_13__*, %struct.debug_view*, i64, i32)** %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %105, %106
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = call i32 @DEBUG_DATA(%struct.TYPE_14__* %108)
  %110 = call i64 %100(%struct.TYPE_13__* %101, %struct.debug_view* %102, i64 %107, i32 %109)
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %97, %92
  br label %114

114:                                              ; preds = %113, %68, %41, %35
  %115 = load i64, i64* %6, align 8
  %116 = trunc i64 %115 to i32
  ret i32 %116
}

declare dso_local i32 @DEBUG_DATA(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

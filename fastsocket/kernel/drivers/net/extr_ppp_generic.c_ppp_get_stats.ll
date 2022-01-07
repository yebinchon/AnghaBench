; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { %struct.TYPE_7__*, %struct.slcompress* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.slcompress = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.ppp_stats = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*, %struct.ppp_stats*)* @ppp_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_get_stats(%struct.ppp* %0, %struct.ppp_stats* %1) #0 {
  %3 = alloca %struct.ppp*, align 8
  %4 = alloca %struct.ppp_stats*, align 8
  %5 = alloca %struct.slcompress*, align 8
  store %struct.ppp* %0, %struct.ppp** %3, align 8
  store %struct.ppp_stats* %1, %struct.ppp_stats** %4, align 8
  %6 = load %struct.ppp*, %struct.ppp** %3, align 8
  %7 = getelementptr inbounds %struct.ppp, %struct.ppp* %6, i32 0, i32 1
  %8 = load %struct.slcompress*, %struct.slcompress** %7, align 8
  store %struct.slcompress* %8, %struct.slcompress** %5, align 8
  %9 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %10 = call i32 @memset(%struct.ppp_stats* %9, i32 0, i32 64)
  %11 = load %struct.ppp*, %struct.ppp** %3, align 8
  %12 = getelementptr inbounds %struct.ppp, %struct.ppp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %18 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 4
  %20 = load %struct.ppp*, %struct.ppp** %3, align 8
  %21 = getelementptr inbounds %struct.ppp, %struct.ppp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %27 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ppp*, %struct.ppp** %3, align 8
  %30 = getelementptr inbounds %struct.ppp, %struct.ppp* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %36 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load %struct.ppp*, %struct.ppp** %3, align 8
  %39 = getelementptr inbounds %struct.ppp, %struct.ppp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %45 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.ppp*, %struct.ppp** %3, align 8
  %48 = getelementptr inbounds %struct.ppp, %struct.ppp* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %54 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.ppp*, %struct.ppp** %3, align 8
  %57 = getelementptr inbounds %struct.ppp, %struct.ppp* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %63 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %66 = icmp ne %struct.slcompress* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %2
  br label %121

68:                                               ; preds = %2
  %69 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %70 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %73 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %77 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 7
  store i64 %75, i64* %78, align 8
  %79 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %80 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %83 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 6
  store i64 %81, i64* %84, align 8
  %85 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %86 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %89 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 5
  store i32 %87, i32* %90, align 4
  %91 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %92 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %95 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %98 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %101 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %104 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %107 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %110 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %113 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %116 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %119 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  br label %121

121:                                              ; preds = %68, %67
  ret void
}

declare dso_local i32 @memset(%struct.ppp_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

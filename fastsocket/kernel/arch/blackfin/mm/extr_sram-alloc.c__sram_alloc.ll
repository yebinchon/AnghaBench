; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_sram-alloc.c__sram_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_sram-alloc.c__sram_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sram_piece = type { i64, i64, %struct.sram_piece*, i32 }

@sram_piece_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, %struct.sram_piece*, %struct.sram_piece*)* @_sram_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_sram_alloc(i64 %0, %struct.sram_piece* %1, %struct.sram_piece* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sram_piece*, align 8
  %7 = alloca %struct.sram_piece*, align 8
  %8 = alloca %struct.sram_piece*, align 8
  %9 = alloca %struct.sram_piece*, align 8
  %10 = alloca %struct.sram_piece*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.sram_piece* %1, %struct.sram_piece** %6, align 8
  store %struct.sram_piece* %2, %struct.sram_piece** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ule i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.sram_piece*, %struct.sram_piece** %6, align 8
  %15 = icmp ne %struct.sram_piece* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.sram_piece*, %struct.sram_piece** %7, align 8
  %18 = icmp ne %struct.sram_piece* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %3
  store i8* null, i8** %4, align 8
  br label %126

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 3
  %23 = and i64 %22, -4
  store i64 %23, i64* %5, align 8
  %24 = load %struct.sram_piece*, %struct.sram_piece** %6, align 8
  %25 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %24, i32 0, i32 2
  %26 = load %struct.sram_piece*, %struct.sram_piece** %25, align 8
  store %struct.sram_piece* %26, %struct.sram_piece** %8, align 8
  %27 = load %struct.sram_piece*, %struct.sram_piece** %6, align 8
  store %struct.sram_piece* %27, %struct.sram_piece** %9, align 8
  br label %28

28:                                               ; preds = %39, %20
  %29 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %30 = icmp ne %struct.sram_piece* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %34 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %32, %35
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i1 [ false, %28 ], [ %36, %31 ]
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  store %struct.sram_piece* %40, %struct.sram_piece** %9, align 8
  %41 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %42 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %41, i32 0, i32 2
  %43 = load %struct.sram_piece*, %struct.sram_piece** %42, align 8
  store %struct.sram_piece* %43, %struct.sram_piece** %8, align 8
  br label %28

44:                                               ; preds = %37
  %45 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %46 = icmp ne %struct.sram_piece* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i8* null, i8** %4, align 8
  br label %126

48:                                               ; preds = %44
  %49 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %50 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %56 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %55, i32 0, i32 2
  %57 = load %struct.sram_piece*, %struct.sram_piece** %56, align 8
  %58 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %59 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %58, i32 0, i32 2
  store %struct.sram_piece* %57, %struct.sram_piece** %59, align 8
  %60 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  store %struct.sram_piece* %60, %struct.sram_piece** %10, align 8
  br label %87

61:                                               ; preds = %48
  %62 = load i32, i32* @sram_piece_cache, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.sram_piece* @kmem_cache_alloc(i32 %62, i32 %63)
  store %struct.sram_piece* %64, %struct.sram_piece** %10, align 8
  %65 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %66 = icmp ne %struct.sram_piece* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  store i8* null, i8** %4, align 8
  br label %126

68:                                               ; preds = %61
  %69 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %70 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %73 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %76 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %79 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %84 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %68, %54
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %92 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.sram_piece*, %struct.sram_piece** %7, align 8
  %94 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %93, i32 0, i32 2
  %95 = load %struct.sram_piece*, %struct.sram_piece** %94, align 8
  store %struct.sram_piece* %95, %struct.sram_piece** %8, align 8
  %96 = load %struct.sram_piece*, %struct.sram_piece** %7, align 8
  store %struct.sram_piece* %96, %struct.sram_piece** %9, align 8
  br label %97

97:                                               ; preds = %110, %87
  %98 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %99 = icmp ne %struct.sram_piece* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %102 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %105 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br label %108

108:                                              ; preds = %100, %97
  %109 = phi i1 [ false, %97 ], [ %107, %100 ]
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  %111 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  store %struct.sram_piece* %111, %struct.sram_piece** %9, align 8
  %112 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %113 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %112, i32 0, i32 2
  %114 = load %struct.sram_piece*, %struct.sram_piece** %113, align 8
  store %struct.sram_piece* %114, %struct.sram_piece** %8, align 8
  br label %97

115:                                              ; preds = %108
  %116 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %117 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %118 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %117, i32 0, i32 2
  store %struct.sram_piece* %116, %struct.sram_piece** %118, align 8
  %119 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %120 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %121 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %120, i32 0, i32 2
  store %struct.sram_piece* %119, %struct.sram_piece** %121, align 8
  %122 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %123 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i8*
  store i8* %125, i8** %4, align 8
  br label %126

126:                                              ; preds = %115, %67, %47, %19
  %127 = load i8*, i8** %4, align 8
  ret i8* %127
}

declare dso_local %struct.sram_piece* @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

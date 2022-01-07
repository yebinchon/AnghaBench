; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_sram-alloc.c__sram_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_sram-alloc.c__sram_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_piece = type { i8*, i32, %struct.sram_piece*, i64 }

@sram_piece_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sram_piece*, %struct.sram_piece*)* @_sram_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sram_free(i8* %0, %struct.sram_piece* %1, %struct.sram_piece* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sram_piece*, align 8
  %7 = alloca %struct.sram_piece*, align 8
  %8 = alloca %struct.sram_piece*, align 8
  %9 = alloca %struct.sram_piece*, align 8
  %10 = alloca %struct.sram_piece*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sram_piece* %1, %struct.sram_piece** %6, align 8
  store %struct.sram_piece* %2, %struct.sram_piece** %7, align 8
  %11 = load %struct.sram_piece*, %struct.sram_piece** %6, align 8
  %12 = icmp ne %struct.sram_piece* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.sram_piece*, %struct.sram_piece** %7, align 8
  %15 = icmp ne %struct.sram_piece* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %142

17:                                               ; preds = %13
  %18 = load %struct.sram_piece*, %struct.sram_piece** %7, align 8
  %19 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %18, i32 0, i32 2
  %20 = load %struct.sram_piece*, %struct.sram_piece** %19, align 8
  store %struct.sram_piece* %20, %struct.sram_piece** %8, align 8
  %21 = load %struct.sram_piece*, %struct.sram_piece** %7, align 8
  store %struct.sram_piece* %21, %struct.sram_piece** %9, align 8
  br label %22

22:                                               ; preds = %33, %17
  %23 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %24 = icmp ne %struct.sram_piece* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %27 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %28, %29
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  store %struct.sram_piece* %34, %struct.sram_piece** %9, align 8
  %35 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %36 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %35, i32 0, i32 2
  %37 = load %struct.sram_piece*, %struct.sram_piece** %36, align 8
  store %struct.sram_piece* %37, %struct.sram_piece** %8, align 8
  br label %22

38:                                               ; preds = %31
  %39 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %40 = icmp ne %struct.sram_piece* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %142

42:                                               ; preds = %38
  %43 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %44 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %43, i32 0, i32 2
  %45 = load %struct.sram_piece*, %struct.sram_piece** %44, align 8
  %46 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %47 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %46, i32 0, i32 2
  store %struct.sram_piece* %45, %struct.sram_piece** %47, align 8
  %48 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  store %struct.sram_piece* %48, %struct.sram_piece** %10, align 8
  %49 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %50 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.sram_piece*, %struct.sram_piece** %6, align 8
  %52 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %51, i32 0, i32 2
  %53 = load %struct.sram_piece*, %struct.sram_piece** %52, align 8
  store %struct.sram_piece* %53, %struct.sram_piece** %8, align 8
  %54 = load %struct.sram_piece*, %struct.sram_piece** %6, align 8
  store %struct.sram_piece* %54, %struct.sram_piece** %9, align 8
  br label %55

55:                                               ; preds = %66, %42
  %56 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %57 = icmp ne %struct.sram_piece* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %61 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ugt i8* %59, %62
  br label %64

64:                                               ; preds = %58, %55
  %65 = phi i1 [ false, %55 ], [ %63, %58 ]
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  store %struct.sram_piece* %67, %struct.sram_piece** %9, align 8
  %68 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %69 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %68, i32 0, i32 2
  %70 = load %struct.sram_piece*, %struct.sram_piece** %69, align 8
  store %struct.sram_piece* %70, %struct.sram_piece** %8, align 8
  br label %55

71:                                               ; preds = %64
  %72 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %73 = load %struct.sram_piece*, %struct.sram_piece** %6, align 8
  %74 = icmp ne %struct.sram_piece* %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71
  %76 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %77 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %80 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr i8, i8* %78, i64 %82
  %84 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %85 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = icmp eq i8* %83, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %75
  %89 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %90 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %93 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @sram_piece_cache, align 4
  %97 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %98 = call i32 @kmem_cache_free(i32 %96, %struct.sram_piece* %97)
  br label %109

99:                                               ; preds = %75, %71
  %100 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %101 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %100, i32 0, i32 2
  %102 = load %struct.sram_piece*, %struct.sram_piece** %101, align 8
  %103 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %104 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %103, i32 0, i32 2
  store %struct.sram_piece* %102, %struct.sram_piece** %104, align 8
  %105 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  %106 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %107 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %106, i32 0, i32 2
  store %struct.sram_piece* %105, %struct.sram_piece** %107, align 8
  %108 = load %struct.sram_piece*, %struct.sram_piece** %10, align 8
  store %struct.sram_piece* %108, %struct.sram_piece** %9, align 8
  br label %109

109:                                              ; preds = %99, %88
  %110 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %111 = icmp ne %struct.sram_piece* %110, null
  br i1 %111, label %112, label %141

112:                                              ; preds = %109
  %113 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %114 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %117 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr i8, i8* %115, i64 %119
  %121 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %122 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp eq i8* %120, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %112
  %126 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %127 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %130 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %134 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %133, i32 0, i32 2
  %135 = load %struct.sram_piece*, %struct.sram_piece** %134, align 8
  %136 = load %struct.sram_piece*, %struct.sram_piece** %9, align 8
  %137 = getelementptr inbounds %struct.sram_piece, %struct.sram_piece* %136, i32 0, i32 2
  store %struct.sram_piece* %135, %struct.sram_piece** %137, align 8
  %138 = load i32, i32* @sram_piece_cache, align 4
  %139 = load %struct.sram_piece*, %struct.sram_piece** %8, align 8
  %140 = call i32 @kmem_cache_free(i32 %138, %struct.sram_piece* %139)
  br label %141

141:                                              ; preds = %125, %112, %109
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %41, %16
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @kmem_cache_free(i32, %struct.sram_piece*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

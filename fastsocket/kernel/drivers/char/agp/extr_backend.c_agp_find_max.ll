; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_backend.c_agp_find_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_backend.c_agp_find_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@totalram_pages = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@maxes_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @agp_find_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_find_max() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @totalram_pages, align 4
  %5 = load i32, i32* @PAGE_SHIFT, align 4
  %6 = sub nsw i32 20, %5
  %7 = ashr i32 %4, %6
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %1, align 8
  store i64 1, i64* %2, align 8
  br label %9

9:                                                ; preds = %22, %0
  %10 = load i64, i64* %1, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @maxes_table, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i64, i64* %2, align 8
  %19 = icmp slt i64 %18, 8
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi i1 [ false, %9 ], [ %19, %17 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i64, i64* %2, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %2, align 8
  br label %9

25:                                               ; preds = %20
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @maxes_table, align 8
  %27 = load i64, i64* %2, align 8
  %28 = sub nsw i64 %27, 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @maxes_table, align 8
  %34 = load i64, i64* %2, align 8
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %32, %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @maxes_table, align 8
  %41 = load i64, i64* %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @maxes_table, align 8
  %46 = load i64, i64* %2, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %44, %50
  %52 = mul nsw i64 %39, %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @maxes_table, align 8
  %54 = load i64, i64* %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @maxes_table, align 8
  %59 = load i64, i64* %2, align 8
  %60 = sub nsw i64 %59, 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %57, %63
  %65 = sdiv i64 %52, %64
  %66 = add nsw i64 %31, %65
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %3, align 8
  %68 = load i32, i32* @PAGE_SHIFT, align 4
  %69 = sub nsw i32 20, %68
  %70 = zext i32 %69 to i64
  %71 = shl i64 %67, %70
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* %3, align 8
  %73 = trunc i64 %72 to i32
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

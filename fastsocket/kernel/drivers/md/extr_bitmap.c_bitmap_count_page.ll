; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_count_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_count_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_counts = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_COUNTER_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap_counts*, i64, i32)* @bitmap_count_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_count_page(%struct.bitmap_counts* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.bitmap_counts*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bitmap_counts* %0, %struct.bitmap_counts** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.bitmap_counts*, %struct.bitmap_counts** %4, align 8
  %11 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = lshr i64 %9, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @PAGE_COUNTER_SHIFT, align 8
  %16 = lshr i64 %14, %15
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.bitmap_counts*, %struct.bitmap_counts** %4, align 8
  %19 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %17
  store i32 %25, i32* %23, align 4
  %26 = load %struct.bitmap_counts*, %struct.bitmap_counts** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @bitmap_checkfree(%struct.bitmap_counts* %26, i64 %27)
  ret void
}

declare dso_local i32 @bitmap_checkfree(%struct.bitmap_counts*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

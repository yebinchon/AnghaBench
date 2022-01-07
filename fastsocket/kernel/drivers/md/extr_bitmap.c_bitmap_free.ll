; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { %struct.bitmap*, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.bitmap_page* }
%struct.bitmap_page = type { %struct.bitmap_page*, i32, %struct.TYPE_2__, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap*)* @bitmap_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_free(%struct.bitmap* %0) #0 {
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_page*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %2, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %7 = icmp ne %struct.bitmap* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %69

9:                                                ; preds = %1
  %10 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %11 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %14 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %13, i32 0, i32 4
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @wait_event(i32 %12, i32 %17)
  %19 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %20 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %19, i32 0, i32 3
  %21 = call i32 @bitmap_file_unmap(i32* %20)
  %22 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %23 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.bitmap_page*, %struct.bitmap_page** %24, align 8
  store %struct.bitmap_page* %25, %struct.bitmap_page** %5, align 8
  %26 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  %30 = load %struct.bitmap_page*, %struct.bitmap_page** %5, align 8
  %31 = icmp ne %struct.bitmap_page* %30, null
  br i1 %31, label %32, label %63

32:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load %struct.bitmap_page*, %struct.bitmap_page** %5, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %38, i64 %39
  %41 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %40, i32 0, i32 0
  %42 = load %struct.bitmap_page*, %struct.bitmap_page** %41, align 8
  %43 = icmp ne %struct.bitmap_page* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.bitmap_page*, %struct.bitmap_page** %5, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %45, i64 %46
  %48 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load %struct.bitmap_page*, %struct.bitmap_page** %5, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %52, i64 %53
  %55 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %54, i32 0, i32 0
  %56 = load %struct.bitmap_page*, %struct.bitmap_page** %55, align 8
  %57 = call i32 @kfree(%struct.bitmap_page* %56)
  br label %58

58:                                               ; preds = %51, %44, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %33

62:                                               ; preds = %33
  br label %63

63:                                               ; preds = %62, %9
  %64 = load %struct.bitmap_page*, %struct.bitmap_page** %5, align 8
  %65 = call i32 @kfree(%struct.bitmap_page* %64)
  %66 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %67 = bitcast %struct.bitmap* %66 to %struct.bitmap_page*
  %68 = call i32 @kfree(%struct.bitmap_page* %67)
  br label %69

69:                                               ; preds = %63, %8
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @bitmap_file_unmap(i32*) #1

declare dso_local i32 @kfree(%struct.bitmap_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

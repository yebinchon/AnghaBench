; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_unplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32* }

@BITMAP_STALE = common dso_local global i32 0, align 4
@BITMAP_PAGE_DIRTY = common dso_local global i32 0, align 4
@BITMAP_PAGE_NEEDWRITE = common dso_local global i32 0, align 4
@BITMAP_PAGE_PENDING = common dso_local global i32 0, align 4
@BITMAP_WRITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_unplug(%struct.bitmap* %0) #0 {
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bitmap* %0, %struct.bitmap** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %8 = icmp ne %struct.bitmap* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %11 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i32, i32* @BITMAP_STALE, align 4
  %17 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %18 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %9, %1
  br label %107

22:                                               ; preds = %15
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %70, %22
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %26 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %23
  %31 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %32 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %107

37:                                               ; preds = %30
  %38 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i32, i32* @BITMAP_PAGE_DIRTY, align 4
  %41 = call i32 @test_and_clear_page_attr(%struct.bitmap* %38, i64 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i32, i32* @BITMAP_PAGE_NEEDWRITE, align 4
  %45 = call i32 @test_and_clear_page_attr(%struct.bitmap* %42, i64 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %48, %37
  %52 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i32, i32* @BITMAP_PAGE_PENDING, align 4
  %55 = call i32 @clear_page_attr(%struct.bitmap* %52, i64 %53, i32 %54)
  %56 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %57 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %58 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @write_page(%struct.bitmap* %56, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %51, %48
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %3, align 8
  br label %23

73:                                               ; preds = %23
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %78 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %84 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %87 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %86, i32 0, i32 2
  %88 = call i64 @atomic_read(i32* %87)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @wait_event(i32 %85, i32 %90)
  br label %97

92:                                               ; preds = %76
  %93 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %94 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @md_super_wait(i32 %95)
  br label %97

97:                                               ; preds = %92, %82
  br label %98

98:                                               ; preds = %97, %73
  %99 = load i32, i32* @BITMAP_WRITE_ERROR, align 4
  %100 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %101 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %100, i32 0, i32 0
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %106 = call i32 @bitmap_file_kick(%struct.bitmap* %105)
  br label %107

107:                                              ; preds = %21, %36, %104, %98
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_page_attr(%struct.bitmap*, i64, i32) #1

declare dso_local i32 @clear_page_attr(%struct.bitmap*, i64, i32) #1

declare dso_local i32 @write_page(%struct.bitmap*, i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @md_super_wait(i32) #1

declare dso_local i32 @bitmap_file_kick(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

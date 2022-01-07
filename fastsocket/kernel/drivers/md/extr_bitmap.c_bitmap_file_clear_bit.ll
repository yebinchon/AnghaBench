; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_file_clear_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_file_clear_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.page = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@BITMAP_HOSTENDIAN = common dso_local global i32 0, align 4
@BITMAP_PAGE_NEEDWRITE = common dso_local global i32 0, align 4
@BITMAP_PAGE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap*, i64)* @bitmap_file_clear_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_file_clear_bit(%struct.bitmap* %0, i64 %1) #0 {
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %11 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = lshr i64 %9, %13
  store i64 %14, i64* %8, align 8
  %15 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %16 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %15, i32 0, i32 2
  %17 = load i64, i64* %8, align 8
  %18 = call %struct.page* @filemap_get_page(i32* %16, i64 %17)
  store %struct.page* %18, %struct.page** %6, align 8
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %63

22:                                               ; preds = %2
  %23 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %24 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %23, i32 0, i32 2
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @file_page_offset(i32* %24, i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = load i32, i32* @KM_USER0, align 4
  %29 = call i8* @kmap_atomic(%struct.page* %27, i32 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i32, i32* @BITMAP_HOSTENDIAN, align 4
  %31 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %32 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i64, i64* %5, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @clear_bit(i64 %36, i8* %37)
  br label %43

39:                                               ; preds = %22
  %40 = load i64, i64* %5, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @clear_bit_le(i64 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @KM_USER0, align 4
  %46 = call i32 @kunmap_atomic(i8* %44, i32 %45)
  %47 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BITMAP_PAGE_NEEDWRITE, align 4
  %52 = call i32 @test_page_attr(%struct.bitmap* %47, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %43
  %55 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %56 = load %struct.page*, %struct.page** %6, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BITMAP_PAGE_PENDING, align 4
  %60 = call i32 @set_page_attr(%struct.bitmap* %55, i32 %58, i32 %59)
  %61 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %62 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %21, %54, %43
  ret void
}

declare dso_local %struct.page* @filemap_get_page(i32*, i64) #1

declare dso_local i64 @file_page_offset(i32*, i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i64, i8*) #1

declare dso_local i32 @clear_bit_le(i64, i8*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @test_page_attr(%struct.bitmap*, i32, i32) #1

declare dso_local i32 @set_page_attr(%struct.bitmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

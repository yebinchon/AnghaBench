; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c__block2mtd_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c__block2mtd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block2mtd_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block2mtd_dev*, i32*, i32, i64, i64*)* @_block2mtd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_block2mtd_write(%struct.block2mtd_dev* %0, i32* %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.block2mtd_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.block2mtd_dev* %0, %struct.block2mtd_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %18 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.address_space*, %struct.address_space** %22, align 8
  store %struct.address_space* %23, %struct.address_space** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %15, align 4
  %31 = load i64*, i64** %11, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i64*, i64** %11, align 8
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %33, %5
  br label %36

36:                                               ; preds = %110, %35
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %117

39:                                               ; preds = %36
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %41, %42
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ugt i64 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %16, align 4
  br label %54

51:                                               ; preds = %39
  %52 = load i64, i64* %10, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %55, %57
  store i64 %58, i64* %10, align 8
  %59 = load %struct.address_space*, %struct.address_space** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.page* @page_read(%struct.address_space* %59, i32 %60)
  store %struct.page* %61, %struct.page** %12, align 8
  %62 = load %struct.page*, %struct.page** %12, align 8
  %63 = icmp ne %struct.page* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %118

67:                                               ; preds = %54
  %68 = load %struct.page*, %struct.page** %12, align 8
  %69 = call i64 @IS_ERR(%struct.page* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.page*, %struct.page** %12, align 8
  %73 = call i32 @PTR_ERR(%struct.page* %72)
  store i32 %73, i32* %6, align 4
  br label %118

74:                                               ; preds = %67
  %75 = load %struct.page*, %struct.page** %12, align 8
  %76 = call i64 @page_address(%struct.page* %75)
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i64 @memcmp(i64 %79, i32* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %74
  %85 = load %struct.page*, %struct.page** %12, align 8
  %86 = call i32 @lock_page(%struct.page* %85)
  %87 = load %struct.page*, %struct.page** %12, align 8
  %88 = call i64 @page_address(%struct.page* %87)
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @memcpy(i64 %91, i32* %92, i32 %93)
  %95 = load %struct.page*, %struct.page** %12, align 8
  %96 = call i32 @set_page_dirty(%struct.page* %95)
  %97 = load %struct.page*, %struct.page** %12, align 8
  %98 = call i32 @unlock_page(%struct.page* %97)
  br label %99

99:                                               ; preds = %84, %74
  %100 = load %struct.page*, %struct.page** %12, align 8
  %101 = call i32 @page_cache_release(%struct.page* %100)
  %102 = load i64*, i64** %11, align 8
  %103 = icmp ne i64* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64*, i64** %11, align 8
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, %106
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %104, %99
  %111 = load i32, i32* %16, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %8, align 8
  store i32 0, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %36

117:                                              ; preds = %36
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %71, %64
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.page* @page_read(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @memcmp(i64, i32*, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

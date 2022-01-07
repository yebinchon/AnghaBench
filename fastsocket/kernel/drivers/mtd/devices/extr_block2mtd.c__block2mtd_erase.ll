; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c__block2mtd_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c__block2mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block2mtd_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block2mtd_dev*, i64, i64)* @_block2mtd_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_block2mtd_erase(%struct.block2mtd_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.block2mtd_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store %struct.block2mtd_dev* %0, %struct.block2mtd_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %5, align 8
  %15 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %79, %3
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %29
  %33 = load %struct.address_space*, %struct.address_space** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.page* @page_read(%struct.address_space* %33, i32 %34)
  store %struct.page* %35, %struct.page** %9, align 8
  %36 = load %struct.page*, %struct.page** %9, align 8
  %37 = icmp ne %struct.page* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %87

41:                                               ; preds = %32
  %42 = load %struct.page*, %struct.page** %9, align 8
  %43 = call i64 @IS_ERR(%struct.page* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = call i32 @PTR_ERR(%struct.page* %46)
  store i32 %47, i32* %4, align 4
  br label %87

48:                                               ; preds = %41
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = call i64* @page_address(%struct.page* %49)
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64* %53, i64** %13, align 8
  %54 = load %struct.page*, %struct.page** %9, align 8
  %55 = call i64* @page_address(%struct.page* %54)
  store i64* %55, i64** %12, align 8
  br label %56

56:                                               ; preds = %76, %48
  %57 = load i64*, i64** %12, align 8
  %58 = load i64*, i64** %13, align 8
  %59 = icmp ult i64* %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load i64*, i64** %12, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, -1
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load %struct.page*, %struct.page** %9, align 8
  %66 = call i32 @lock_page(%struct.page* %65)
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = call i64* @page_address(%struct.page* %67)
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = call i32 @memset(i64* %68, i32 255, i32 %69)
  %71 = load %struct.page*, %struct.page** %9, align 8
  %72 = call i32 @set_page_dirty(%struct.page* %71)
  %73 = load %struct.page*, %struct.page** %9, align 8
  %74 = call i32 @unlock_page(%struct.page* %73)
  br label %79

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75
  %77 = load i64*, i64** %12, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %12, align 8
  br label %56

79:                                               ; preds = %64, %56
  %80 = load %struct.page*, %struct.page** %9, align 8
  %81 = call i32 @page_cache_release(%struct.page* %80)
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %29

86:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %45, %38
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.page* @page_read(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64* @page_address(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

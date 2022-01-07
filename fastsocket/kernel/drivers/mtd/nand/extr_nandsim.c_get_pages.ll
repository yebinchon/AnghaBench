; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_get_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nandsim = type { i64, %struct.page** }
%struct.page = type { i32 }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@NS_MAX_HELD_PAGES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nandsim*, %struct.file*, i64, i64)* @get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pages(%struct.nandsim* %0, %struct.file* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nandsim*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.address_space*, align 8
  store %struct.nandsim* %0, %struct.nandsim** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.address_space*, %struct.address_space** %16, align 8
  store %struct.address_space* %17, %struct.address_space** %14, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 1
  %25 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %11, align 8
  %29 = sub nsw i64 %27, %28
  %30 = add nsw i64 %29, 1
  %31 = load i64, i64* @NS_MAX_HELD_PAGES, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %91

36:                                               ; preds = %4
  %37 = load %struct.nandsim*, %struct.nandsim** %6, align 8
  %38 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %11, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %87, %36
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %40
  %45 = load %struct.address_space*, %struct.address_space** %14, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call %struct.page* @find_get_page(%struct.address_space* %45, i64 %46)
  store %struct.page* %47, %struct.page** %13, align 8
  %48 = load %struct.page*, %struct.page** %13, align 8
  %49 = icmp eq %struct.page* %48, null
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load %struct.address_space*, %struct.address_space** %14, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* @GFP_NOFS, align 4
  %54 = call %struct.page* @find_or_create_page(%struct.address_space* %51, i64 %52, i32 %53)
  store %struct.page* %54, %struct.page** %13, align 8
  %55 = load %struct.page*, %struct.page** %13, align 8
  %56 = icmp eq %struct.page* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.address_space*, %struct.address_space** %14, align 8
  %59 = getelementptr inbounds %struct.address_space, %struct.address_space* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @write_inode_now(i32 %60, i32 1)
  %62 = load %struct.address_space*, %struct.address_space** %14, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* @GFP_NOFS, align 4
  %65 = call %struct.page* @find_or_create_page(%struct.address_space* %62, i64 %63, i32 %64)
  store %struct.page* %65, %struct.page** %13, align 8
  br label %66

66:                                               ; preds = %57, %50
  %67 = load %struct.page*, %struct.page** %13, align 8
  %68 = icmp eq %struct.page* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.nandsim*, %struct.nandsim** %6, align 8
  %71 = call i32 @put_pages(%struct.nandsim* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %91

74:                                               ; preds = %66
  %75 = load %struct.page*, %struct.page** %13, align 8
  %76 = call i32 @unlock_page(%struct.page* %75)
  br label %77

77:                                               ; preds = %74, %44
  %78 = load %struct.page*, %struct.page** %13, align 8
  %79 = load %struct.nandsim*, %struct.nandsim** %6, align 8
  %80 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %79, i32 0, i32 1
  %81 = load %struct.page**, %struct.page*** %80, align 8
  %82 = load %struct.nandsim*, %struct.nandsim** %6, align 8
  %83 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = getelementptr inbounds %struct.page*, %struct.page** %81, i64 %84
  store %struct.page* %78, %struct.page** %86, align 8
  br label %87

87:                                               ; preds = %77
  %88 = load i64, i64* %10, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %10, align 8
  br label %40

90:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %69, %33
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i64) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i64, i32) #1

declare dso_local i32 @write_inode_now(i32, i32) #1

declare dso_local i32 @put_pages(%struct.nandsim*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

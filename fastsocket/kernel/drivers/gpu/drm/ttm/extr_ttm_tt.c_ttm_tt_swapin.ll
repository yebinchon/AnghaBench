; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_swapin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_swapin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i32, %struct.file*, %struct.page** }
%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.address_space = type { i32 }
%struct.TYPE_2__ = type { %struct.address_space* }

@ENOMEM = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_PERSISTENT_SWAP = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_tt_swapin(%struct.ttm_tt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %13 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %12, i32 0, i32 2
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %5, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = icmp eq %struct.file* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = call %struct.TYPE_2__* @file_inode(%struct.file* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.address_space*, %struct.address_space** %21, align 8
  store %struct.address_space* %22, %struct.address_space** %4, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %59, %1
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %26 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = load %struct.address_space*, %struct.address_space** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.page* @shmem_read_mapping_page(%struct.address_space* %30, i32 %31)
  store %struct.page* %32, %struct.page** %6, align 8
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = call i64 @IS_ERR(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.page* %37)
  store i32 %38, i32* %9, align 4
  br label %81

39:                                               ; preds = %29
  %40 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %41 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %40, i32 0, i32 3
  %42 = load %struct.page**, %struct.page*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.page*, %struct.page** %42, i64 %44
  %46 = load %struct.page*, %struct.page** %45, align 8
  store %struct.page* %46, %struct.page** %7, align 8
  %47 = load %struct.page*, %struct.page** %7, align 8
  %48 = icmp eq %struct.page* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %81

53:                                               ; preds = %39
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = load %struct.page*, %struct.page** %6, align 8
  %56 = call i32 @copy_highpage(%struct.page* %54, %struct.page* %55)
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = call i32 @page_cache_release(%struct.page* %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %23

62:                                               ; preds = %23
  %63 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %64 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TTM_PAGE_FLAG_PERSISTENT_SWAP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load %struct.file*, %struct.file** %5, align 8
  %71 = call i32 @fput(%struct.file* %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %74 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %73, i32 0, i32 2
  store %struct.file* null, %struct.file** %74, align 8
  %75 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %78 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %83

81:                                               ; preds = %52, %36
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %72
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local %struct.page* @shmem_read_mapping_page(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

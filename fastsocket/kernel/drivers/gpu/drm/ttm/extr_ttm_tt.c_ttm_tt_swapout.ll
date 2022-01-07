; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_swapout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_swapout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, i64, i32, i32, %struct.page*, %struct.TYPE_5__*, %struct.page** }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ttm_tt*)* }
%struct.file = type opaque
%struct.address_space = type { i32 }
%struct.TYPE_6__ = type { %struct.address_space* }

@ENOMEM = common dso_local global i32 0, align 4
@tt_unbound = common dso_local global i64 0, align 8
@tt_unpopulated = common dso_local global i64 0, align 8
@tt_cached = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"ttm swap\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed allocating swap storage\0A\00", align 1
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_PERSISTENT_SWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_tt_swapout(%struct.ttm_tt* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %15 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @tt_unbound, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %21 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @tt_unpopulated, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %19, %2
  %26 = phi i1 [ false, %2 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %30 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @tt_cached, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = icmp ne %struct.file* %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %25
  %39 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %40 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PAGE_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = call %struct.page* @shmem_file_setup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %43, i32 0)
  %45 = bitcast %struct.page* %44 to %struct.file*
  store %struct.file* %45, %struct.file** %7, align 8
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = bitcast %struct.file* %46 to %struct.page*
  %48 = call i32 @IS_ERR(%struct.page* %47)
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.file*, %struct.file** %7, align 8
  %54 = bitcast %struct.file* %53 to %struct.page*
  %55 = call i32 @PTR_ERR(%struct.page* %54)
  store i32 %55, i32* %3, align 4
  br label %146

56:                                               ; preds = %38
  br label %59

57:                                               ; preds = %25
  %58 = load %struct.file*, %struct.file** %5, align 8
  store %struct.file* %58, %struct.file** %7, align 8
  br label %59

59:                                               ; preds = %57, %56
  %60 = load %struct.file*, %struct.file** %7, align 8
  %61 = bitcast %struct.file* %60 to %struct.page*
  %62 = call %struct.TYPE_6__* @file_inode(%struct.page* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.address_space*, %struct.address_space** %63, align 8
  store %struct.address_space* %64, %struct.address_space** %6, align 8
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %106, %59
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %68 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %109

71:                                               ; preds = %65
  %72 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %73 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %72, i32 0, i32 6
  %74 = load %struct.page**, %struct.page*** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.page*, %struct.page** %74, i64 %76
  %78 = load %struct.page*, %struct.page** %77, align 8
  store %struct.page* %78, %struct.page** %8, align 8
  %79 = load %struct.page*, %struct.page** %8, align 8
  %80 = icmp eq %struct.page* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %106

85:                                               ; preds = %71
  %86 = load %struct.address_space*, %struct.address_space** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call %struct.page* @shmem_read_mapping_page(%struct.address_space* %86, i32 %87)
  store %struct.page* %88, %struct.page** %9, align 8
  %89 = load %struct.page*, %struct.page** %9, align 8
  %90 = call i32 @IS_ERR(%struct.page* %89)
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load %struct.page*, %struct.page** %9, align 8
  %95 = call i32 @PTR_ERR(%struct.page* %94)
  store i32 %95, i32* %11, align 4
  br label %137

96:                                               ; preds = %85
  %97 = load %struct.page*, %struct.page** %9, align 8
  %98 = load %struct.page*, %struct.page** %8, align 8
  %99 = call i32 @copy_highpage(%struct.page* %97, %struct.page* %98)
  %100 = load %struct.page*, %struct.page** %9, align 8
  %101 = call i32 @set_page_dirty(%struct.page* %100)
  %102 = load %struct.page*, %struct.page** %9, align 8
  %103 = call i32 @mark_page_accessed(%struct.page* %102)
  %104 = load %struct.page*, %struct.page** %9, align 8
  %105 = call i32 @page_cache_release(%struct.page* %104)
  br label %106

106:                                              ; preds = %96, %84
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %65

109:                                              ; preds = %65
  %110 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %111 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %110, i32 0, i32 5
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %115, align 8
  %117 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %118 = call i32 %116(%struct.ttm_tt* %117)
  %119 = load %struct.file*, %struct.file** %7, align 8
  %120 = bitcast %struct.file* %119 to %struct.page*
  %121 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %122 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %121, i32 0, i32 4
  store %struct.page* %120, %struct.page** %122, align 8
  %123 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %124 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %125 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.file*, %struct.file** %5, align 8
  %129 = icmp ne %struct.file* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %109
  %131 = load i32, i32* @TTM_PAGE_FLAG_PERSISTENT_SWAP, align 4
  %132 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %133 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %109
  store i32 0, i32* %3, align 4
  br label %146

137:                                              ; preds = %93
  %138 = load %struct.file*, %struct.file** %5, align 8
  %139 = icmp ne %struct.file* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load %struct.file*, %struct.file** %7, align 8
  %142 = bitcast %struct.file* %141 to %struct.page*
  %143 = call i32 @fput(%struct.page* %142)
  br label %144

144:                                              ; preds = %140, %137
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %136, %51
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @shmem_file_setup(i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.TYPE_6__* @file_inode(%struct.page*) #1

declare dso_local %struct.page* @shmem_read_mapping_page(%struct.address_space*, i32) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @fput(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_sgl_map_user_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_sgl_map_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.st_buffer = type { %struct.page**, %struct.rq_map_data }
%struct.page = type { i32 }
%struct.rq_map_data = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@READ = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_buffer*, i32, i64, i64, i32)* @sgl_map_user_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgl_map_user_pages(%struct.st_buffer* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page**, align 8
  %19 = alloca %struct.rq_map_data*, align 8
  store %struct.st_buffer* %0, %struct.st_buffer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = add i64 %22, %23
  %25 = sub i64 %24, 1
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load %struct.st_buffer*, %struct.st_buffer** %7, align 8
  %36 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %35, i32 0, i32 1
  store %struct.rq_map_data* %36, %struct.rq_map_data** %19, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %5
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %143

45:                                               ; preds = %5
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %143

52:                                               ; preds = %45
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %143

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.page** @kmalloc(i32 %60, i32 %61)
  store %struct.page** %62, %struct.page*** %18, align 8
  %63 = icmp eq %struct.page** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %143

67:                                               ; preds = %56
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @down_read(i32* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @READ, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load %struct.page**, %struct.page*** %18, align 8
  %84 = call i32 @get_user_pages(%struct.TYPE_4__* %73, %struct.TYPE_5__* %76, i64 %77, i32 %78, i32 %82, i32 0, %struct.page** %83, i32* null)
  store i32 %84, i32* %15, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = call i32 @up_read(i32* %88)
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %67
  br label %120

94:                                               ; preds = %67
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %106, %94
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load %struct.page**, %struct.page*** %18, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.page*, %struct.page** %100, i64 %102
  %104 = load %struct.page*, %struct.page** %103, align 8
  %105 = call i32 @flush_dcache_page(%struct.page* %104)
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %95

109:                                              ; preds = %95
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @PAGE_MASK, align 8
  %112 = xor i64 %111, -1
  %113 = and i64 %110, %112
  %114 = load %struct.rq_map_data*, %struct.rq_map_data** %19, align 8
  %115 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.page**, %struct.page*** %18, align 8
  %117 = load %struct.st_buffer*, %struct.st_buffer** %7, align 8
  %118 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %117, i32 0, i32 0
  store %struct.page** %116, %struct.page*** %118, align 8
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %6, align 4
  br label %143

120:                                              ; preds = %93
  %121 = load i32, i32* %15, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  store i32 0, i32* %17, align 4
  br label %124

124:                                              ; preds = %135, %123
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = load %struct.page**, %struct.page*** %18, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.page*, %struct.page** %129, i64 %131
  %133 = load %struct.page*, %struct.page** %132, align 8
  %134 = call i32 @page_cache_release(%struct.page* %133)
  br label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %17, align 4
  br label %124

138:                                              ; preds = %124
  store i32 0, i32* %15, align 4
  br label %139

139:                                              ; preds = %138, %120
  %140 = load %struct.page**, %struct.page*** %18, align 8
  %141 = call i32 @kfree(%struct.page** %140)
  %142 = load i32, i32* %15, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %139, %109, %64, %55, %49, %42
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local %struct.page** @kmalloc(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_4__*, %struct.TYPE_5__*, i64, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

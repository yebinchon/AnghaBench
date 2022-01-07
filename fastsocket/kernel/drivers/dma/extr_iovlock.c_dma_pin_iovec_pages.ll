; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iovlock.c_dma_pin_iovec_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iovlock.c_dma_pin_iovec_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dma_pinned_list = type { i32, %struct.dma_page_list* }
%struct.dma_page_list = type { i32, %struct.page**, i64 }
%struct.page = type { i32 }
%struct.iovec = type { i64, i64 }

@KERNEL_DS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VERIFY_WRITE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_pinned_list* @dma_pin_iovec_pages(%struct.iovec* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_pinned_list*, align 8
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dma_pinned_list*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_page_list*, align 8
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = call i32 (...) @get_fs()
  %15 = load i32, i32* @KERNEL_DS, align 4
  %16 = call i64 @segment_eq(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.dma_pinned_list* null, %struct.dma_pinned_list** %3, align 8
  br label %177

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %40, %19
  %21 = load %struct.iovec*, %struct.iovec** %4, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 %23
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load %struct.iovec*, %struct.iovec** %4, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i64 %33
  %35 = call i32 @num_pages_spanned(%struct.iovec* %34)
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %20
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %20, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 24
  %49 = add i64 16, %48
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = add i64 %49, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.dma_pinned_list* @kmalloc(i32 %54, i32 %55)
  store %struct.dma_pinned_list* %56, %struct.dma_pinned_list** %6, align 8
  %57 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %6, align 8
  %58 = icmp ne %struct.dma_pinned_list* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %45
  br label %176

60:                                               ; preds = %45
  %61 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %6, align 8
  %62 = getelementptr inbounds %struct.dma_pinned_list, %struct.dma_pinned_list* %61, i32 0, i32 1
  %63 = load %struct.dma_page_list*, %struct.dma_page_list** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %63, i64 %65
  %67 = bitcast %struct.dma_page_list* %66 to %struct.page**
  store %struct.page** %67, %struct.page*** %7, align 8
  %68 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %6, align 8
  %69 = getelementptr inbounds %struct.dma_pinned_list, %struct.dma_pinned_list* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %168, %60
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %171

74:                                               ; preds = %70
  %75 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %6, align 8
  %76 = getelementptr inbounds %struct.dma_pinned_list, %struct.dma_pinned_list* %75, i32 0, i32 1
  %77 = load %struct.dma_page_list*, %struct.dma_page_list** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %77, i64 %79
  store %struct.dma_page_list* %80, %struct.dma_page_list** %13, align 8
  %81 = load %struct.iovec*, %struct.iovec** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.iovec, %struct.iovec* %81, i64 %83
  %85 = getelementptr inbounds %struct.iovec, %struct.iovec* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %5, align 8
  %89 = load i32, i32* @VERIFY_WRITE, align 4
  %90 = load %struct.iovec*, %struct.iovec** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %90, i64 %92
  %94 = getelementptr inbounds %struct.iovec, %struct.iovec* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.iovec*, %struct.iovec** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.iovec, %struct.iovec* %96, i64 %98
  %100 = getelementptr inbounds %struct.iovec, %struct.iovec* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @access_ok(i32 %89, i64 %95, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %74
  br label %173

105:                                              ; preds = %74
  %106 = load %struct.iovec*, %struct.iovec** %4, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.iovec, %struct.iovec* %106, i64 %108
  %110 = call i32 @num_pages_spanned(%struct.iovec* %109)
  %111 = load %struct.dma_page_list*, %struct.dma_page_list** %13, align 8
  %112 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.iovec*, %struct.iovec** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.iovec, %struct.iovec* %113, i64 %115
  %117 = getelementptr inbounds %struct.iovec, %struct.iovec* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.dma_page_list*, %struct.dma_page_list** %13, align 8
  %120 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  %121 = load %struct.page**, %struct.page*** %7, align 8
  %122 = load %struct.dma_page_list*, %struct.dma_page_list** %13, align 8
  %123 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %122, i32 0, i32 1
  store %struct.page** %121, %struct.page*** %123, align 8
  %124 = load %struct.dma_page_list*, %struct.dma_page_list** %13, align 8
  %125 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.page**, %struct.page*** %7, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds %struct.page*, %struct.page** %127, i64 %128
  store %struct.page** %129, %struct.page*** %7, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = call i32 @down_read(i32* %133)
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load %struct.iovec*, %struct.iovec** %4, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.iovec, %struct.iovec* %139, i64 %141
  %143 = getelementptr inbounds %struct.iovec, %struct.iovec* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.dma_page_list*, %struct.dma_page_list** %13, align 8
  %146 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.dma_page_list*, %struct.dma_page_list** %13, align 8
  %149 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %148, i32 0, i32 1
  %150 = load %struct.page**, %struct.page*** %149, align 8
  %151 = call i32 @get_user_pages(%struct.TYPE_4__* %135, %struct.TYPE_5__* %138, i64 %144, i32 %147, i32 1, i32 0, %struct.page** %150, i32* null)
  store i32 %151, i32* %9, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = call i32 @up_read(i32* %155)
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.dma_page_list*, %struct.dma_page_list** %13, align 8
  %159 = getelementptr inbounds %struct.dma_page_list, %struct.dma_page_list* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %157, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %105
  br label %173

163:                                              ; preds = %105
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  %166 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %6, align 8
  %167 = getelementptr inbounds %struct.dma_pinned_list, %struct.dma_pinned_list* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %70

171:                                              ; preds = %70
  %172 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %6, align 8
  store %struct.dma_pinned_list* %172, %struct.dma_pinned_list** %3, align 8
  br label %177

173:                                              ; preds = %162, %104
  %174 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %6, align 8
  %175 = call i32 @dma_unpin_iovec_pages(%struct.dma_pinned_list* %174)
  br label %176

176:                                              ; preds = %173, %59
  store %struct.dma_pinned_list* null, %struct.dma_pinned_list** %3, align 8
  br label %177

177:                                              ; preds = %176, %171, %18
  %178 = load %struct.dma_pinned_list*, %struct.dma_pinned_list** %3, align 8
  ret %struct.dma_pinned_list* %178
}

declare dso_local i64 @segment_eq(i32, i32) #1

declare dso_local i32 @get_fs(...) #1

declare dso_local i32 @num_pages_spanned(%struct.iovec*) #1

declare dso_local %struct.dma_pinned_list* @kmalloc(i32, i32) #1

declare dso_local i32 @access_ok(i32, i64, i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_4__*, %struct.TYPE_5__*, i64, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @dma_unpin_iovec_pages(%struct.dma_pinned_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

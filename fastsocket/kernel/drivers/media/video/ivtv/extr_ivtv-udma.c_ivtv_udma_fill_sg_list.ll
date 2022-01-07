; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-udma.c_ivtv_udma_fill_sg_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-udma.c_ivtv_udma_fill_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_user_dma = type { i32**, i32*, i32** }
%struct.ivtv_dma_page_info = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KM_BOUNCE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_udma_fill_sg_list(%struct.ivtv_user_dma* %0, %struct.ivtv_dma_page_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv_user_dma*, align 8
  %6 = alloca %struct.ivtv_dma_page_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ivtv_user_dma* %0, %struct.ivtv_user_dma** %5, align 8
  store %struct.ivtv_dma_page_info* %1, %struct.ivtv_dma_page_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %4, align 4
  br label %156

17:                                               ; preds = %3
  %18 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %6, align 8
  %19 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %151, %17
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %6, align 8
  %24 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %154

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %6, align 8
  %30 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %6, align 8
  %36 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  br label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %39, %40
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %37, %34 ], [ %41, %38 ]
  store i32 %43, i32* %11, align 4
  %44 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %45 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @PageHighMem(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %131

53:                                               ; preds = %42
  %54 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %55 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32* @alloc_page(i32 %63)
  %65 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %66 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %65, i32 0, i32 2
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  store i32* %64, i32** %70, align 8
  br label %71

71:                                               ; preds = %62, %53
  %72 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %73 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %72, i32 0, i32 2
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %156

81:                                               ; preds = %71
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @local_irq_save(i64 %82)
  %84 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %85 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @KM_BOUNCE_READ, align 4
  %92 = call i8* @kmap_atomic(i32* %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr i8, i8* %92, i64 %94
  store i8* %95, i8** %12, align 8
  %96 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %97 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %96, i32 0, i32 2
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @page_address(i32* %102)
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @memcpy(i64 %106, i8* %107, i32 %108)
  %110 = load i8*, i8** %12, align 8
  %111 = load i32, i32* @KM_BOUNCE_READ, align 4
  %112 = call i32 @kunmap_atomic(i8* %110, i32 %111)
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @local_irq_restore(i64 %113)
  %115 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %116 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %122 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %121, i32 0, i32 2
  %123 = load i32**, i32*** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @sg_set_page(i32* %120, i32* %127, i32 %128, i32 %129)
  br label %148

131:                                              ; preds = %42
  %132 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %133 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %139 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %138, i32 0, i32 0
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @sg_set_page(i32* %137, i32* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %131, %81
  store i32 0, i32* %9, align 4
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %21

154:                                              ; preds = %21
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %80, %15
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i64 @PageHighMem(i32*) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @kmap_atomic(i32*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @page_address(i32*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @sg_set_page(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

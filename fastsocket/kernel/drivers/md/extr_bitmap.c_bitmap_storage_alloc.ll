; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_storage_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_storage_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_storage = type { i32, i64, i32, %struct.TYPE_2__**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_storage*, i64, i32)* @bitmap_storage_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_storage_alloc(%struct.bitmap_storage* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_storage*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bitmap_storage* %0, %struct.bitmap_storage** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @DIV_ROUND_UP(i64 %11, i32 8)
  store i64 %12, i64* %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* %10, align 8
  %17 = add i64 %16, 4
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i64 @DIV_ROUND_UP(i64 %19, i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.TYPE_2__** @kmalloc(i32 %24, i32 %25)
  %27 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %28 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %27, i32 0, i32 3
  store %struct.TYPE_2__** %26, %struct.TYPE_2__*** %28, align 8
  %29 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %30 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = icmp ne %struct.TYPE_2__** %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %145

36:                                               ; preds = %18
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %41 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %64, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = load i32, i32* @__GFP_ZERO, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @alloc_page(i32 %47)
  %49 = bitcast i8* %48 to %struct.TYPE_2__*
  %50 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %51 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %50, i32 0, i32 4
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %51, align 8
  %52 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %53 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp eq %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %145

59:                                               ; preds = %44
  %60 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %61 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %39, %36
  store i32 0, i32* %8, align 4
  %65 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %66 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %71 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %74 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 0
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %76, align 8
  store i32 1, i32* %8, align 4
  br label %77

77:                                               ; preds = %69, %64
  br label %78

78:                                               ; preds = %119, %77
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %9, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %122

83:                                               ; preds = %78
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = load i32, i32* @__GFP_ZERO, align 4
  %86 = or i32 %84, %85
  %87 = call i8* @alloc_page(i32 %86)
  %88 = bitcast i8* %87 to %struct.TYPE_2__*
  %89 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %90 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %89, i32 0, i32 3
  %91 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %91, i64 %93
  store %struct.TYPE_2__* %88, %struct.TYPE_2__** %94, align 8
  %95 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %96 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %97, i64 %99
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = icmp ne %struct.TYPE_2__* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %83
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %106 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %145

109:                                              ; preds = %83
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %112 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %113, i64 %115
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 %110, i32* %118, align 4
  br label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %78

122:                                              ; preds = %78
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %125 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i64, i64* %9, align 8
  %127 = mul i64 %126, 4
  %128 = call i64 @DIV_ROUND_UP(i64 %127, i32 8)
  %129 = call i32 @roundup(i64 %128, i32 8)
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i32 @kzalloc(i32 %129, i32 %130)
  %132 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %133 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %135 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %122
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %145

141:                                              ; preds = %122
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.bitmap_storage*, %struct.bitmap_storage** %5, align 8
  %144 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %141, %138, %103, %56, %33
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.TYPE_2__** @kmalloc(i32, i32) #1

declare dso_local i8* @alloc_page(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

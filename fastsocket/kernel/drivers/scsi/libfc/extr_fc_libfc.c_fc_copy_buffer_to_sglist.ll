; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_libfc.c_fc_copy_buffer_to_sglist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_libfc.c_fc_copy_buffer_to_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fc_copy_buffer_to_sglist(i8* %0, i64 %1, %struct.scatterlist* %2, i64* %3, i64* %4, i32 %5, i64* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64* %6, i64** %14, align 8
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %21

21:                                               ; preds = %93, %41, %7
  %22 = load i64, i64* %15, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %26 = icmp ne %struct.scatterlist* %25, null
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %119

29:                                               ; preds = %27
  %30 = load i64*, i64** %12, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load i64*, i64** %11, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %119

41:                                               ; preds = %36
  %42 = load i64*, i64** %11, align 8
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %46 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %12, align 8
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, %47
  store i64 %50, i64* %48, align 8
  %51 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %52 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %51)
  store %struct.scatterlist* %52, %struct.scatterlist** %10, align 8
  br label %21

53:                                               ; preds = %29
  %54 = load i64, i64* %15, align 8
  %55 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %56 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %57, %59
  %61 = call i64 @min(i64 %54, i64 %60)
  store i64 %61, i64* %18, align 8
  %62 = load i64*, i64** %12, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %65 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* @PAGE_MASK, align 8
  %72 = xor i64 %71, -1
  %73 = and i64 %70, %72
  %74 = sub i64 %69, %73
  %75 = call i64 @min(i64 %68, i64 %74)
  store i64 %75, i64* %18, align 8
  %76 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %77 = call i64 @sg_page(%struct.scatterlist* %76)
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* @PAGE_SHIFT, align 8
  %80 = lshr i64 %78, %79
  %81 = add i64 %77, %80
  %82 = load i32, i32* %13, align 4
  %83 = call i8* @kmap_atomic(i64 %81, i32 %82)
  store i8* %83, i8** %19, align 8
  %84 = load i64*, i64** %14, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %53
  %87 = load i64*, i64** %14, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %18, align 8
  %91 = call i64 @crc32(i64 %88, i8* %89, i64 %90)
  %92 = load i64*, i64** %14, align 8
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %86, %53
  %94 = load i8*, i8** %19, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* @PAGE_MASK, align 8
  %97 = xor i64 %96, -1
  %98 = and i64 %95, %97
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %18, align 8
  %102 = call i32 @memcpy(i8* %99, i8* %100, i64 %101)
  %103 = load i8*, i8** %19, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @kunmap_atomic(i8* %103, i32 %104)
  %106 = load i64, i64* %18, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr i8, i8* %107, i64 %106
  store i8* %108, i8** %8, align 8
  %109 = load i64, i64* %18, align 8
  %110 = load i64*, i64** %12, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %109
  store i64 %112, i64* %110, align 8
  %113 = load i64, i64* %18, align 8
  %114 = load i64, i64* %15, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %15, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* %16, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %16, align 8
  br label %21

119:                                              ; preds = %40, %27
  %120 = load i64, i64* %16, align 8
  ret i64 %120
}

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @kmap_atomic(i64, i32) #1

declare dso_local i64 @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @crc32(i64, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

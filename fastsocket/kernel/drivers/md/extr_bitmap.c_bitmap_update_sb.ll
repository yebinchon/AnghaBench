; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_update_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_update_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@KM_USER0 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_update_sb(%struct.bitmap* %0) #0 {
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %2, align 8
  %4 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %5 = icmp ne %struct.bitmap* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %8 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %7, i32 0, i32 3
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %128

12:                                               ; preds = %6
  %13 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %14 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %13, i32 0, i32 3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %128

21:                                               ; preds = %12
  %22 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %23 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %128

28:                                               ; preds = %21
  %29 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %30 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @KM_USER0, align 4
  %34 = call %struct.TYPE_10__* @kmap_atomic(i32 %32, i32 %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %3, align 8
  %35 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %36 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @cpu_to_le64(i64 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %44 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %49 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %28
  %53 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %54 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %53, i32 0, i32 3
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %59 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %28
  %61 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %62 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @cpu_to_le64(i64 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %68 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %74 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @HZ, align 4
  %80 = sdiv i32 %78, %79
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %85 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %84, i32 0, i32 3
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %94 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i8* @cpu_to_le64(i64 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %102 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %101, i32 0, i32 3
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %111 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %110, i32 0, i32 3
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = load i32, i32* @KM_USER0, align 4
  %121 = call i32 @kunmap_atomic(%struct.TYPE_10__* %119, i32 %120)
  %122 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %123 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %124 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @write_page(%struct.bitmap* %122, i32 %126, i32 1)
  br label %128

128:                                              ; preds = %60, %27, %20, %11
  ret void
}

declare dso_local %struct.TYPE_10__* @kmap_atomic(i32, i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @kunmap_atomic(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @write_page(%struct.bitmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

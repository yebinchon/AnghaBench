; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.bitmap = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.bitmap_counts }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bitmap_counts = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"bitmap: %lu/%lu pages [%luKB], %lu%s chunk\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"KB\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c", file: \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_status(%struct.seq_file* %0, %struct.bitmap* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bitmap_counts*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.bitmap* %1, %struct.bitmap** %4, align 8
  %7 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %8 = icmp ne %struct.bitmap* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %79

10:                                               ; preds = %2
  %11 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %12 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %11, i32 0, i32 2
  store %struct.bitmap_counts* %12, %struct.bitmap_counts** %6, align 8
  %13 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %14 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 10
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.bitmap_counts*, %struct.bitmap_counts** %6, align 8
  %23 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bitmap_counts*, %struct.bitmap_counts** %6, align 8
  %26 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = load %struct.bitmap_counts*, %struct.bitmap_counts** %6, align 8
  %30 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bitmap_counts*, %struct.bitmap_counts** %6, align 8
  %33 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bitmap_counts*, %struct.bitmap_counts** %6, align 8
  %36 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = sub nsw i32 %39, 10
  %41 = shl i32 %38, %40
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %10
  %45 = load i64, i64* %5, align 8
  br label %54

46:                                               ; preds = %10
  %47 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %48 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  br label %54

54:                                               ; preds = %46, %44
  %55 = phi i64 [ %45, %44 ], [ %53, %46 ]
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %41, i64 %55, i8* %59)
  %61 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %62 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %54
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %71 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = call i32 @seq_path(%struct.seq_file* %69, i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %66, %54
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %9
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_path(%struct.seq_file*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

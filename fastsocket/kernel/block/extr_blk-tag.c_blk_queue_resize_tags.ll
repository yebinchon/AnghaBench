; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-tag.c_blk_queue_resize_tags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-tag.c_blk_queue_resize_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.blk_queue_tag* }
%struct.blk_queue_tag = type { i32, i32, i64*, %struct.request**, i32 }
%struct.request = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_queue_resize_tags(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_queue_tag*, align 8
  %7 = alloca %struct.request**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %12, align 8
  store %struct.blk_queue_tag* %13, %struct.blk_queue_tag** %6, align 8
  %14 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %15 = icmp ne %struct.blk_queue_tag* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %86

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %22 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %28 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %86

29:                                               ; preds = %19
  %30 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %31 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %30, i32 0, i32 4
  %32 = call i32 @atomic_read(i32* %31)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %86

37:                                               ; preds = %29
  %38 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %39 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %38, i32 0, i32 3
  %40 = load %struct.request**, %struct.request*** %39, align 8
  store %struct.request** %40, %struct.request*** %7, align 8
  %41 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %42 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  store i64* %43, i64** %8, align 8
  %44 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %45 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  %47 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %48 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @init_tag_map(%struct.request_queue* %47, %struct.blk_queue_tag* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %86

55:                                               ; preds = %37
  %56 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %57 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %56, i32 0, i32 3
  %58 = load %struct.request**, %struct.request*** %57, align 8
  %59 = bitcast %struct.request** %58 to i64*
  %60 = load %struct.request**, %struct.request*** %7, align 8
  %61 = bitcast %struct.request** %60 to i64*
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i64* %59, i64* %61, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @BITS_PER_LONG, align 4
  %69 = call i32 @ALIGN(i32 %67, i32 %68)
  %70 = load i32, i32* @BITS_PER_LONG, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %10, align 4
  %72 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %73 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memcpy(i64* %74, i64* %75, i32 %79)
  %81 = load %struct.request**, %struct.request*** %7, align 8
  %82 = bitcast %struct.request** %81 to i64*
  %83 = call i32 @kfree(i64* %82)
  %84 = load i64*, i64** %8, align 8
  %85 = call i32 @kfree(i64* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %55, %52, %34, %25, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @init_tag_map(%struct.request_queue*, %struct.blk_queue_tag*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

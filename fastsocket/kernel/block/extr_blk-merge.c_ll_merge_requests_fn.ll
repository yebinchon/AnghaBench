; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_ll_merge_requests_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_ll_merge_requests_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.request*)* @ll_merge_requests_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_merge_requests_fn(%struct.request_queue* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %10 = load %struct.request*, %struct.request** %6, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.request*, %struct.request** %7, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %14, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.request*, %struct.request** %6, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.request*, %struct.request** %7, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %93

31:                                               ; preds = %25
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = call i64 @blk_rq_sectors(%struct.request* %32)
  %34 = load %struct.request*, %struct.request** %7, align 8
  %35 = call i64 @blk_rq_sectors(%struct.request* %34)
  %36 = add nsw i64 %33, %35
  %37 = load %struct.request*, %struct.request** %6, align 8
  %38 = call i64 @blk_rq_get_max_sectors(%struct.request* %37)
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %93

41:                                               ; preds = %31
  %42 = load %struct.request*, %struct.request** %6, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.request*, %struct.request** %7, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %50 = load %struct.request*, %struct.request** %6, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.request*, %struct.request** %7, align 8
  %54 = getelementptr inbounds %struct.request, %struct.request* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i64 @blk_phys_contig_segment(%struct.request_queue* %49, %struct.TYPE_3__* %52, %struct.TYPE_4__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %41
  %59 = load %struct.request*, %struct.request** %6, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.request*, %struct.request** %6, align 8
  %66 = getelementptr inbounds %struct.request, %struct.request* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.request*, %struct.request** %7, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.request*, %struct.request** %7, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %41
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %86 = call i32 @queue_max_segments(%struct.request_queue* %85)
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %93

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.request*, %struct.request** %6, align 8
  %92 = getelementptr inbounds %struct.request, %struct.request* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %88, %40, %30
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @blk_rq_get_max_sectors(%struct.request*) #1

declare dso_local i64 @blk_phys_contig_segment(%struct.request_queue*, %struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i32 @queue_max_segments(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

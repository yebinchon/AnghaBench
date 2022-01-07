; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_ll_back_merge_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_ll_back_merge_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.request* }
%struct.request = type { %struct.bio*, i32 }
%struct.bio = type { i32 }

@REQ_NOMERGE = common dso_local global i32 0, align 4
@BIO_SEG_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ll_back_merge_fn(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %8 = load %struct.request*, %struct.request** %6, align 8
  %9 = call i64 @blk_rq_sectors(%struct.request* %8)
  %10 = load %struct.bio*, %struct.bio** %7, align 8
  %11 = call i64 @bio_sectors(%struct.bio* %10)
  %12 = add nsw i64 %9, %11
  %13 = load %struct.request*, %struct.request** %6, align 8
  %14 = call i64 @blk_rq_get_max_sectors(%struct.request* %13)
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load i32, i32* @REQ_NOMERGE, align 4
  %18 = load %struct.request*, %struct.request** %6, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.request*, %struct.request** %6, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = load %struct.request*, %struct.request** %24, align 8
  %26 = icmp eq %struct.request* %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 0
  store %struct.request* null, %struct.request** %29, align 8
  br label %30

30:                                               ; preds = %27, %16
  store i32 0, i32* %4, align 4
  br label %58

31:                                               ; preds = %3
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 0
  %34 = load %struct.bio*, %struct.bio** %33, align 8
  %35 = load i32, i32* @BIO_SEG_VALID, align 4
  %36 = call i32 @bio_flagged(%struct.bio* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %40 = load %struct.request*, %struct.request** %6, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  %42 = load %struct.bio*, %struct.bio** %41, align 8
  %43 = call i32 @blk_recount_segments(%struct.request_queue* %39, %struct.bio* %42)
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.bio*, %struct.bio** %7, align 8
  %46 = load i32, i32* @BIO_SEG_VALID, align 4
  %47 = call i32 @bio_flagged(%struct.bio* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %51 = load %struct.bio*, %struct.bio** %7, align 8
  %52 = call i32 @blk_recount_segments(%struct.request_queue* %50, %struct.bio* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %55 = load %struct.request*, %struct.request** %6, align 8
  %56 = load %struct.bio*, %struct.bio** %7, align 8
  %57 = call i32 @ll_new_hw_segment(%struct.request_queue* %54, %struct.request* %55, %struct.bio* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %30
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @blk_rq_get_max_sectors(%struct.request*) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @blk_recount_segments(%struct.request_queue*, %struct.bio*) #1

declare dso_local i32 @ll_new_hw_segment(%struct.request_queue*, %struct.request*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

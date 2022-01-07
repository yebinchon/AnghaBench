; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_ll_front_merge_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_ll_front_merge_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.request* }
%struct.request = type { %struct.bio*, i32 }
%struct.bio = type { i32 }

@REQ_NOMERGE = common dso_local global i32 0, align 4
@BIO_SEG_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ll_front_merge_fn(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2) #0 {
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
  %32 = load %struct.bio*, %struct.bio** %7, align 8
  %33 = load i32, i32* @BIO_SEG_VALID, align 4
  %34 = call i32 @bio_flagged(%struct.bio* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %38 = load %struct.bio*, %struct.bio** %7, align 8
  %39 = call i32 @blk_recount_segments(%struct.request_queue* %37, %struct.bio* %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.request*, %struct.request** %6, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 0
  %43 = load %struct.bio*, %struct.bio** %42, align 8
  %44 = load i32, i32* @BIO_SEG_VALID, align 4
  %45 = call i32 @bio_flagged(%struct.bio* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %49 = load %struct.request*, %struct.request** %6, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 0
  %51 = load %struct.bio*, %struct.bio** %50, align 8
  %52 = call i32 @blk_recount_segments(%struct.request_queue* %48, %struct.bio* %51)
  br label %53

53:                                               ; preds = %47, %40
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

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-map.c_blk_rq_append_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-map.c_blk_rq_append_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32, %struct.bio*, i32 }
%struct.bio = type { i64, %struct.bio* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_rq_append_bio(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %8 = load %struct.request*, %struct.request** %6, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = load %struct.bio*, %struct.bio** %7, align 8
  %16 = call i32 @blk_rq_bio_prep(%struct.request_queue* %13, %struct.request* %14, %struct.bio* %15)
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = load %struct.bio*, %struct.bio** %7, align 8
  %21 = call i32 @ll_back_merge_fn(%struct.request_queue* %18, %struct.request* %19, %struct.bio* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %17
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = load %struct.request*, %struct.request** %6, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 1
  %30 = load %struct.bio*, %struct.bio** %29, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 1
  store %struct.bio* %27, %struct.bio** %31, align 8
  %32 = load %struct.bio*, %struct.bio** %7, align 8
  %33 = load %struct.request*, %struct.request** %6, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 1
  store %struct.bio* %32, %struct.bio** %34, align 8
  %35 = load %struct.bio*, %struct.bio** %7, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.request*, %struct.request** %6, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 8
  br label %44

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %12
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @blk_rq_bio_prep(%struct.request_queue*, %struct.request*, %struct.bio*) #1

declare dso_local i32 @ll_back_merge_fn(%struct.request_queue*, %struct.request*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

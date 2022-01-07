; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_deadline-iosched.c_deadline_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_deadline-iosched.c_deadline_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.deadline_data* }
%struct.deadline_data = type { i32*, i64 }
%struct.request = type { i32 }
%struct.bio = type { i64 }

@ELEVATOR_FRONT_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_NO_MERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request**, %struct.bio*)* @deadline_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deadline_merge(%struct.request_queue* %0, %struct.request** %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request**, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.deadline_data*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request** %1, %struct.request*** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.deadline_data*, %struct.deadline_data** %15, align 8
  store %struct.deadline_data* %16, %struct.deadline_data** %8, align 8
  %17 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %18 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %3
  %22 = load %struct.bio*, %struct.bio** %7, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bio*, %struct.bio** %7, align 8
  %26 = call i64 @bio_sectors(%struct.bio* %25)
  %27 = add nsw i64 %24, %26
  store i64 %27, i64* %11, align 8
  %28 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %29 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.bio*, %struct.bio** %7, align 8
  %32 = call i64 @bio_data_dir(%struct.bio* %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i64, i64* %11, align 8
  %35 = call %struct.request* @elv_rb_find(i32* %33, i64 %34)
  store %struct.request* %35, %struct.request** %9, align 8
  %36 = load %struct.request*, %struct.request** %9, align 8
  %37 = icmp ne %struct.request* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %21
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.request*, %struct.request** %9, align 8
  %41 = call i64 @blk_rq_pos(%struct.request* %40)
  %42 = icmp ne i64 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.request*, %struct.request** %9, align 8
  %46 = load %struct.bio*, %struct.bio** %7, align 8
  %47 = call i64 @elv_rq_merge_ok(%struct.request* %45, %struct.bio* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @ELEVATOR_FRONT_MERGE, align 4
  store i32 %50, i32* %10, align 4
  br label %55

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %21
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* @ELEVATOR_NO_MERGE, align 4
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %49
  %56 = load %struct.request*, %struct.request** %9, align 8
  %57 = load %struct.request**, %struct.request*** %6, align 8
  store %struct.request* %56, %struct.request** %57, align 8
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %53
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.request* @elv_rb_find(i32*, i64) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @elv_rq_merge_ok(%struct.request*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
